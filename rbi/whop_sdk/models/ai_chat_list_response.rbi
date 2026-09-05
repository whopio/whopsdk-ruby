# typed: strong

module WhopSDK
  module Models
    class AIChatListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::AIChatListResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the ai chat.
      sig { returns(String) }
      attr_accessor :id

      # The AI agent that handles this chat. Set when the chat is created and fixed for
      # its lifetime.
      sig do
        returns(
          WhopSDK::Models::AIChatListResponse::AgentIdentifier::TaggedSymbol
        )
      end
      attr_accessor :agent_identifier

      # The total number of tokens consumed across all messages in this conversation.
      sig { returns(String) }
      attr_accessor :blended_token_usage

      # The datetime the ai chat was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The timestamp of the most recent message in this conversation. Null if no
      # messages have been sent yet.
      sig { returns(T.nilable(Time)) }
      attr_accessor :last_message_at

      # The total number of messages exchanged in this conversation.
      sig { returns(Integer) }
      attr_accessor :message_count

      # The notification preference for this AI chat. `all` delivers AI chat
      # notifications and badges, while `none` mutes them.
      sig { returns(WhopSDK::NotificationPreferences::TaggedSymbol) }
      attr_accessor :notification_preference

      # A short descriptive title for this AI chat conversation. Null if no title has
      # been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The datetime the ai chat was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user who owns this AI chat conversation.
      sig { returns(WhopSDK::Models::AIChatListResponse::User) }
      attr_reader :user

      sig do
        params(user: WhopSDK::Models::AIChatListResponse::User::OrHash).void
      end
      attr_writer :user

      # An AI-powered chat conversation belonging to a user, with optional scheduled
      # automation.
      sig do
        params(
          id: String,
          agent_identifier:
            WhopSDK::Models::AIChatListResponse::AgentIdentifier::OrSymbol,
          blended_token_usage: String,
          created_at: Time,
          last_message_at: T.nilable(Time),
          message_count: Integer,
          notification_preference: WhopSDK::NotificationPreferences::OrSymbol,
          title: T.nilable(String),
          updated_at: Time,
          user: WhopSDK::Models::AIChatListResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the ai chat.
        id:,
        # The AI agent that handles this chat. Set when the chat is created and fixed for
        # its lifetime.
        agent_identifier:,
        # The total number of tokens consumed across all messages in this conversation.
        blended_token_usage:,
        # The datetime the ai chat was created.
        created_at:,
        # The timestamp of the most recent message in this conversation. Null if no
        # messages have been sent yet.
        last_message_at:,
        # The total number of messages exchanged in this conversation.
        message_count:,
        # The notification preference for this AI chat. `all` delivers AI chat
        # notifications and badges, while `none` mutes them.
        notification_preference:,
        # A short descriptive title for this AI chat conversation. Null if no title has
        # been set.
        title:,
        # The datetime the ai chat was last updated.
        updated_at:,
        # The user who owns this AI chat conversation.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            agent_identifier:
              WhopSDK::Models::AIChatListResponse::AgentIdentifier::TaggedSymbol,
            blended_token_usage: String,
            created_at: Time,
            last_message_at: T.nilable(Time),
            message_count: Integer,
            notification_preference:
              WhopSDK::NotificationPreferences::TaggedSymbol,
            title: T.nilable(String),
            updated_at: Time,
            user: WhopSDK::Models::AIChatListResponse::User
          }
        )
      end
      def to_hash
      end

      # The AI agent that handles this chat. Set when the chat is created and fixed for
      # its lifetime.
      module AgentIdentifier
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AIChatListResponse::AgentIdentifier)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GENERAL =
          T.let(
            :general,
            WhopSDK::Models::AIChatListResponse::AgentIdentifier::TaggedSymbol
          )
        SUPPORT =
          T.let(
            :support,
            WhopSDK::Models::AIChatListResponse::AgentIdentifier::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AIChatListResponse::AgentIdentifier::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AIChatListResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user who owns this AI chat conversation.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the user.
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
