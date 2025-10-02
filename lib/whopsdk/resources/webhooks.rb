# frozen_string_literal: true

module Whopsdk
  module Resources
    class Webhooks
      # @param payload [String] The raw webhook payload as a string
      #
      # @return [Whopsdk::Models::InvoiceCreatedWebhookEvent, Whopsdk::Models::InvoicePaidWebhookEvent, Whopsdk::Models::InvoicePastDueWebhookEvent, Whopsdk::Models::InvoiceVoidedWebhookEvent]
      def unwrap(payload)
        parsed = JSON.parse(payload, symbolize_names: true)
        Whopsdk::Internal::Type::Converter.coerce(Whopsdk::Models::UnwrapWebhookEvent, parsed)
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
