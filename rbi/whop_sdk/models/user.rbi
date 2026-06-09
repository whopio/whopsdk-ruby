# typed: strong

module WhopSDK
  module Models
    class User < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::User, WhopSDK::Internal::AnyHash) }

      # The ID of the user, which will look like user\_******\*******
      sig { returns(String) }
      attr_accessor :id

      # The user's biography
      sig { returns(T.nilable(String)) }
      attr_accessor :bio

      # When the user was created, as an ISO 8601 timestamp
      sig { returns(String) }
      attr_accessor :created_at

      # The user's display name
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The user's profile picture, an object with a url
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :profile_picture

      # The user's unique username
      sig { returns(String) }
      attr_accessor :username

      sig do
        params(
          id: String,
          bio: T.nilable(String),
          created_at: String,
          name: T.nilable(String),
          profile_picture: T.nilable(T.anything),
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the user, which will look like user\_******\*******
        id:,
        # The user's biography
        bio:,
        # When the user was created, as an ISO 8601 timestamp
        created_at:,
        # The user's display name
        name:,
        # The user's profile picture, an object with a url
        profile_picture:,
        # The user's unique username
        username:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bio: T.nilable(String),
            created_at: String,
            name: T.nilable(String),
            profile_picture: T.nilable(T.anything),
            username: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
