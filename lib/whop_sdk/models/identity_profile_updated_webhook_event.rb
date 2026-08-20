# frozen_string_literal: true

module WhopSDK
  module Models
    class IdentityProfileUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   The identity profile that changed. Re-fetch `GET /api/v1/verifications` to read
      #   its current, access-scoped state.
      #
      #   @return [WhopSDK::Models::IdentityProfileUpdatedWebhookEvent::Data]
      required :data, -> { WhopSDK::IdentityProfileUpdatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"identity_profile.updated"]
      required :type, const: :"identity_profile.updated"

      # @!attribute account_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"identity_profile.updated")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::IdentityProfileUpdatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::IdentityProfileUpdatedWebhookEvent::Data] The identity profile that changed. Re-fetch `GET /api/v1/verifications` to read
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"identity_profile.updated"] The webhook event type

      # @see WhopSDK::Models::IdentityProfileUpdatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The identity profile id.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The identity profile that changed. Re-fetch `GET /api/v1/verifications` to read
        #   its current, access-scoped state.
        #
        #   @param id [String] The identity profile id.
      end
    end
  end
end
