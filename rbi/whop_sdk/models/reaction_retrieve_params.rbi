# typed: strong

module WhopSDK
  module Models
    class ReactionRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ReactionRetrieveParams, WhopSDK::Internal::AnyHash)
        end

      sig do
        params(request_options: WhopSDK::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: WhopSDK::RequestOptions }) }
      def to_hash
      end
    end
  end
end
