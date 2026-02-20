# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::DisputeAlertsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.dispute_alerts.retrieve("dspa_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::DisputeAlertRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        alert_type: WhopSDK::DisputeAlertType,
        amount: Float,
        charge_for_alert: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        currency: WhopSDK::Currency,
        dispute: WhopSDK::Models::DisputeAlertRetrieveResponse::Dispute | nil,
        payment: WhopSDK::Models::DisputeAlertRetrieveResponse::Payment | nil,
        transaction_date: Time | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.dispute_alerts.list(company_id: "biz_xxxxxxxxxxxxxx")

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
        alert_type: WhopSDK::DisputeAlertType,
        amount: Float,
        charge_for_alert: WhopSDK::Internal::Type::Boolean,
        created_at: Time,
        currency: WhopSDK::Currency,
        dispute: WhopSDK::Models::DisputeAlertListResponse::Dispute | nil,
        payment: WhopSDK::Models::DisputeAlertListResponse::Payment | nil,
        transaction_date: Time | nil
      }
    end
  end
end
