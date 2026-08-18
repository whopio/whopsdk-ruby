# frozen_string_literal: true

module WhopSDK
  module Models
    class ChatMessageCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   @return [WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::ChatMessageCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"chat.message.created"]
      required :type, const: :"chat.message.created"

      # @!attribute company_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, company_id: nil, previous_attributes: nil, api_version: :v1, type: :"chat.message.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ChatMessageCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"chat.message.created"] The webhook event type

      # @see WhopSDK::Models::ChatMessageCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute audience
        #
        #   @return [WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data::Audience]
        required :audience, -> { WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience }

        # @!attribute channel
        #
        #   @return [WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data::Channel]
        required :channel, -> { WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel }

        # @!attribute message
        #   A message sent within an experience chat, direct message, or group chat.
        #
        #   @return [WhopSDK::Models::Message]
        required :message, -> { WhopSDK::Message }

        # @!attribute reason
        #
        #   @return [String]
        required :reason, String

        # @!method initialize(audience:, channel:, message:, reason:)
        #   @param audience [WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data::Audience]
        #
        #   @param channel [WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data::Channel]
        #
        #   @param message [WhopSDK::Models::Message] A message sent within an experience chat, direct message, or group chat.
        #
        #   @param reason [String]

        # @see WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data#audience
        class Audience < WhopSDK::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data::Audience::Type]
          required :type, enum: -> { WhopSDK::ChatMessageCreatedWebhookEvent::Data::Audience::Type }

          # @!attribute user_ids
          #
          #   @return [Array<String>, nil]
          optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!method initialize(type:, user_ids: nil)
          #   @param type [Symbol, WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data::Audience::Type]
          #   @param user_ids [Array<String>, nil]

          # @see WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data::Audience#type
          module Type
            extend WhopSDK::Internal::Type::Enum

            CHANNEL = :channel
            USERS = :users

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data#channel
        class Channel < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [Symbol, WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data::Channel::Type]
          required :type, enum: -> { WhopSDK::ChatMessageCreatedWebhookEvent::Data::Channel::Type }

          # @!attribute experience_id
          #
          #   @return [String, nil]
          optional :experience_id, String, nil?: true

          # @!method initialize(id:, type:, experience_id: nil)
          #   @param id [String]
          #   @param type [Symbol, WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data::Channel::Type]
          #   @param experience_id [String, nil]

          # @see WhopSDK::Models::ChatMessageCreatedWebhookEvent::Data::Channel#type
          module Type
            extend WhopSDK::Internal::Type::Enum

            CHAT = :chat
            DIRECT_MESSAGE = :direct_message
            SUPPORT = :support

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
