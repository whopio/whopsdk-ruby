# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::WithdrawalsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.withdrawals.retrieve("wdrl_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::WithdrawalRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: WhopSDK::Currency,
        error_code: WhopSDK::Models::WithdrawalRetrieveResponse::ErrorCode | nil,
        error_message: String | nil,
        estimated_availability: Time | nil,
        fee_amount: Float,
        fee_type: WhopSDK::WithdrawalFeeTypes | nil,
        ledger_account: WhopSDK::Models::WithdrawalRetrieveResponse::LedgerAccount,
        payout_token: WhopSDK::Models::WithdrawalRetrieveResponse::PayoutToken | nil,
        speed: WhopSDK::WithdrawalSpeeds,
        status: WhopSDK::WithdrawalStatus,
        trace_code: String | nil,
        withdrawal_type: WhopSDK::WithdrawalTypes
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.withdrawals.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::WithdrawalListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: WhopSDK::Currency,
        fee_amount: Float,
        fee_type: WhopSDK::WithdrawalFeeTypes | nil,
        speed: WhopSDK::WithdrawalSpeeds,
        status: WhopSDK::WithdrawalStatus,
        withdrawal_type: WhopSDK::WithdrawalTypes
      }
    end
  end
end
