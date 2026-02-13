# typed: strong

module WhopSDK
  module Models
    class User < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::User, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the user.
      sig { returns(String) }
      attr_accessor :id

      # A short biography written by the user, displayed on their public profile.
      sig { returns(T.nilable(String)) }
      attr_accessor :bio

      # The datetime the user was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The user's display name shown on their public profile.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The user's profile picture attachment with URL, content type, and file metadata.
      # Null if using a legacy profile picture.
      sig { returns(T.nilable(WhopSDK::User::ProfilePicture)) }
      attr_reader :profile_picture

      sig do
        params(
          profile_picture: T.nilable(WhopSDK::User::ProfilePicture::OrHash)
        ).void
      end
      attr_writer :profile_picture

      # The user's unique username shown on their public profile.
      sig { returns(String) }
      attr_accessor :username

      # A user account on Whop. Contains profile information, identity details, and
      # social connections.
      sig do
        params(
          id: String,
          bio: T.nilable(String),
          created_at: Time,
          name: T.nilable(String),
          profile_picture: T.nilable(WhopSDK::User::ProfilePicture::OrHash),
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the user.
        id:,
        # A short biography written by the user, displayed on their public profile.
        bio:,
        # The datetime the user was created.
        created_at:,
        # The user's display name shown on their public profile.
        name:,
        # The user's profile picture attachment with URL, content type, and file metadata.
        # Null if using a legacy profile picture.
        profile_picture:,
        # The user's unique username shown on their public profile.
        username:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bio: T.nilable(String),
            created_at: Time,
            name: T.nilable(String),
            profile_picture: T.nilable(WhopSDK::User::ProfilePicture),
            username: String
          }
        )
      end
      def to_hash
      end

      class ProfilePicture < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::User::ProfilePicture, WhopSDK::Internal::AnyHash)
          end

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The user's profile picture attachment with URL, content type, and file metadata.
        # Null if using a legacy profile picture.
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig { override.returns({ url: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
