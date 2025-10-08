# typed: strong

module Whopsdk
  module Models
    class ShipmentCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::ShipmentCreateParams, Whopsdk::Internal::AnyHash)
        end

      # The ID of the bot to create the shipment for
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the bot to create the shipment for
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
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
