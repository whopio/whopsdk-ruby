# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::CardsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.cards.create(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::Card
    end

    assert_pattern do
      response => {
        id: String | nil,
        object: WhopSDK::Card::Object,
        status: WhopSDK::Card::Status | nil,
        card_type: WhopSDK::Card::CardType | nil,
        created_at: String | nil,
        expiration_month: String | nil,
        expiration_year: String | nil,
        last4: String | nil,
        name: String | nil,
        spend_limit: String | nil,
        spend_limit_frequency: WhopSDK::Card::SpendLimitFrequency | nil,
        transaction_limit: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.cards.retrieve("id")

    assert_pattern do
      response => WhopSDK::Card
    end

    assert_pattern do
      response => {
        id: String | nil,
        object: WhopSDK::Card::Object,
        status: WhopSDK::Card::Status | nil,
        card_type: WhopSDK::Card::CardType | nil,
        created_at: String | nil,
        expiration_month: String | nil,
        expiration_year: String | nil,
        last4: String | nil,
        name: String | nil,
        spend_limit: String | nil,
        spend_limit_frequency: WhopSDK::Card::SpendLimitFrequency | nil,
        transaction_limit: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.cards.update("id")

    assert_pattern do
      response => WhopSDK::Card
    end

    assert_pattern do
      response => {
        id: String | nil,
        object: WhopSDK::Card::Object,
        status: WhopSDK::Card::Status | nil,
        card_type: WhopSDK::Card::CardType | nil,
        created_at: String | nil,
        expiration_month: String | nil,
        expiration_year: String | nil,
        last4: String | nil,
        name: String | nil,
        spend_limit: String | nil,
        spend_limit_frequency: WhopSDK::Card::SpendLimitFrequency | nil,
        transaction_limit: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.cards.list(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::Models::CardListResponse
    end

    assert_pattern do
      response => {
        cards: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Card])
      }
    end
  end

  def test_balance
    skip("Mock server tests are disabled")

    response = @whop.cards.balance("id")

    assert_pattern do
      response => WhopSDK::CardAccountBalance
    end

    assert_pattern do
      response => {
        available_balance: String,
        currency: String,
        object: WhopSDK::CardAccountBalance::Object,
        spending_power: String,
        balance_due: String | nil,
        credit_limit: String | nil,
        has_activity: WhopSDK::Internal::Type::Boolean | nil,
        pending_charges: String | nil,
        pending_deposit_amount: String | nil,
        posted_charges: String | nil
      }
    end
  end

  def test_card_transactions
    skip("Mock server tests are disabled")

    response = @whop.cards.card_transactions("id")

    assert_pattern do
      response => WhopSDK::CardTransactionList
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::CardTransaction]),
        object: WhopSDK::CardTransactionList::Object,
        pagination: WhopSDK::CardTransactionList::Pagination
      }
    end
  end

  def test_cashback
    skip("Mock server tests are disabled")

    response = @whop.cards.cashback("id")

    assert_pattern do
      response => WhopSDK::CardCashback
    end

    assert_pattern do
      response => {
        months: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::CardCashback::Month]),
        next_payout_usd: String,
        object: WhopSDK::CardCashback::Object,
        total_earned_usd: String,
        next_payout_date: String | nil
      }
    end
  end

  def test_create_dispute_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.cards.create_dispute(
        "id",
        dispute_type: :fraud,
        text_evidence: "text_evidence",
        transaction_id: "transaction_id"
      )

    assert_pattern do
      response => WhopSDK::CardDispute
    end

    assert_pattern do
      response => {
        id: String,
        attachment_count: Integer,
        created_at: String,
        currency: String,
        dispute_amount_cents: Integer,
        dispute_type: WhopSDK::CardDispute::DisputeType,
        has_file_evidence: WhopSDK::Internal::Type::Boolean,
        object: WhopSDK::CardDispute::Object,
        status: WhopSDK::CardDispute::Status,
        resolved_at: String | nil,
        text_evidence: String | nil,
        transaction_id: String | nil
      }
    end
  end

  def test_create_dispute_attachment_required_params
    skip("Mock server tests are disabled")

    response = @whop.cards.create_dispute_attachment("dispute_id", id: "id", attachment: {})

    assert_pattern do
      response => WhopSDK::CardDispute
    end

    assert_pattern do
      response => {
        id: String,
        attachment_count: Integer,
        created_at: String,
        currency: String,
        dispute_amount_cents: Integer,
        dispute_type: WhopSDK::CardDispute::DisputeType,
        has_file_evidence: WhopSDK::Internal::Type::Boolean,
        object: WhopSDK::CardDispute::Object,
        status: WhopSDK::CardDispute::Status,
        resolved_at: String | nil,
        text_evidence: String | nil,
        transaction_id: String | nil
      }
    end
  end

  def test_daily_spend
    skip("Mock server tests are disabled")

    response = @whop.cards.daily_spend("id")

    assert_pattern do
      response => WhopSDK::CardDailySpend
    end

    assert_pattern do
      response => {
        daily_spend: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::CardDailySpend::DailySpend]),
        object: WhopSDK::CardDailySpend::Object,
        timezone: String
      }
    end
  end

  def test_deactivate
    skip("Mock server tests are disabled")

    response = @whop.cards.deactivate("id")

    assert_pattern do
      response => WhopSDK::Card
    end

    assert_pattern do
      response => {
        id: String | nil,
        object: WhopSDK::Card::Object,
        status: WhopSDK::Card::Status | nil,
        card_type: WhopSDK::Card::CardType | nil,
        created_at: String | nil,
        expiration_month: String | nil,
        expiration_year: String | nil,
        last4: String | nil,
        name: String | nil,
        spend_limit: String | nil,
        spend_limit_frequency: WhopSDK::Card::SpendLimitFrequency | nil,
        transaction_limit: String | nil
      }
    end
  end

  def test_deposit_address
    skip("Mock server tests are disabled")

    response = @whop.cards.deposit_address("id")

    assert_pattern do
      response => WhopSDK::CardDepositAddress
    end

    assert_pattern do
      response => {
        address: String,
        object: WhopSDK::CardDepositAddress::Object
      }
    end
  end

  def test_freeze_
    skip("Mock server tests are disabled")

    response = @whop.cards.freeze_("id")

    assert_pattern do
      response => WhopSDK::Card
    end

    assert_pattern do
      response => {
        id: String | nil,
        object: WhopSDK::Card::Object,
        status: WhopSDK::Card::Status | nil,
        card_type: WhopSDK::Card::CardType | nil,
        created_at: String | nil,
        expiration_month: String | nil,
        expiration_year: String | nil,
        last4: String | nil,
        name: String | nil,
        spend_limit: String | nil,
        spend_limit_frequency: WhopSDK::Card::SpendLimitFrequency | nil,
        transaction_limit: String | nil
      }
    end
  end

  def test_transactions_required_params
    skip("Mock server tests are disabled")

    response = @whop.cards.transactions(account_id: "account_id")

    assert_pattern do
      response => WhopSDK::CardTransactionList
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::CardTransaction]),
        object: WhopSDK::CardTransactionList::Object,
        pagination: WhopSDK::CardTransactionList::Pagination
      }
    end
  end

  def test_unfreeze
    skip("Mock server tests are disabled")

    response = @whop.cards.unfreeze("id")

    assert_pattern do
      response => WhopSDK::Card
    end

    assert_pattern do
      response => {
        id: String | nil,
        object: WhopSDK::Card::Object,
        status: WhopSDK::Card::Status | nil,
        card_type: WhopSDK::Card::CardType | nil,
        created_at: String | nil,
        expiration_month: String | nil,
        expiration_year: String | nil,
        last4: String | nil,
        name: String | nil,
        spend_limit: String | nil,
        spend_limit_frequency: WhopSDK::Card::SpendLimitFrequency | nil,
        transaction_limit: String | nil
      }
    end
  end
end
