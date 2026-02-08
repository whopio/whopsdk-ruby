# frozen_string_literal: true

module WhopSDK
  module Models
    class SetupIntentRequiresActionWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   A setup intent allows a user to save a payment method without making a purchase.
      #
      #   @return [WhopSDK::Models::SetupIntent]
      required :data, -> { WhopSDK::SetupIntent }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"setup_intent.requires_action"]
      required :type, const: :"setup_intent.requires_action"

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"setup_intent.requires_action")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SetupIntentRequiresActionWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::SetupIntent] A setup intent allows a user to save a payment method without making a purchase.
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"setup_intent.requires_action"] The webhook event type
    end
  end
end
