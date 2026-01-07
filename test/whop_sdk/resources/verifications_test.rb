# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::VerificationsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.verifications.retrieve("verf_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::VerificationRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        last_error_code: WhopSDK::Models::VerificationRetrieveResponse::LastErrorCode | nil,
        last_error_reason: String | nil,
        status: WhopSDK::Models::VerificationRetrieveResponse::Status
      }
    end
  end
end
