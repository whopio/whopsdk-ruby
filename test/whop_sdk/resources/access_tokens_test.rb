# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AccessTokensTest < WhopSDK::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @whop.access_tokens.create

    assert_pattern do
      response => WhopSDK::Models::AccessTokenCreateResponse
    end

    assert_pattern do
      response => {
        token: String,
        expires_at: Time
      }
    end
  end
end
