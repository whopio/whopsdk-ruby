# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::LedgerAccountsTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.ledger_accounts.retrieve("ldgr_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Models::LedgerAccountRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        balances: ^(Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::LedgerAccountRetrieveResponse::Balance]),
        ledger_account_audit_status: Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerAccountAuditStatus | nil,
        ledger_type: Whopsdk::Models::LedgerAccountRetrieveResponse::LedgerType,
        owner: Whopsdk::Models::LedgerAccountRetrieveResponse::Owner,
        payments_approval_status: Whopsdk::Models::LedgerAccountRetrieveResponse::PaymentsApprovalStatus | nil,
        transfer_fee: Float | nil
      }
    end
  end
end
