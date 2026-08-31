# frozen_string_literal: true

module WhopSDK
  module Models
    class CardApplicationUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #
      #   @return [WhopSDK::Models::CardApplicationUpdatedWebhookEvent::Data]
      required :data, -> { WhopSDK::CardApplicationUpdatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"card_application.updated"]
      required :type, const: :"card_application.updated"

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

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"card_application.updated")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardApplicationUpdatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::CardApplicationUpdatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"card_application.updated"] The webhook event type

      # @see WhopSDK::Models::CardApplicationUpdatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Card application ID, prefixed `ciac_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute hosted_url
        #   URL where the applicant completes additional identity verification.
        #
        #   @return [String, nil]
        required :hosted_url, String, nil?: true

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::CardApplicationUpdatedWebhookEvent::Data::Object]
        required :object, enum: -> { WhopSDK::CardApplicationUpdatedWebhookEvent::Data::Object }

        # @!attribute status
        #   The application status.
        #
        #   @return [Symbol, WhopSDK::Models::CardApplicationUpdatedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::CardApplicationUpdatedWebhookEvent::Data::Status }

        # @!method initialize(id:, hosted_url:, object:, status:)
        #   @param id [String] Card application ID, prefixed `ciac_`.
        #
        #   @param hosted_url [String, nil] URL where the applicant completes additional identity verification.
        #
        #   @param object [Symbol, WhopSDK::Models::CardApplicationUpdatedWebhookEvent::Data::Object]
        #
        #   @param status [Symbol, WhopSDK::Models::CardApplicationUpdatedWebhookEvent::Data::Status] The application status.

        # @see WhopSDK::Models::CardApplicationUpdatedWebhookEvent::Data#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          CARD_APPLICATION = :card_application

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The application status.
        #
        # @see WhopSDK::Models::CardApplicationUpdatedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          APPROVED = :approved
          PENDING = :pending
          MANUAL_REVIEW = :manual_review
          DENIED = :denied
          LOCKED = :locked
          CANCELED = :canceled
          NEEDS_VERIFICATION = :needs_verification
          NEEDS_INFORMATION = :needs_information

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
