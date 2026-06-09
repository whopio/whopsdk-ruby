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

      sig do
        params(
          id: String,
          account_id: String,
          bio: String,
          name: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The account whose profile override to update. Required for API key callers.
        account_id: nil,
        bio: nil,
        name: nil,
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
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
