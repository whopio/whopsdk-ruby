# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ShipmentsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @whop.shipments.create(
        company_id: "biz_xxxxxxxxxxxxxx",
        payment_id: "pay_xxxxxxxxxxxxxx",
        tracking_code: "tracking_code"
      )

    assert_pattern do
      response => WhopSDK::Shipment
    end

    assert_pattern do
      response => {
        id: String,
        carrier: WhopSDK::ShipmentCarrier,
        created_at: Time,
        delivery_estimate: Time | nil,
        payment: WhopSDK::Shipment::Payment | nil,
        service: String | nil,
        status: WhopSDK::ShipmentStatus,
        substatus: WhopSDK::ShipmentSubstatus | nil,
        tracking_code: String,
        updated_at: Time
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.shipments.retrieve("ship_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Shipment
    end

    assert_pattern do
      response => {
        id: String,
        carrier: WhopSDK::ShipmentCarrier,
        created_at: Time,
        delivery_estimate: Time | nil,
        payment: WhopSDK::Shipment::Payment | nil,
        service: String | nil,
        status: WhopSDK::ShipmentStatus,
        substatus: WhopSDK::ShipmentSubstatus | nil,
        tracking_code: String,
        updated_at: Time
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @whop.shipments.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::ShipmentListResponse
    end

    assert_pattern do
      row => {
        id: String,
        carrier: WhopSDK::ShipmentCarrier,
        created_at: Time,
        delivery_estimate: Time | nil,
        payment: WhopSDK::Models::ShipmentListResponse::Payment | nil,
        service: String | nil,
        status: WhopSDK::ShipmentStatus,
        substatus: WhopSDK::ShipmentSubstatus | nil,
        tracking_code: String,
        updated_at: Time
      }
    end
  end
end
