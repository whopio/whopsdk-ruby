# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Shipments#create
    class ShipmentCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to create the shipment for
      #
      #   @return [String]
      required :company_id, String

      # @!attribute payment_id
      #   The ID of the payment to create the shipment for
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute tracking_code
      #   The tracking code for the shipment
      #
      #   @return [String]
      required :tracking_code, String

      # @!method initialize(company_id:, payment_id:, tracking_code:, request_options: {})
      #   @param company_id [String] The ID of the company to create the shipment for
      #
      #   @param payment_id [String] The ID of the payment to create the shipment for
      #
      #   @param tracking_code [String] The tracking code for the shipment
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
