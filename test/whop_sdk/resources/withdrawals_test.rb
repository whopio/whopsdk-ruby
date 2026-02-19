# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::WithdrawalsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.withdrawals.create(amount: 6.9, company_id: "biz_xxxxxxxxxxxxxx", currency: :usd)

    assert_pattern do
      response => WhopSDK::Withdrawal
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: WhopSDK::Currency,
        error_code: WhopSDK::Withdrawal::ErrorCode | nil,
        error_message: String | nil,
        estimated_availability: Time | nil,
        fee_amount: Float,
        fee_type: WhopSDK::WithdrawalFeeTypes | nil,
        ledger_account: WhopSDK::Withdrawal::LedgerAccount,
        markup_fee: Float,
        payout_token: WhopSDK::Withdrawal::PayoutToken | nil,
        speed: WhopSDK::WithdrawalSpeeds,
        status: WhopSDK::WithdrawalStatus,
        trace_code: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.withdrawals.retrieve("wdrl_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Withdrawal
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: WhopSDK::Currency,
        error_code: WhopSDK::Withdrawal::ErrorCode | nil,
        error_message: String | nil,
        estimated_availability: Time | nil,
        fee_amount: Float,
        fee_type: WhopSDK::WithdrawalFeeTypes | nil,
        ledger_account: WhopSDK::Withdrawal::LedgerAccount,
        markup_fee: Float,
        payout_token: WhopSDK::Withdrawal::PayoutToken | nil,
        speed: WhopSDK::WithdrawalSpeeds,
        status: WhopSDK::WithdrawalStatus,
        trace_code: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

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
        markup_fee: Float,
        speed: WhopSDK::WithdrawalSpeeds,
        status: WhopSDK::WithdrawalStatus
      }
    end
  end
end
