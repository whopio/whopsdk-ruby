# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::TransfersTest < WhopSDK::Test::ResourceTest
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
      response => WhopSDK::Transfer
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: WhopSDK::Currency,
        destination: WhopSDK::Transfer::Destination,
        destination_ledger_account_id: String,
        fee_amount: Float | nil,
        notes: String | nil,
        origin: WhopSDK::Transfer::Origin,
        origin_ledger_account_id: String
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.transfers.retrieve("ctt_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Transfer
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: WhopSDK::Currency,
        destination: WhopSDK::Transfer::Destination,
        destination_ledger_account_id: String,
        fee_amount: Float | nil,
        notes: String | nil,
        origin: WhopSDK::Transfer::Origin,
        origin_ledger_account_id: String
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @whop.transfers.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::TransferListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount: Float,
        created_at: Time,
        currency: WhopSDK::Currency,
        destination_ledger_account_id: String,
        fee_amount: Float | nil,
        notes: String | nil,
        origin_ledger_account_id: String
      }
    end
  end
end
