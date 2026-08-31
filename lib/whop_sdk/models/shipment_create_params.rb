# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Shipments#create
    class ShipmentCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute payment_id
      #   The payment to attach the shipment to, prefixed `pay_`.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute tracking_number
      #   The carrier-assigned tracking number.
      #
      #   @return [String]
      required :tracking_number, String

      # @!attribute account_id
      #   The unique identifier of the account, prefixed `biz_`.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(payment_id:, tracking_number:, account_id: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   @param payment_id [String] The payment to attach the shipment to, prefixed `pay_`.
      #
      #   @param tracking_number [String] The carrier-assigned tracking number.
      #
      #   @param account_id [String] The unique identifier of the account, prefixed `biz_`.
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
