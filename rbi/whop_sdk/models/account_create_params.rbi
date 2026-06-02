# typed: strong

module WhopSDK
  module Models
    class AccountCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccountCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The email address of the account owner. Required for business account API key
      # requests.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Arbitrary key/value metadata to store on the account.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      sig do
        params(
          email: String,
          metadata: T::Hash[Symbol, T.anything],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The email address of the account owner. Required for business account API key
        # requests.
        email: nil,
        # Arbitrary key/value metadata to store on the account.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: String,
            metadata: T::Hash[Symbol, T.anything],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
