# frozen_string_literal: true

module WhopSDK
  module Models
    class EntryDeniedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   An object representing an entry in a waitlist.
      #
      #   @return [WhopSDK::Models::Entry]
      required :data, -> { WhopSDK::Entry }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"entry.denied"]
      required :type, const: :"entry.denied"

      # @!method initialize(id:, data:, timestamp:, api_version: :v1, type: :"entry.denied")
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::Entry] An object representing an entry in a waitlist.
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"entry.denied"] The webhook event type
    end
  end
end
