# typed: strong

module WhopSDK
  module Models
    class AuthorizedUserDeleteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AuthorizedUserDeleteParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The ID of the company the authorized user belongs to. Optional if the authorized
      # user ID is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      sig do
        params(
          id: String,
          company_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The ID of the company the authorized user belongs to. Optional if the authorized
        # user ID is provided.
        company_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            company_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
