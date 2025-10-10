# typed: strong

module Whopsdk
  module Models
    class Message < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Message, Whopsdk::Internal::AnyHash) }

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The content of the message in Markdown format
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # Whether the message has been edited
      sig { returns(T::Boolean) }
      attr_accessor :is_edited

      # Whether this message is pinned
      sig { returns(T::Boolean) }
      attr_accessor :is_pinned

      # The type of post
      sig { returns(Whopsdk::DmsPostTypes::TaggedSymbol) }
      attr_accessor :message_type

      # The poll for this message
      sig { returns(T.nilable(Whopsdk::Message::Poll)) }
      attr_reader :poll

      sig { params(poll: T.nilable(Whopsdk::Message::Poll::OrHash)).void }
      attr_writer :poll

      # The reaction counts for this message
      sig { returns(T::Array[Whopsdk::Message::PollVote]) }
      attr_accessor :poll_votes

      # The reaction counts for this message
      sig { returns(T::Array[Whopsdk::Message::ReactionCount]) }
      attr_accessor :reaction_counts

      # The ID of the message this is replying to, if applicable
      sig { returns(T.nilable(String)) }
      attr_accessor :replying_to_message_id

      # The user who sent this message
      sig { returns(Whopsdk::Message::User) }
      attr_reader :user

      sig { params(user: Whopsdk::Message::User::OrHash).void }
      attr_writer :user

      # The number of times this message has been viewed
      sig { returns(T.nilable(Integer)) }
      attr_accessor :view_count

      # Represents a message in a DM channel
      sig do
        params(
          id: String,
          content: T.nilable(String),
          is_edited: T::Boolean,
          is_pinned: T::Boolean,
          message_type: Whopsdk::DmsPostTypes::OrSymbol,
          poll: T.nilable(Whopsdk::Message::Poll::OrHash),
          poll_votes: T::Array[Whopsdk::Message::PollVote::OrHash],
          reaction_counts: T::Array[Whopsdk::Message::ReactionCount::OrHash],
          replying_to_message_id: T.nilable(String),
          user: Whopsdk::Message::User::OrHash,
          view_count: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the entity
        id:,
        # The content of the message in Markdown format
        content:,
        # Whether the message has been edited
        is_edited:,
        # Whether this message is pinned
        is_pinned:,
        # The type of post
        message_type:,
        # The poll for this message
        poll:,
        # The reaction counts for this message
        poll_votes:,
        # The reaction counts for this message
        reaction_counts:,
        # The ID of the message this is replying to, if applicable
        replying_to_message_id:,
        # The user who sent this message
        user:,
        # The number of times this message has been viewed
        view_count:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            content: T.nilable(String),
            is_edited: T::Boolean,
            is_pinned: T::Boolean,
            message_type: Whopsdk::DmsPostTypes::TaggedSymbol,
            poll: T.nilable(Whopsdk::Message::Poll),
            poll_votes: T::Array[Whopsdk::Message::PollVote],
            reaction_counts: T::Array[Whopsdk::Message::ReactionCount],
            replying_to_message_id: T.nilable(String),
            user: Whopsdk::Message::User,
            view_count: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      class Poll < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Message::Poll, Whopsdk::Internal::AnyHash)
          end

        # The options for the poll
        sig { returns(T.nilable(T::Array[Whopsdk::Message::Poll::Option])) }
        attr_accessor :options

        # The poll for this message
        sig do
          params(
            options: T.nilable(T::Array[Whopsdk::Message::Poll::Option::OrHash])
          ).returns(T.attached_class)
        end
        def self.new(
          # The options for the poll
          options:
        )
        end

        sig do
          override.returns(
            { options: T.nilable(T::Array[Whopsdk::Message::Poll::Option]) }
          )
        end
        def to_hash
        end

        class Option < Whopsdk::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Whopsdk::Message::Poll::Option, Whopsdk::Internal::AnyHash)
            end

          # The ID of the poll option
          sig { returns(String) }
          attr_accessor :id

          # The text of the poll option
          sig { returns(String) }
          attr_accessor :text

          # Represents a single poll option
          sig { params(id: String, text: String).returns(T.attached_class) }
          def self.new(
            # The ID of the poll option
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

      class PollVote < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Message::PollVote, Whopsdk::Internal::AnyHash)
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

      class ReactionCount < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Message::ReactionCount, Whopsdk::Internal::AnyHash)
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

      class User < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Message::User, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user who sent this message
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
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
