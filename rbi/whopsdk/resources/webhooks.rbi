# typed: strong

module Whopsdk
  module Resources
    class Webhooks
      sig do
        params(payload: String).returns(
          T.any(
            Whopsdk::InvoiceCreatedWebhookEvent,
            Whopsdk::InvoicePaidWebhookEvent,
            Whopsdk::InvoicePastDueWebhookEvent,
            Whopsdk::InvoiceVoidedWebhookEvent
          )
        )
      end
      def unwrap(
        # The raw webhook payload as a string
        payload
      )
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
