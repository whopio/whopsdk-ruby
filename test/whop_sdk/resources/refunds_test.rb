# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::RefundsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.refunds.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::RefundRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        amount: WhopSDK::Models::RefundRetrieveResponse::Amount | nil,
        created_at: String,
        failure_message: String | nil,
        failure_reason: WhopSDK::Models::RefundRetrieveResponse::FailureReason | nil,
        original_amount: WhopSDK::Models::RefundRetrieveResponse::OriginalAmount,
        payment_id: String,
        provider: String,
        provider_created_at: String | nil,
        reason: WhopSDK::Models::RefundRetrieveResponse::Reason | nil,
        reference_status: WhopSDK::Models::RefundRetrieveResponse::ReferenceStatus | nil,
        reference_type: WhopSDK::Models::RefundRetrieveResponse::ReferenceType | nil,
        reference_value: String | nil,
        status: WhopSDK::Models::RefundRetrieveResponse::Status,
        updated_at: String,
        visa_rdr: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.refunds.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::RefundListResponse
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String | nil,
        amount: WhopSDK::Models::RefundListResponse::Amount | nil,
        created_at: String,
        failure_message: String | nil,
        failure_reason: WhopSDK::Models::RefundListResponse::FailureReason | nil,
        original_amount: WhopSDK::Models::RefundListResponse::OriginalAmount,
        payment_id: String,
        provider: String,
        provider_created_at: String | nil,
        reason: WhopSDK::Models::RefundListResponse::Reason | nil,
        reference_status: WhopSDK::Models::RefundListResponse::ReferenceStatus | nil,
        reference_type: WhopSDK::Models::RefundListResponse::ReferenceType | nil,
        reference_value: String | nil,
        status: WhopSDK::Models::RefundListResponse::Status,
        updated_at: String,
        visa_rdr: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
