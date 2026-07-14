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

      # The account whose profile override to update. Required for API key callers.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(String)) }
      attr_reader :bio

      sig { params(bio: String).void }
      attr_writer :bio

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(WhopSDK::UserUpdateParams::ProfilePicture)) }
      attr_reader :profile_picture

      sig do
        params(
          profile_picture: WhopSDK::UserUpdateParams::ProfilePicture::OrHash
        ).void
      end
      attr_writer :profile_picture

      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      sig do
        params(
          id: String,
          account_id: String,
          bio: String,
          name: String,
          profile_picture: WhopSDK::UserUpdateParams::ProfilePicture::OrHash,
          username: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The account whose profile override to update. Required for API key callers.
        account_id: nil,
        bio: nil,
        name: nil,
        profile_picture: nil,
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            bio: String,
            name: String,
            profile_picture: WhopSDK::UserUpdateParams::ProfilePicture,
            username: String,
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

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :direct_upload_id

        sig { params(direct_upload_id: String).void }
        attr_writer :direct_upload_id

        sig do
          params(id: String, direct_upload_id: String).returns(T.attached_class)
        end
        def self.new(id: nil, direct_upload_id: nil)
        end

        sig { override.returns({ id: String, direct_upload_id: String }) }
        def to_hash
        end
      end
    end
  end
end
