# typed: strong

module WhopSDK
  module Models
    class InvoiceVoidedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::InvoiceVoidedWebhookEvent, WhopSDK::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # A statement that defines an amount due by a customer.
      sig { returns(WhopSDK::Invoice) }
      attr_reader :data

      sig { params(data: WhopSDK::Invoice::OrHash).void }
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          data: WhopSDK::Invoice::OrHash,
          timestamp: Time,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # A statement that defines an amount due by a customer.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"invoice.voided"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::Invoice,
            timestamp: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
