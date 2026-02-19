# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SupportChannels#list
    class SupportChannelListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entity
      #
      #   @return [String]
      required :id, String

      # @!attribute company_id
      #   The unique identifier of the company associated with this channel. Null if this
      #   is not a support or company-scoped conversation.
      #
      #   @return [String, nil]
      required :company_id, String, nil?: true

      # @!attribute custom_name
      #   A custom display name assigned to this channel by the user. Null if no custom
      #   name has been set.
      #
      #   @return [String, nil]
      required :custom_name, String, nil?: true

      # @!attribute customer_user
      #   The customer who initiated this support conversation. Null if this is not a
      #   support chat.
      #
      #   @return [WhopSDK::Models::SupportChannelListResponse::CustomerUser, nil]
      required :customer_user, -> { WhopSDK::Models::SupportChannelListResponse::CustomerUser }, nil?: true

      # @!attribute last_message_at
      #   The timestamp when the most recent message was sent in this channel. Null if no
      #   messages have been sent.
      #
      #   @return [Time, nil]
      required :last_message_at, Time, nil?: true

      # @!attribute resolved_at
      #   The timestamp when the linked support ticket was marked as resolved. Null if
      #   unresolved or not a support chat.
      #
      #   @return [Time, nil]
      required :resolved_at, Time, nil?: true

      # @!method initialize(id:, company_id:, custom_name:, customer_user:, last_message_at:, resolved_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SupportChannelListResponse} for more details.
      #
      #   A messaging channel that can be a one-on-one DM, group chat, company support
      #   conversation, or platform-level direct message.
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param company_id [String, nil] The unique identifier of the company associated with this channel. Null if this
      #
      #   @param custom_name [String, nil] A custom display name assigned to this channel by the user. Null if no custom na
      #
      #   @param customer_user [WhopSDK::Models::SupportChannelListResponse::CustomerUser, nil] The customer who initiated this support conversation. Null if this is not a supp
      #
      #   @param last_message_at [Time, nil] The timestamp when the most recent message was sent in this channel. Null if no
      #
      #   @param resolved_at [Time, nil] The timestamp when the linked support ticket was marked as resolved. Null if unr

      # @see WhopSDK::Models::SupportChannelListResponse#customer_user
      class CustomerUser < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The customer who initiated this support conversation. Null if this is not a
        #   support chat.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
