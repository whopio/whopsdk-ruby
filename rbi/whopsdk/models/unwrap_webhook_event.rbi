# typed: strong

module Whopsdk
  module Models
    module UnwrapWebhookEvent
      extend Whopsdk::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Whopsdk::InvoiceCreatedWebhookEvent,
            Whopsdk::InvoicePaidWebhookEvent,
            Whopsdk::InvoicePastDueWebhookEvent,
            Whopsdk::InvoiceVoidedWebhookEvent
          )
        end

      sig { override.returns(T::Array[Whopsdk::UnwrapWebhookEvent::Variants]) }
      def self.variants
      end
    end
  end
end
