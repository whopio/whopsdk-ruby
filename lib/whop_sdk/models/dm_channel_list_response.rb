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
      #   When the last message was sent
      #
      #   @return [Time, nil]
      required :last_message_at, Time, nil?: true

      # @!attribute name
      #   The custom name of the DM channel, if any
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!method initialize(id:, created_at:, last_message_at:, name:)
      #   Represents a DM channel
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param created_at [String] The time the entity was created (in milliseconds since Unix epoch)
      #
      #   @param last_message_at [Time, nil] When the last message was sent
      #
      #   @param name [String, nil] The custom name of the DM channel, if any
    end
  end
end
