# typed: strong

module WhopSDK
  module Models
    class ExperienceDetachParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ExperienceDetachParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the Access Pass to add the Experience to.
      sig { returns(String) }
      attr_accessor :product_id

      sig do
        params(
          product_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the Access Pass to add the Experience to.
        product_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { product_id: String, request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
