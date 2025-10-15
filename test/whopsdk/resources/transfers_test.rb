# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::TransfersTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @whop.transfers.create(
        amount: 6.9,
        currency: :usd,
        destination_id: "destination_id",
        origin_id: "origin_id"
      )

    assert_pattern do
      response => Whopsdk::Transfer
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: Whopsdk::Currency,
        destination: Whopsdk::Transfer::Destination,
        destination_ledger_account_id: String,
        fee_amount: Float | nil,
        notes: String | nil,
        origin: Whopsdk::Transfer::Origin,
        origin_ledger_account_id: String
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.transfers.retrieve("ctt_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Transfer
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: Whopsdk::Currency,
        destination: Whopsdk::Transfer::Destination,
        destination_ledger_account_id: String,
        fee_amount: Float | nil,
        notes: String | nil,
        origin: Whopsdk::Transfer::Origin,
        origin_ledger_account_id: String
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @whop.transfers.list

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::TransferListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: Whopsdk::Currency,
        destination_ledger_account_id: String,
        fee_amount: Float | nil,
        notes: String | nil,
        origin_ledger_account_id: String
      }
    end
  end
end
