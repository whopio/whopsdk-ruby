# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::LedgerAccountsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.ledger_accounts.retrieve("ldgr_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::LedgerAccountRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        balances: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::LedgerAccountRetrieveResponse::Balance]),
        ledger_account_audit_status: WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus | nil,
        ledger_type: WhopSDK::Models::LedgerAccountRetrieveResponse::LedgerType,
        owner: WhopSDK::Models::LedgerAccountRetrieveResponse::Owner,
        payments_approval_status: WhopSDK::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus | nil,
        transfer_fee: Float | nil
      }
    end
  end
end
