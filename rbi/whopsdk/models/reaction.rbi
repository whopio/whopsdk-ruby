# typed: strong

module Whopsdk
  module Models
    class Reaction < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Reaction, Whopsdk::Internal::AnyHash) }

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The emoji that was used in shortcode format (:heart:)
      sig { returns(T.nilable(String)) }
      attr_accessor :emoji

      # The ID of the post this reaction belongs to
      sig { returns(String) }
      attr_accessor :resource_id

      # The user who reacted to the post
      sig { returns(Whopsdk::Reaction::User) }
      attr_reader :user

      sig { params(user: Whopsdk::Reaction::User::OrHash).void }
      attr_writer :user

      # Represents a reaction to a feed post
      sig do
        params(
          id: String,
          emoji: T.nilable(String),
          resource_id: String,
          user: Whopsdk::Reaction::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the entity
        id:,
        # The emoji that was used in shortcode format (:heart:)
        emoji:,
        # The ID of the post this reaction belongs to
        resource_id:,
        # The user who reacted to the post
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            emoji: T.nilable(String),
            resource_id: String,
            user: Whopsdk::Reaction::User
          }
        )
      end
      def to_hash
      end

      class User < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Reaction::User, Whopsdk::Internal::AnyHash)
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

        # The user who reacted to the post
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
