#!/usr/bin/env bash
# Packages the gem a release of whopsdk-ruby publishes: the release workflow's build job runs it with
# VERSION and TAG set, and the rubygems job pushes the pkg/ it leaves. whop-monorepo's SDK pipeline
# delivers it beside bin/ci.
set -euo pipefail
cd "$(dirname "$0")/.."

GEM_NAME=whop_sdk
export GEM_NAME

# The delivery stamps the version in lib/whop_sdk/version.rb and the gemspec. X-Fern-SDK-Version
# in the generated HTTP client is a generator constant ("0.0.1") that tracks no version, so the
# published gem would report it on the wire: this rewrites it, found by the header name alone,
# and the check after it fails if any carrier still names another version.
ruby - "$VERSION" <<'RB'
version = ARGV.fetch(0)

stamped = File.read("lib/whop_sdk/version.rb")[/VERSION\s*=\s*"([^"]*)"/, 1]
abort("::error::lib/whop_sdk/version.rb is at #{stamped.inspect}, not #{version}") unless stamped == version
gemspec = Gem::Specification.load("#{ENV.fetch("GEM_NAME")}.gemspec").version.to_s
abort("::error::the gemspec is at #{gemspec}, not #{version}") unless gemspec == version

carriers = Dir.glob("lib/**/*.rb").select { |path| File.read(path).include?("X-Fern-SDK-Version") }
abort("::error::nothing under lib/ carries X-Fern-SDK-Version; the gem would report the generator's constant") if carriers.empty?
header = /(X-Fern-SDK-Version"?\s*(?::|=>)\s*")[^"]*/
carriers.each do |path|
  source = File.read(path)
  abort("::error::#{path} names X-Fern-SDK-Version without a string beside it to stamp; the gem would report whatever the generator set") unless source.match?(header)
  File.write(path, source.gsub(header) { "#{Regexp.last_match(1)}#{version}" })
  puts "stamped #{path}"
end
RB

stale=$(grep -rn 'X-Fern-SDK-Version' lib | grep -E '[0-9]+\.[0-9]+\.[0-9]+' | grep -Fv "$VERSION" || true)
if [ -n "$stale" ]; then
  echo "::error::the source tree still reports a version other than ${VERSION}:"
  printf '%s\n' "$stale"
  exit 1
fi

# Build the gem
mkdir -p pkg
gem build "${GEM_NAME}.gemspec" --output "pkg/${GEM_NAME}-${VERSION}.gem"
ls -l pkg

# Smoke-test the built gem
(
  export GEM_HOME=/tmp/smoke
  gem install --no-document "pkg/${GEM_NAME}-${VERSION}.gem"
  ruby -e '
    gem_name, expected = ENV.fetch("GEM_NAME"), ENV.fetch("VERSION")
    require gem_name
    installed = Gem::Specification.find_by_name(gem_name).version.to_s
    abort("gem reports #{installed}, expected #{expected}") unless installed == expected
    Whop_sdk::Client.new(token: "smoke-test")
    Whop_sdk::Live::Stream
    puts "#{gem_name} #{installed} installs, loads and constructs Whop_sdk::Client"
  '
)
