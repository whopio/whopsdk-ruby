# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ShipmentsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @whop.shipments.create(payment_id: "pay_xxxxxxxxxxxxxx", tracking_number: "1Z999AA10123456784")

    assert_pattern do
      response => WhopSDK::Shipment
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        carrier: String | nil,
        checkpoints: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Shipment::Checkpoint]),
        created_at: String,
        payment_id: String,
        status: WhopSDK::Shipment::Status,
        tracking_number: String,
        tracking_url: String,
        updated_at: String
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.shipments.retrieve("id")

    assert_pattern do
      response => WhopSDK::Shipment
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        carrier: String | nil,
        checkpoints: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Shipment::Checkpoint]),
        created_at: String,
        payment_id: String,
        status: WhopSDK::Shipment::Status,
        tracking_number: String,
        tracking_url: String,
        updated_at: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.shipments.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Shipment
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        carrier: String | nil,
        checkpoints: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Shipment::Checkpoint]),
        created_at: String,
        payment_id: String,
        status: WhopSDK::Shipment::Status,
        tracking_number: String,
        tracking_url: String,
        updated_at: String
      }
    end
  end
end
