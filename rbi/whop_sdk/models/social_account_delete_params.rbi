# typed: strong

module WhopSDK
  module Models
    class SocialAccountDeleteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SocialAccountDeleteParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The Account that the social account is connected to. Provide either this or
      # user_id.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # The User that the social account is connected to. Provide either this or
      # account_id.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          id: String,
          account_id: String,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The Account that the social account is connected to. Provide either this or
        # user_id.
        account_id: nil,
        # The User that the social account is connected to. Provide either this or
        # account_id.
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            user_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
