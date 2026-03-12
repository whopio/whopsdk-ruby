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

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.verifications.list(payout_account_id: "poact_xxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::VerificationListResponse
    end

    assert_pattern do
      row => {
        id: String,
        last_error_code: WhopSDK::VerificationErrorCode | nil,
        last_error_reason: String | nil,
        status: WhopSDK::VerificationStatus
      }
    end
  end
end
