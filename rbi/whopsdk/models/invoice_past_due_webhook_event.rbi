# typed: strong

module Whopsdk
  module Models
    class InvoicePastDueWebhookEvent < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Whopsdk::InvoicePastDueWebhookEvent, Whopsdk::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The API version for this webhook
      sig do
        returns(
          T.nilable(
            Whopsdk::InvoicePastDueWebhookEvent::APIVersion::TaggedSymbol
          )
        )
      end
      attr_reader :api_version

      sig do
        params(
          api_version: Whopsdk::InvoicePastDueWebhookEvent::APIVersion::OrSymbol
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
        returns(
          T.nilable(Whopsdk::InvoicePastDueWebhookEvent::Type::TaggedSymbol)
        )
      end
      attr_reader :type

      sig do
        params(type: Whopsdk::InvoicePastDueWebhookEvent::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          id: String,
          api_version:
            Whopsdk::InvoicePastDueWebhookEvent::APIVersion::OrSymbol,
          created_at: String,
          data: T.nilable(Whopsdk::Invoice::OrHash),
          type: Whopsdk::InvoicePastDueWebhookEvent::Type::OrSymbol
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
              Whopsdk::InvoicePastDueWebhookEvent::APIVersion::TaggedSymbol,
            created_at: String,
            data: T.nilable(Whopsdk::Invoice),
            type: Whopsdk::InvoicePastDueWebhookEvent::Type::TaggedSymbol
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
            T.all(Symbol, Whopsdk::InvoicePastDueWebhookEvent::APIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 =
          T.let(
            :v1,
            Whopsdk::InvoicePastDueWebhookEvent::APIVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::InvoicePastDueWebhookEvent::APIVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The webhook event type
      module Type
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Whopsdk::InvoicePastDueWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_PAST_DUE =
          T.let(
            :"invoice.past_due",
            Whopsdk::InvoicePastDueWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Whopsdk::InvoicePastDueWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
