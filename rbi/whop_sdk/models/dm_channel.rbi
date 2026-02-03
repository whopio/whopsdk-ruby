# typed: strong

module WhopSDK
  module Models
    class DmChannel < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::DmChannel, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The time the entity was created (in milliseconds since Unix epoch)
      sig { returns(String) }
      attr_accessor :created_at

      # When the last message was sent
      sig { returns(T.nilable(Time)) }
      attr_accessor :last_message_at

      # The custom name of the DM channel, if any
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Represents a DM channel
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
        # When the last message was sent
        last_message_at:,
        # The custom name of the DM channel, if any
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
