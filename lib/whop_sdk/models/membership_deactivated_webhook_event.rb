# frozen_string_literal: true

module WhopSDK
  module Models
    class MembershipDeactivatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   A membership represents a purchase between a User and a Company for a specific
      #   Product.
      #
      #   @return [WhopSDK::Models::Membership]
      required :data, -> { WhopSDK::Membership }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"membership.deactivated"]
      required :type, const: :"membership.deactivated"

      # @!method initialize(id:, data:, timestamp:, api_version: :v1, type: :"membership.deactivated")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipDeactivatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::Membership] A membership represents a purchase between a User and a Company for a specific P
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"membership.deactivated"] The webhook event type
    end
  end
end
