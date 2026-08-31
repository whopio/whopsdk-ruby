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

      # The payment to attach the shipment to, prefixed `pay_`.
      sig { returns(String) }
      attr_accessor :payment_id

      # The carrier-assigned tracking number.
      sig { returns(String) }
      attr_accessor :tracking_number

      # The unique identifier of the account, prefixed `biz_`.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          payment_id: String,
          tracking_number: String,
          account_id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The payment to attach the shipment to, prefixed `pay_`.
        payment_id:,
        # The carrier-assigned tracking number.
        tracking_number:,
        # The unique identifier of the account, prefixed `biz_`.
        account_id: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            payment_id: String,
            tracking_number: String,
            account_id: String,
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
