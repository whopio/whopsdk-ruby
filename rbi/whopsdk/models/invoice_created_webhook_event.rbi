# typed: strong

module Whopsdk
  module Models
    class InvoiceCreatedWebhookEvent < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Whopsdk::InvoiceCreatedWebhookEvent, Whopsdk::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # A statement that defines an amount due by a customer.
      sig { returns(Whopsdk::Invoice) }
      attr_reader :data

      sig { params(data: Whopsdk::Invoice::OrHash).void }
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
          data: Whopsdk::Invoice::OrHash,
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
        type: :"invoice.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: Whopsdk::Invoice,
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
