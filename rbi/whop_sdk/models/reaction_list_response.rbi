# typed: strong

module WhopSDK
  module Models
    class ReactionListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::ReactionListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the entity
      sig { returns(String) }
      attr_accessor :id

      # The emoji used for this reaction in shortcode format. Null if the reaction type
      # is not emoji.
      sig { returns(T.nilable(String)) }
      attr_accessor :emoji

      # The unique identifier of the post this reaction was left on.
      sig { returns(String) }
      attr_accessor :resource_id

      # The user who left this reaction on the post.
      sig { returns(WhopSDK::Models::ReactionListResponse::User) }
      attr_reader :user

      sig do
        params(user: WhopSDK::Models::ReactionListResponse::User::OrHash).void
      end
      attr_writer :user

      # A single reaction left by a user on a feed post, such as a like or emoji.
      sig do
        params(
          id: String,
          emoji: T.nilable(String),
          resource_id: String,
          user: WhopSDK::Models::ReactionListResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the entity
        id:,
        # The emoji used for this reaction in shortcode format. Null if the reaction type
        # is not emoji.
        emoji:,
        # The unique identifier of the post this reaction was left on.
        resource_id:,
        # The user who left this reaction on the post.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            emoji: T.nilable(String),
            resource_id: String,
            user: WhopSDK::Models::ReactionListResponse::User
          }
        )
      end
      def to_hash
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::ReactionListResponse::User,
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

        # The user who left this reaction on the post.
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
