# frozen_string_literal: true

module WhopSDK
  module Models
    class DisputeUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute data
      #   An object representing a dispute against a company.
      #
      #   @return [WhopSDK::Models::Dispute]
      required :data, -> { WhopSDK::Dispute }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"dispute.updated"]
      required :type, const: :"dispute.updated"

      # @!method initialize(id:, data:, timestamp:, api_version: :v1, type: :"dispute.updated")
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::Dispute] An object representing a dispute against a company.
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"dispute.updated"] The webhook event type
    end
  end
end
