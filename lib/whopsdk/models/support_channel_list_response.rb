# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::SupportChannels#list
    class SupportChannelListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entity
      #
      #   @return [String]
      required :id, String

      # @!attribute company_id
      #   The bot ID if this is a support chat
      #
      #   @return [String, nil]
      required :company_id, String, nil?: true

      # @!attribute custom_name
      #   The custom name of the DM channel, if any
      #
      #   @return [String, nil]
      required :custom_name, String, nil?: true

      # @!attribute customer_user
      #   The customer user if this is a support chat
      #
      #   @return [Whopsdk::Models::SupportChannelListResponse::CustomerUser, nil]
      required :customer_user, -> { Whopsdk::Models::SupportChannelListResponse::CustomerUser }, nil?: true

      # @!attribute last_message_at
      #   When the last message was sent
      #
      #   @return [Time, nil]
      required :last_message_at, Time, nil?: true

      # @!attribute resolved_at
      #   When the support ticket was resolved (null if unresolved)
      #
      #   @return [Time, nil]
      required :resolved_at, Time, nil?: true

      # @!method initialize(id:, company_id:, custom_name:, customer_user:, last_message_at:, resolved_at:)
      #   Represents a DM channel
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param company_id [String, nil] The bot ID if this is a support chat
      #
      #   @param custom_name [String, nil] The custom name of the DM channel, if any
      #
      #   @param customer_user [Whopsdk::Models::SupportChannelListResponse::CustomerUser, nil] The customer user if this is a support chat
      #
      #   @param last_message_at [Time, nil] When the last message was sent
      #
      #   @param resolved_at [Time, nil] When the support ticket was resolved (null if unresolved)

      # @see Whopsdk::Models::SupportChannelListResponse#customer_user
      class CustomerUser < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The customer user if this is a support chat
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
