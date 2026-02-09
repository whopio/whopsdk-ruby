# typed: strong

module WhopSDK
  module Models
    class Reaction < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Reaction, WhopSDK::Internal::AnyHash) }

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
      sig { returns(WhopSDK::Reaction::User) }
      attr_reader :user

      sig { params(user: WhopSDK::Reaction::User::OrHash).void }
      attr_writer :user

      # Represents a reaction to a feed post
      sig do
        params(
          id: String,
          emoji: T.nilable(String),
          resource_id: String,
          user: WhopSDK::Reaction::User::OrHash
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
            user: WhopSDK::Reaction::User
          }
        )
      end
      def to_hash
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Reaction::User, WhopSDK::Internal::AnyHash)
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

        # The user who reacted to the post
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
