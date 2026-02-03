# typed: strong

module WhopSDK
  module Models
    class AIChat < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::AIChat, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the AI chat
      sig { returns(String) }
      attr_accessor :id

      # The total number of tokens used in the chat
      sig { returns(String) }
      attr_accessor :blended_token_usage

      # When the AI chat was created
      sig { returns(Time) }
      attr_accessor :created_at

      # When the last message was sent
      sig { returns(T.nilable(Time)) }
      attr_accessor :last_message_at

      # The number of messages in the chat
      sig { returns(Integer) }
      attr_accessor :message_count

      # The title of the AI chat
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # When the AI chat was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user who owns the AI chat
      sig { returns(WhopSDK::AIChat::User) }
      attr_reader :user

      sig { params(user: WhopSDK::AIChat::User::OrHash).void }
      attr_writer :user

      # An AI chat conversation belonging to a user
      sig do
        params(
          id: String,
          blended_token_usage: String,
          created_at: Time,
          last_message_at: T.nilable(Time),
          message_count: Integer,
          title: T.nilable(String),
          updated_at: Time,
          user: WhopSDK::AIChat::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the AI chat
        id:,
        # The total number of tokens used in the chat
        blended_token_usage:,
        # When the AI chat was created
        created_at:,
        # When the last message was sent
        last_message_at:,
        # The number of messages in the chat
        message_count:,
        # The title of the AI chat
        title:,
        # When the AI chat was last updated
        updated_at:,
        # The user who owns the AI chat
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            blended_token_usage: String,
            created_at: Time,
            last_message_at: T.nilable(Time),
            message_count: Integer,
            title: T.nilable(String),
            updated_at: Time,
            user: WhopSDK::AIChat::User
          }
        )
      end
      def to_hash
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AIChat::User, WhopSDK::Internal::AnyHash)
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The user who owns the AI chat
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the user.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
