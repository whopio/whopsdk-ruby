# typed: strong

module WhopSDK
  module Models
    class ExperienceAttachParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ExperienceAttachParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the product to attach the experience to.
      sig { returns(String) }
      attr_accessor :product_id

      sig do
        params(
          product_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the product to attach the experience to.
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
