# typed: strong

module WhopSDK
  module Models
    class PaymentFailedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::PaymentFailedWebhookEvent, WhopSDK::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # An object representing a receipt for a membership.
      sig { returns(WhopSDK::Payment) }
      attr_reader :data

      sig { params(data: WhopSDK::Payment::OrHash).void }
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
          data: WhopSDK::Payment::OrHash,
          timestamp: Time,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # An object representing a receipt for a membership.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"payment.failed"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::Payment,
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
