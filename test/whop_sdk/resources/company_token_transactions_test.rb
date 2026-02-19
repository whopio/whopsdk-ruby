# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CompanyTokenTransactionsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @whop.company_token_transactions.create(
        amount: 6.9,
        company_id: "biz_xxxxxxxxxxxxxx",
        destination_user_id: "destination_user_id",
        transaction_type: :transfer,
        user_id: "user_xxxxxxxxxxxxx"
      )

    assert_pattern do
      response => WhopSDK::CompanyTokenTransaction
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        company: WhopSDK::CompanyTokenTransaction::Company,
        created_at: Time,
        description: String | nil,
        idempotency_key: String | nil,
        linked_transaction_id: String | nil,
        member: WhopSDK::CompanyTokenTransaction::Member,
        transaction_type: WhopSDK::TransactionType,
        user: WhopSDK::CompanyTokenTransaction::User
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.company_token_transactions.retrieve("id")

    assert_pattern do
      response => WhopSDK::CompanyTokenTransaction
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        company: WhopSDK::CompanyTokenTransaction::Company,
        created_at: Time,
        description: String | nil,
        idempotency_key: String | nil,
        linked_transaction_id: String | nil,
        member: WhopSDK::CompanyTokenTransaction::Member,
        transaction_type: WhopSDK::TransactionType,
        user: WhopSDK::CompanyTokenTransaction::User
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.company_token_transactions.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::CompanyTokenTransactionListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount: Float,
        company: WhopSDK::Models::CompanyTokenTransactionListResponse::Company,
        created_at: Time,
        description: String | nil,
        idempotency_key: String | nil,
        linked_transaction_id: String | nil,
        member: WhopSDK::Models::CompanyTokenTransactionListResponse::Member,
        transaction_type: WhopSDK::TransactionType,
        user: WhopSDK::Models::CompanyTokenTransactionListResponse::User
      }
    end
  end
end
