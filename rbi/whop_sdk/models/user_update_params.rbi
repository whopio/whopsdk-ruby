# typed: strong

module WhopSDK
  module Models
    class UserUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::UserUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # A short biography displayed on the user's public profile.
      sig { returns(T.nilable(String)) }
      attr_accessor :bio

      # When provided, updates the user's profile overrides for this company instead of
      # the global profile. Pass name and profile_picture to set overrides, or null to
      # clear them.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # The user's display name shown on their public profile. Maximum 100 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The user's profile picture image attachment.
      sig { returns(T.nilable(WhopSDK::UserUpdateParams::ProfilePicture)) }
      attr_reader :profile_picture

      sig do
        params(
          profile_picture:
            T.nilable(WhopSDK::UserUpdateParams::ProfilePicture::OrHash)
        ).void
      end
      attr_writer :profile_picture

      # The user's unique username. Alphanumeric characters and hyphens only. Maximum 42
      # characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :username

      sig do
        params(
          id: String,
          bio: T.nilable(String),
          company_id: T.nilable(String),
          name: T.nilable(String),
          profile_picture:
            T.nilable(WhopSDK::UserUpdateParams::ProfilePicture::OrHash),
          username: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # A short biography displayed on the user's public profile.
        bio: nil,
        # When provided, updates the user's profile overrides for this company instead of
        # the global profile. Pass name and profile_picture to set overrides, or null to
        # clear them.
        company_id: nil,
        # The user's display name shown on their public profile. Maximum 100 characters.
        name: nil,
        # The user's profile picture image attachment.
        profile_picture: nil,
        # The user's unique username. Alphanumeric characters and hyphens only. Maximum 42
        # characters.
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bio: T.nilable(String),
            company_id: T.nilable(String),
            name: T.nilable(String),
            profile_picture:
              T.nilable(WhopSDK::UserUpdateParams::ProfilePicture),
            username: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class ProfilePicture < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::UserUpdateParams::ProfilePicture,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The user's profile picture image attachment.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
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
