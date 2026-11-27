# frozen_string_literal: true

require "minitest/autorun"
require_relative "../test_helper"

module Whop_sdk
  # `require "whop_sdk"` reaches every hand-written entry point (the generated lib/whop_sdk.rb loads
  # them from its generator config's requirePaths), and the gemspec declares each gem one requires.
  class TestEntryPoints < Minitest::Test
    GEMSPEC = Gem::Specification.load(File.expand_path("../../whop_sdk.gemspec", __dir__))

    def test_require_reaches_the_helpers_and_the_live_reads
      assert_respond_to WhopSDK::Helpers::VerifyUserToken, :verify_user_token!
      assert_respond_to WhopSDK::Helpers::VerifyWebhook, :unwrap
      assert_respond_to WhopSDK::Helpers::Oidc, :access_token
      assert_respond_to Whop_sdk::Live, :backoff_seconds
    end

    def test_the_gemspec_declares_the_gems_the_helpers_require
      assert_equal %w[jwt standardwebhooks], GEMSPEC.runtime_dependencies.map(&:name).sort
    end
  end
end
