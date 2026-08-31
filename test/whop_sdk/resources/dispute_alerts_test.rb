# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::DisputeAlertsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.dispute_alerts.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::DisputeAlertRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String | nil,
        actionable: WhopSDK::Internal::Type::Boolean,
        amount: Float,
        card_brand: String | nil,
        created_at: String,
        currency: String,
        fee_charged: WhopSDK::Internal::Type::Boolean,
        issuer: String | nil,
        not_actionable_reason: WhopSDK::Models::DisputeAlertRetrieveResponse::NotActionableReason | nil,
        payment_id: String | nil,
        product_id: String | nil,
        reported_at: String,
        transaction_at: String | nil,
        type: WhopSDK::Models::DisputeAlertRetrieveResponse::Type,
        updated_at: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.dispute_alerts.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::DisputeAlertListResponse
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String | nil,
        actionable: WhopSDK::Internal::Type::Boolean,
        amount: Float,
        card_brand: String | nil,
        created_at: String,
        currency: String,
        fee_charged: WhopSDK::Internal::Type::Boolean,
        issuer: String | nil,
        not_actionable_reason: WhopSDK::Models::DisputeAlertListResponse::NotActionableReason | nil,
        payment_id: String | nil,
        product_id: String | nil,
        reported_at: String,
        transaction_at: String | nil,
        type: WhopSDK::Models::DisputeAlertListResponse::Type,
        updated_at: String
      }
    end
  end
end
