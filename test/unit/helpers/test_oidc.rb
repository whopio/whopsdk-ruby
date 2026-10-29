# frozen_string_literal: true

require_relative "../../test_helper"
require "webmock"

WebMock::AssertionFailure.error_class = Minitest::Assertion

module WhopSDK
  module Helpers
    class TestOidc < Minitest::Test
      include WebMock::API

      ROLE_ID = "aurl_xxxxxxxxxxxxx"
      EXCHANGE_URL = "https://api.whop.com/api/v1/access_tokens/exchange"

      def setup
        WebMock.enable!
      end

      def teardown
        WebMock.reset!
        WebMock.disable!
        ENV.delete("ACTIONS_ID_TOKEN_REQUEST_URL")
        ENV.delete("ACTIONS_ID_TOKEN_REQUEST_TOKEN")
      end

      def test_exchanges_the_identity_token_for_an_access_token_assuming_the_role
        stub = stub_request(:post, EXCHANGE_URL)
               .with(
                 headers: { "Content-Type" => "application/json" },
                 body: {
                   grant_type: "urn:ietf:params:oauth:grant-type:token-exchange",
                   subject_token_type: "urn:ietf:params:oauth:token-type:id_token",
                   subject_token: "id-token",
                   role_id: ROLE_ID
                 }.to_json
               )
               .to_return(status: 200, body: { access_token: "whop-token-1", expires_in: 3600 }.to_json)

        assert_equal "whop-token-1", Oidc.access_token(role_id: ROLE_ID, identity_token: "id-token")
        assert_requested stub
      end

      def test_calls_an_identity_token_source_and_passes_an_expiry
        expires_at = Time.utc(2026, 10, 23, 14, 0, 0)
        stub = stub_request(:post, "https://sandbox-api.whop.com/api/v1/access_tokens/exchange")
               .with(body: hash_including("subject_token" => "fresh-id-token", "expires_at" => "2026-10-23T14:00:00Z"))
               .to_return(status: 200, body: { access_token: "whop-token-1", expires_in: 7200 }.to_json)

        token = Oidc.access_token(
          role_id: ROLE_ID,
          identity_token: -> { "fresh-id-token" },
          base_url: "https://sandbox-api.whop.com/api/v1/",
          expires_at: expires_at
        )

        assert_equal "whop-token-1", token
        assert_requested stub
      end

      def test_sends_the_expiry_in_utc_without_changing_the_callers_time
        local = Time.new(2026, 10, 23, 9, 0, 0, "-05:00")
        frozen_local = local.dup.freeze
        stub = stub_request(:post, EXCHANGE_URL)
               .with(body: hash_including("expires_at" => "2026-10-23T14:00:00Z"))
               .to_return(status: 200, body: { access_token: "whop-token-1", expires_in: 7200 }.to_json)

        Oidc.access_token(role_id: ROLE_ID, identity_token: "id-token", expires_at: local)
        Oidc.access_token(role_id: ROLE_ID, identity_token: "id-token", expires_at: frozen_local)

        assert_equal(-18_000, local.utc_offset)
        assert_requested stub, times: 2
      end

      def test_surfaces_the_api_error_and_code
        stub_request(:post, EXCHANGE_URL).to_return(
          status: 400,
          body: { error: { type: "bad_request", message: "No trust linked to this role accepts this token.", code: "oidc_exchange_no_match" } }.to_json
        )

        error = assert_raises(Oidc::Error) { Oidc.access_token(role_id: ROLE_ID, identity_token: "id-token") }

        assert_equal "No trust linked to this role accepts this token.", error.message
        assert_equal 400, error.status
        assert_equal "oidc_exchange_no_match", error.code
      end

      def test_requires_a_role
        assert_raises(Oidc::Error) { Oidc.access_token(role_id: "", identity_token: "id-token") }
      end

      def test_builds_a_client_that_sends_the_exchanged_token
        stub_request(:post, EXCHANGE_URL).to_return(status: 200, body: { access_token: "whop-token-1", expires_in: 3600 }.to_json)
        api_call = stub_request(:get, %r{\Ahttps://api\.whop\.com/api/v1/users/user_xxxxxxxxxxxxx})
                   .with(headers: { "Authorization" => "Bearer whop-token-1" })
                   .to_return(status: 200, headers: { "Content-Type" => "application/json" }, body: { id: "user_xxxxxxxxxxxxx" }.to_json)

        client = Whop_sdk::Client.new(token: Oidc.access_token(role_id: ROLE_ID, identity_token: "id-token"), max_retries: 0)
        begin
          client.users.retrieve(id: "user_xxxxxxxxxxxxx")
        rescue StandardError
          nil
        end

        assert_requested api_call
      end

      def test_github_actions_identity_token_requests_the_whop_audience
        ENV["ACTIONS_ID_TOKEN_REQUEST_URL"] = "https://pipelines.actions.githubusercontent.com/abc/idtoken?api-version=2.0"
        ENV["ACTIONS_ID_TOKEN_REQUEST_TOKEN"] = "request-token"
        stub = stub_request(:get, "https://pipelines.actions.githubusercontent.com/abc/idtoken")
               .with(query: { "api-version" => "2.0", "audience" => Oidc::DEFAULT_AUDIENCE }, headers: { "Authorization" => "Bearer request-token" })
               .to_return(status: 200, body: { value: "github-id-token" }.to_json)

        assert_equal "github-id-token", Oidc.github_actions_identity_token
        assert_requested stub
      end

      def test_github_actions_identity_token_explains_the_missing_permission
        error = assert_raises(Oidc::Error) { Oidc.github_actions_identity_token }

        assert_match(/id-token: write/, error.message)
      end

      def test_google_cloud_identity_token_asks_the_metadata_server
        stub = stub_request(:get, Oidc::GOOGLE_METADATA_IDENTITY_URL)
               .with(query: { "audience" => "https://example.com" }, headers: { "Metadata-Flavor" => "Google" })
               .to_return(status: 200, body: "google-id-token\n")

        assert_equal "google-id-token", Oidc.google_cloud_identity_token(audience: "https://example.com")
        assert_requested stub
      end
    end
  end
end
