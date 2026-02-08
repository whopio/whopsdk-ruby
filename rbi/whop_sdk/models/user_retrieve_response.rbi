# typed: strong

module WhopSDK
  module Models
    class UserRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::UserRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the user.
      sig { returns(String) }
      attr_accessor :id

      # The user's bio
      sig { returns(T.nilable(String)) }
      attr_accessor :bio

      # The datetime the user was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The name of the user from their Whop account.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The user's profile picture
      sig do
        returns(
          T.nilable(WhopSDK::Models::UserRetrieveResponse::ProfilePicture)
        )
      end
      attr_reader :profile_picture

      sig do
        params(
          profile_picture:
            T.nilable(
              WhopSDK::Models::UserRetrieveResponse::ProfilePicture::OrHash
            )
        ).void
      end
      attr_writer :profile_picture

      # The username of the user from their Whop account.
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
          profile_picture:
            T.nilable(
              WhopSDK::Models::UserRetrieveResponse::ProfilePicture::OrHash
            ),
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the user.
        id:,
        # The user's bio
        bio:,
        # The datetime the user was created.
        created_at:,
        # The name of the user from their Whop account.
        name:,
        # The user's profile picture
        profile_picture:,
        # The username of the user from their Whop account.
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
            profile_picture:
              T.nilable(WhopSDK::Models::UserRetrieveResponse::ProfilePicture),
            username: String
          }
        )
      end
      def to_hash
      end

      class ProfilePicture < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::UserRetrieveResponse::ProfilePicture,
              WhopSDK::Internal::AnyHash
            )
          end

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The user's profile picture
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
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
