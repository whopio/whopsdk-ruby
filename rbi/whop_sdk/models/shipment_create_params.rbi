# typed: strong

module WhopSDK
  module Models
    class ShipmentCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ShipmentCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company to create the shipment for
      sig { returns(String) }
      attr_accessor :company_id

      # The ID of the payment to create the shipment for
      sig { returns(String) }
      attr_accessor :payment_id

      # The tracking code for the shipment
      sig { returns(String) }
      attr_accessor :tracking_code

      sig do
        params(
          company_id: String,
          payment_id: String,
          tracking_code: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to create the shipment for
        company_id:,
        # The ID of the payment to create the shipment for
        payment_id:,
        # The tracking code for the shipment
        tracking_code:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            payment_id: String,
            tracking_code: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
