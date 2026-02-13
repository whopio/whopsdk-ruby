# typed: strong

module WhopSDK
  module Models
    class DmChannelListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::DmChannelListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The time the entity was created (in milliseconds since Unix epoch)
      sig { returns(String) }
      attr_accessor :created_at

      # The timestamp when the most recent message was sent in this channel. Null if no
      # messages have been sent.
      sig { returns(T.nilable(Time)) }
      attr_accessor :last_message_at

      # A custom display name assigned to this channel by the user. Null if no custom
      # name has been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # A messaging channel that can be a one-on-one DM, group chat, company support
      # conversation, or platform-level direct message.
      sig do
        params(
          id: String,
          created_at: String,
          last_message_at: T.nilable(Time),
          name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the entity
        id:,
        # The time the entity was created (in milliseconds since Unix epoch)
        created_at:,
        # The timestamp when the most recent message was sent in this channel. Null if no
        # messages have been sent.
        last_message_at:,
        # A custom display name assigned to this channel by the user. Null if no custom
        # name has been set.
        name:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            last_message_at: T.nilable(Time),
            name: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
