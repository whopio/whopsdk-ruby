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

      # The unique identifier of the company to create the shipment for, starting with
      # 'biz\_'.
      sig { returns(String) }
      attr_accessor :company_id

      # The unique identifier of the payment to associate the shipment with.
      sig { returns(String) }
      attr_accessor :payment_id

      # The carrier tracking code for the shipment, such as a USPS, UPS, or FedEx
      # tracking number.
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
        # The unique identifier of the company to create the shipment for, starting with
        # 'biz\_'.
        company_id:,
        # The unique identifier of the payment to associate the shipment with.
        payment_id:,
        # The carrier tracking code for the shipment, such as a USPS, UPS, or FedEx
        # tracking number.
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
