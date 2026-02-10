# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmChannels#list
    class DmChannelListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entity
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The time the entity was created (in milliseconds since Unix epoch)
      #
      #   @return [String]
      required :created_at, String

      # @!attribute last_message_at
      #   The timestamp when the most recent message was sent in this channel. Null if no
      #   messages have been sent.
      #
      #   @return [Time, nil]
      required :last_message_at, Time, nil?: true

      # @!attribute name
      #   A custom display name assigned to this channel by the user. Null if no custom
      #   name has been set.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!method initialize(id:, created_at:, last_message_at:, name:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DmChannelListResponse} for more details.
      #
      #   A messaging channel that can be a one-on-one DM, group chat, company support
      #   conversation, or platform-level direct message.
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param created_at [String] The time the entity was created (in milliseconds since Unix epoch)
      #
      #   @param last_message_at [Time, nil] The timestamp when the most recent message was sent in this channel. Null if no
      #
      #   @param name [String, nil] A custom display name assigned to this channel by the user. Null if no custom na
    end
  end
end
