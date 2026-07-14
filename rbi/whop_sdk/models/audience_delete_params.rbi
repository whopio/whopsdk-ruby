# typed: strong

module WhopSDK
  module Models
    class AudienceDeleteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AudienceDeleteParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :audience_id

      sig do
        params(
          audience_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(audience_id:, request_options: {})
      end

      sig do
        override.returns(
          { audience_id: String, request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
