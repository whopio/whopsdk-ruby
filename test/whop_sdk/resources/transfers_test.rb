# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::TransfersTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.transfers.create(amount: 25, origin_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::TransferCreateResponse
    end

    assert_pattern do
      case response
      in WhopSDK::Models::TransferCreateResponse::Transfer
      in WhopSDK::Models::TransferCreateResponse::Send
      in WhopSDK::Models::TransferCreateResponse::ClaimLink
      end
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.transfers.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::TransferRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Time,
        created_by_user: WhopSDK::Models::TransferRetrieveResponse::CreatedByUser | nil,
        currency: String,
        destination: WhopSDK::Models::TransferRetrieveResponse::Destination,
        destination_ledger_account_id: String,
        object: WhopSDK::Models::TransferRetrieveResponse::Object,
        origin: WhopSDK::Models::TransferRetrieveResponse::Origin,
        origin_ledger_account_id: String,
        status: WhopSDK::Models::TransferRetrieveResponse::Status,
        failed_at: Time | nil,
        failure_code: String | nil,
        failure_reason: String | nil,
        fee_amount: Float | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        notes: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

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
        created_by_user: WhopSDK::Models::TransferListResponse::CreatedByUser | nil,
        currency: String,
        destination_ledger_account_id: String,
        object: WhopSDK::Models::TransferListResponse::Object,
        origin_ledger_account_id: String,
        status: WhopSDK::Models::TransferListResponse::Status,
        failed_at: Time | nil,
        failure_code: String | nil,
        failure_reason: String | nil,
        fee_amount: Float | nil,
        metadata: ^(WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]) | nil,
        notes: String | nil
      }
    end
  end
end
