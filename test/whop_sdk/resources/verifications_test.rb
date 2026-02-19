# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::VerificationsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.verifications.retrieve("verf_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::VerificationRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        last_error_code: WhopSDK::VerificationErrorCode | nil,
        last_error_reason: String | nil,
        status: WhopSDK::VerificationStatus
      }
    end
  end
end
