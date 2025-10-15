# typed: strong

module Whopsdk
  module Models
    class InvoicePaidWebhookEvent < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Whopsdk::InvoicePaidWebhookEvent, Whopsdk::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The timestamp in seconds since the Unix epoch that the webhook was sent at on
      # the server
      sig { returns(String) }
      attr_accessor :created_at

      # A statement that defines an amount due by a customer.
      sig { returns(Whopsdk::Invoice) }
      attr_reader :data

      sig { params(data: Whopsdk::Invoice::OrHash).void }
      attr_writer :data

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          created_at: String,
          data: Whopsdk::Invoice::OrHash,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The timestamp in seconds since the Unix epoch that the webhook was sent at on
        # the server
        created_at:,
        # A statement that defines an amount due by a customer.
        data:,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"invoice.paid"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            created_at: String,
            data: Whopsdk::Invoice,
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
