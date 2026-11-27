# frozen_string_literal: true

require_relative "../../test_helper"
require "webmock"

WebMock::AssertionFailure.error_class = Minitest::Assertion

module WhopSDK
  module Helpers
    class TestVerifyUserToken < Minitest::Test
      include WebMock::API

      JWKS_URL = "https://jwks.test/.well-known/jwks.json"

      def setup
        WebMock.enable!
      end

      def teardown
        WebMock.reset!
        WebMock.disable!
      end

      def test_a_failed_fetch_holds_off_the_next_until_the_cooldown_passes
        stub = stub_request(:get, JWKS_URL).to_return(status: 503)
        jwks = VerifyUserToken::RemoteJwks.new(JWKS_URL, cache_max_age_seconds: 3600, cooldown_seconds: 30, stale_grace_seconds: 0)

        assert_raises(StandardError) { jwks.jwk_set }
        error = assert_raises(StandardError) { jwks.jwk_set }

        assert_match(/last fetch failed/, error.message)
        assert_requested stub, times: 1
      end

      def test_keeps_stale_keys_within_the_grace_while_a_refresh_fails_and_waits_out_the_cooldown_to_retry
        stub = stub_request(:get, JWKS_URL).to_return(status: 200, body: { keys: [] }.to_json).then.to_return(status: 503)
        jwks = VerifyUserToken::RemoteJwks.new(JWKS_URL, cache_max_age_seconds: 0, cooldown_seconds: 0.2, stale_grace_seconds: 60)

        cached = jwks.jwk_set
        sleep 0.25

        assert_same cached, jwks.jwk_set
        assert_same cached, jwks.jwk_set
        assert_requested stub, times: 2
      end

      def test_fails_closed_on_keys_past_the_grace_while_a_refresh_fails_and_recovers_once_one_succeeds
        keys = { keys: [] }.to_json
        stub = stub_request(:get, JWKS_URL)
               .to_return(status: 200, body: keys).then
               .to_return(status: 503).then
               .to_return(status: 200, body: keys)
        jwks = VerifyUserToken::RemoteJwks.new(JWKS_URL, cache_max_age_seconds: 0, cooldown_seconds: 0, stale_grace_seconds: 0.05)

        jwks.jwk_set
        sleep 0.1

        assert_raises(StandardError) { jwks.jwk_set }
        assert_kind_of JWT::JWK::Set, jwks.jwk_set
        assert_requested stub, times: 3
      end

      def test_reads_the_user_token_header_whatever_its_case
        %w[x-whop-user-token X-Whop-User-Token X-WHOP-USER-TOKEN].each do |name|
          assert_equal "token", VerifyUserToken.get_user_token({ name => "token" })
        end
        assert_equal "token", VerifyUserToken.get_user_token({ "X-Custom" => "token" }, header_name: "x-custom")
        assert_nil VerifyUserToken.get_user_token({ "X-Other" => "token" })
      end

      def test_fetches_again_once_the_cooldown_has_passed
        stub = stub_request(:get, JWKS_URL).to_return(status: 503).then.to_return(status: 200, body: { keys: [] }.to_json)
        jwks = VerifyUserToken::RemoteJwks.new(JWKS_URL, cache_max_age_seconds: 3600, cooldown_seconds: 0, stale_grace_seconds: 0)

        assert_raises(StandardError) { jwks.jwk_set }
        sleep 0.01

        assert_kind_of JWT::JWK::Set, jwks.jwk_set
        assert_requested stub, times: 2
      end
    end
  end
end
