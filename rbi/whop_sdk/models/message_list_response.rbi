# typed: strong

module WhopSDK
  module Models
    class MessageListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::MessageListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Represents a unique identifier that is Base64 obfuscated. It is often used to
      # refetch an object or as key for a cache. The ID type appears in a JSON response
      # as a String; however, it is not intended to be human-readable. When expected as
      # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      # input value will be accepted as an ID.
      sig { returns(String) }
      attr_accessor :id

      # The message content formatted as Markdown. Null if the message has no text
      # content.
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # The timestamp when this message was originally created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Whether the message content has been edited after it was originally sent.
      sig { returns(T::Boolean) }
      attr_accessor :is_edited

      # Whether this message is pinned to the top of the channel for easy access.
      sig { returns(T::Boolean) }
      attr_accessor :is_pinned

      # The classification of this message: regular, system, or automated.
      sig { returns(WhopSDK::DmsPostTypes::TaggedSymbol) }
      attr_accessor :message_type

      # A poll attached to this message. Null if the message does not contain a poll.
      sig { returns(T.nilable(WhopSDK::Models::MessageListResponse::Poll)) }
      attr_reader :poll

      sig do
        params(
          poll: T.nilable(WhopSDK::Models::MessageListResponse::Poll::OrHash)
        ).void
      end
      attr_writer :poll

      # Aggregated reaction counts on this message, filtered to a specific reaction
      # type.
      sig { returns(T::Array[WhopSDK::Models::MessageListResponse::PollVote]) }
      attr_accessor :poll_votes

      # Aggregated reaction counts on this message, filtered to a specific reaction
      # type.
      sig do
        returns(T::Array[WhopSDK::Models::MessageListResponse::ReactionCount])
      end
      attr_accessor :reaction_counts

      # The unique identifier of the message this post is replying to. Null if this is
      # not a reply.
      sig { returns(T.nilable(String)) }
      attr_accessor :replying_to_message_id

      # The timestamp when this message was last modified.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user who authored this message.
      sig { returns(WhopSDK::Models::MessageListResponse::User) }
      attr_reader :user

      sig do
        params(user: WhopSDK::Models::MessageListResponse::User::OrHash).void
      end
      attr_writer :user

      # The number of unique views this message has received. Null if view tracking is
      # not enabled for this channel.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :view_count

      # A message sent within an experience chat, direct message, or group chat.
      sig do
        params(
          id: String,
          content: T.nilable(String),
          created_at: Time,
          is_edited: T::Boolean,
          is_pinned: T::Boolean,
          message_type: WhopSDK::DmsPostTypes::OrSymbol,
          poll: T.nilable(WhopSDK::Models::MessageListResponse::Poll::OrHash),
          poll_votes:
            T::Array[WhopSDK::Models::MessageListResponse::PollVote::OrHash],
          reaction_counts:
            T::Array[
              WhopSDK::Models::MessageListResponse::ReactionCount::OrHash
            ],
          replying_to_message_id: T.nilable(String),
          updated_at: Time,
          user: WhopSDK::Models::MessageListResponse::User::OrHash,
          view_count: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        id:,
        # The message content formatted as Markdown. Null if the message has no text
        # content.
        content:,
        # The timestamp when this message was originally created.
        created_at:,
        # Whether the message content has been edited after it was originally sent.
        is_edited:,
        # Whether this message is pinned to the top of the channel for easy access.
        is_pinned:,
        # The classification of this message: regular, system, or automated.
        message_type:,
        # A poll attached to this message. Null if the message does not contain a poll.
        poll:,
        # Aggregated reaction counts on this message, filtered to a specific reaction
        # type.
        poll_votes:,
        # Aggregated reaction counts on this message, filtered to a specific reaction
        # type.
        reaction_counts:,
        # The unique identifier of the message this post is replying to. Null if this is
        # not a reply.
        replying_to_message_id:,
        # The timestamp when this message was last modified.
        updated_at:,
        # The user who authored this message.
        user:,
        # The number of unique views this message has received. Null if view tracking is
        # not enabled for this channel.
        view_count:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            content: T.nilable(String),
            created_at: Time,
            is_edited: T::Boolean,
            is_pinned: T::Boolean,
            message_type: WhopSDK::DmsPostTypes::TaggedSymbol,
            poll: T.nilable(WhopSDK::Models::MessageListResponse::Poll),
            poll_votes:
              T::Array[WhopSDK::Models::MessageListResponse::PollVote],
            reaction_counts:
              T::Array[WhopSDK::Models::MessageListResponse::ReactionCount],
            replying_to_message_id: T.nilable(String),
            updated_at: Time,
            user: WhopSDK::Models::MessageListResponse::User,
            view_count: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      class Poll < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MessageListResponse::Poll,
              WhopSDK::Internal::AnyHash
            )
          end

        # The options for the poll
        sig do
          returns(
            T.nilable(
              T::Array[WhopSDK::Models::MessageListResponse::Poll::Option]
            )
          )
        end
        attr_accessor :options

        # A poll attached to this message. Null if the message does not contain a poll.
        sig do
          params(
            options:
              T.nilable(
                T::Array[
                  WhopSDK::Models::MessageListResponse::Poll::Option::OrHash
                ]
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The options for the poll
          options:
        )
        end

        sig do
          override.returns(
            {
              options:
                T.nilable(
                  T::Array[WhopSDK::Models::MessageListResponse::Poll::Option]
                )
            }
          )
        end
        def to_hash
        end

        class Option < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::MessageListResponse::Poll::Option,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the poll option.
          sig { returns(String) }
          attr_accessor :id

          # The text of the poll option
          sig { returns(String) }
          attr_accessor :text

          # Represents a single poll option
          sig { params(id: String, text: String).returns(T.attached_class) }
          def self.new(
            # The unique identifier for the poll option.
            id:,
            # The text of the poll option
            text:
          )
          end

          sig { override.returns({ id: String, text: String }) }
          def to_hash
          end
        end
      end

      class PollVote < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MessageListResponse::PollVote,
              WhopSDK::Internal::AnyHash
            )
          end

        # The number of users who reacted
        sig { returns(Integer) }
        attr_accessor :count

        # The reaction that was used
        sig { returns(T.nilable(String)) }
        attr_accessor :option_id

        # Represents a reaction count for a feed post
        sig do
          params(count: Integer, option_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # The number of users who reacted
          count:,
          # The reaction that was used
          option_id:
        )
        end

        sig do
          override.returns({ count: Integer, option_id: T.nilable(String) })
        end
        def to_hash
        end
      end

      class ReactionCount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MessageListResponse::ReactionCount,
              WhopSDK::Internal::AnyHash
            )
          end

        # The number of users who reacted
        sig { returns(Integer) }
        attr_accessor :count

        # The emoji that was used in shortcode format (:heart:)
        sig { returns(T.nilable(String)) }
        attr_accessor :emoji

        # Represents a reaction count for a feed post
        sig do
          params(count: Integer, emoji: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # The number of users who reacted
          count:,
          # The emoji that was used in shortcode format (:heart:)
          emoji:
        )
        end

        sig { override.returns({ count: Integer, emoji: T.nilable(String) }) }
        def to_hash
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MessageListResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user who authored this message.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
