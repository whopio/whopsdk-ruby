# frozen_string_literal: true

module WhopSDK
  module Models
    class ShipmentCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute data
      #   A physical shipment associated with a payment, including carrier details and
      #   tracking information.
      #
      #   @return [WhopSDK::Models::Shipment]
      required :data, -> { WhopSDK::Shipment }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"shipment.created"]
      required :type, const: :"shipment.created"

      # @!attribute company_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, api_version_date:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"shipment.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ShipmentCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::Shipment] A physical shipment associated with a payment, including carrier details and tra
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"shipment.created"] The webhook event type
    end
  end
end
