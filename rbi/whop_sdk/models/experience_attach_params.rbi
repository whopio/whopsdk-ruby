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

      sig { returns(String) }
      attr_accessor :id

      # The unique identifier of the product to attach the experience to.
      sig { returns(String) }
      attr_accessor :product_id

      sig do
        params(
          id: String,
          product_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The unique identifier of the product to attach the experience to.
        product_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            product_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
