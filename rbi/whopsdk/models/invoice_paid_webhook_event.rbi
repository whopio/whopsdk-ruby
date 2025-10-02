# typed: strong

module Whopsdk
  module Models
    class InvoicePaidWebhookEvent < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Whopsdk::InvoicePaidWebhookEvent, Whopsdk::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The API version for this webhook
      sig do
        returns(
          T.nilable(Whopsdk::InvoicePaidWebhookEvent::APIVersion::TaggedSymbol)
        )
      end
      attr_reader :api_version

      sig do
        params(
          api_version: Whopsdk::InvoicePaidWebhookEvent::APIVersion::OrSymbol
        ).void
      end
      attr_writer :api_version

      # The timestamp in seconds since the Unix epoch that the webhook was sent at on
      # the server
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # A statement that defines an amount due by a customer.
      sig { returns(T.nilable(Whopsdk::Invoice)) }
      attr_reader :data

      sig { params(data: T.nilable(Whopsdk::Invoice::OrHash)).void }
      attr_writer :data

      # The webhook event type
      sig do
        returns(T.nilable(Whopsdk::InvoicePaidWebhookEvent::Type::TaggedSymbol))
      end
      attr_reader :type

      sig do
        params(type: Whopsdk::InvoicePaidWebhookEvent::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          id: String,
          api_version: Whopsdk::InvoicePaidWebhookEvent::APIVersion::OrSymbol,
          created_at: String,
          data: T.nilable(Whopsdk::Invoice::OrHash),
          type: Whopsdk::InvoicePaidWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id: nil,
        # The API version for this webhook
        api_version: nil,
        # The timestamp in seconds since the Unix epoch that the webhook was sent at on
        # the server
        created_at: nil,
        # A statement that defines an amount due by a customer.
        data: nil,
        # The webhook event type
        type: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version:
              Whopsdk::InvoicePaidWebhookEvent::APIVersion::TaggedSymbol,
            created_at: String,
            data: T.nilable(Whopsdk::Invoice),
            type: Whopsdk::InvoicePaidWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The API version for this webhook
      module APIVersion
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Whopsdk::InvoicePaidWebhookEvent::APIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 =
          T.let(:v1, Whopsdk::InvoicePaidWebhookEvent::APIVersion::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::InvoicePaidWebhookEvent::APIVersion::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The webhook event type
      module Type
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::InvoicePaidWebhookEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_PAID =
          T.let(
            :"invoice.paid",
            Whopsdk::InvoicePaidWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Whopsdk::InvoicePaidWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
