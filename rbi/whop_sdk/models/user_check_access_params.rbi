# typed: strong

module WhopSDK
  module Models
    class UserCheckAccessParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::UserCheckAccessParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :resource_id

      sig do
        params(
          id: String,
          resource_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, resource_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            id: String,
            resource_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
