# frozen_string_literal: true

module WhopSDK
  module Models
    class ChatReactionCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   @return [WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::ChatReactionCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"chat.reaction.created"]
      required :type, const: :"chat.reaction.created"

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

      # @!method initialize(id:, api_version_date:, data:, timestamp:, company_id: nil, previous_attributes: nil, api_version: :v1, type: :"chat.reaction.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ChatReactionCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"chat.reaction.created"] The webhook event type

      # @see WhopSDK::Models::ChatReactionCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute audience
        #
        #   @return [WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data::Audience]
        required :audience, -> { WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience }

        # @!attribute channel
        #
        #   @return [WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data::Channel]
        required :channel, -> { WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel }

        # @!attribute message
        #   A message sent within an experience chat, direct message, or group chat.
        #
        #   @return [WhopSDK::Models::Message]
        required :message, -> { WhopSDK::Message }

        # @!attribute reaction
        #   A single reaction left by a user on a feed post, such as a like or emoji.
        #
        #   @return [WhopSDK::Models::Reaction]
        required :reaction, -> { WhopSDK::Reaction }

        # @!attribute reason
        #
        #   @return [String]
        required :reason, String

        # @!method initialize(audience:, channel:, message:, reaction:, reason:)
        #   @param audience [WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data::Audience]
        #
        #   @param channel [WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data::Channel]
        #
        #   @param message [WhopSDK::Models::Message] A message sent within an experience chat, direct message, or group chat.
        #
        #   @param reaction [WhopSDK::Models::Reaction] A single reaction left by a user on a feed post, such as a like or emoji.
        #
        #   @param reason [String]

        # @see WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data#audience
        class Audience < WhopSDK::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data::Audience::Type]
          required :type, enum: -> { WhopSDK::ChatReactionCreatedWebhookEvent::Data::Audience::Type }

          # @!attribute user_ids
          #
          #   @return [Array<String>, nil]
          optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!method initialize(type:, user_ids: nil)
          #   @param type [Symbol, WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data::Audience::Type]
          #   @param user_ids [Array<String>, nil]

          # @see WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data::Audience#type
          module Type
            extend WhopSDK::Internal::Type::Enum

            CHANNEL = :channel
            USERS = :users

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data#channel
        class Channel < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #
          #   @return [Symbol, WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data::Channel::Type]
          required :type, enum: -> { WhopSDK::ChatReactionCreatedWebhookEvent::Data::Channel::Type }

          # @!attribute experience_id
          #
          #   @return [String, nil]
          optional :experience_id, String, nil?: true

          # @!method initialize(id:, type:, experience_id: nil)
          #   @param id [String]
          #   @param type [Symbol, WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data::Channel::Type]
          #   @param experience_id [String, nil]

          # @see WhopSDK::Models::ChatReactionCreatedWebhookEvent::Data::Channel#type
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
