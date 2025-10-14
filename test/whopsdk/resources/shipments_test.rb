# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::ShipmentsTest < Whopsdk::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @whop.shipments.create(
        company_id: "biz_xxxxxxxxxxxxxx",
        payment_id: "pay_xxxxxxxxxxxxxx",
        tracking_code: "tracking_code"
      )

    assert_pattern do
      response => Whopsdk::Shipment
    end

    assert_pattern do
      response => {
        id: String,
        carrier: Whopsdk::ShipmentCarrier,
        created_at: Integer,
        delivery_estimate: Integer | nil,
        payment: Whopsdk::Shipment::Payment,
        service: String | nil,
        status: Whopsdk::ShipmentStatus,
        substatus: Whopsdk::ShipmentSubstatus | nil,
        tracking_code: String,
        updated_at: Integer
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.shipments.retrieve("ship_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Shipment
    end

    assert_pattern do
      response => {
        id: String,
        carrier: Whopsdk::ShipmentCarrier,
        created_at: Integer,
        delivery_estimate: Integer | nil,
        payment: Whopsdk::Shipment::Payment,
        service: String | nil,
        status: Whopsdk::ShipmentStatus,
        substatus: Whopsdk::ShipmentSubstatus | nil,
        tracking_code: String,
        updated_at: Integer
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @whop.shipments.list

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::ShipmentListResponse
    end

    assert_pattern do
      row => {
        id: String,
        carrier: Whopsdk::ShipmentCarrier,
        created_at: Integer,
        delivery_estimate: Integer | nil,
        payment: Whopsdk::Models::ShipmentListResponse::Payment,
        service: String | nil,
        status: Whopsdk::ShipmentStatus,
        substatus: Whopsdk::ShipmentSubstatus | nil,
        tracking_code: String,
        updated_at: Integer
      }
    end
  end
end
