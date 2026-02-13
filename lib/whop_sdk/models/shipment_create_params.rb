# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Shipments#create
    class ShipmentCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to create the shipment for, starting with
      #   'biz\_'.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute payment_id
      #   The unique identifier of the payment to associate the shipment with.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute tracking_code
      #   The carrier tracking code for the shipment, such as a USPS, UPS, or FedEx
      #   tracking number.
      #
      #   @return [String]
      required :tracking_code, String

      # @!method initialize(company_id:, payment_id:, tracking_code:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ShipmentCreateParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to create the shipment for, starting with '
      #
      #   @param payment_id [String] The unique identifier of the payment to associate the shipment with.
      #
      #   @param tracking_code [String] The carrier tracking code for the shipment, such as a USPS, UPS, or FedEx tracki
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
