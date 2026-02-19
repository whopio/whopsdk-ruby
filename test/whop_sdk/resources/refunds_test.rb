# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::RefundsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.refunds.retrieve("rf_xxxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::RefundRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: WhopSDK::Currency,
        payment: WhopSDK::Models::RefundRetrieveResponse::Payment | nil,
        provider: WhopSDK::PaymentProvider,
        provider_created_at: Time | nil,
        reference_status: WhopSDK::RefundReferenceStatus | nil,
        reference_type: WhopSDK::RefundReferenceType | nil,
        reference_value: String | nil,
        status: WhopSDK::RefundStatus
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.refunds.list(payment_id: "pay_xxxxxxxxxxxxxx")

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
        amount: Float,
        created_at: Time,
        currency: WhopSDK::Currency,
        payment: WhopSDK::Models::RefundListResponse::Payment | nil,
        provider: WhopSDK::PaymentProvider,
        provider_created_at: Time | nil,
        reference_status: WhopSDK::RefundReferenceStatus | nil,
        reference_type: WhopSDK::RefundReferenceType | nil,
        reference_value: String | nil,
        status: WhopSDK::RefundStatus
      }
    end
  end
end
