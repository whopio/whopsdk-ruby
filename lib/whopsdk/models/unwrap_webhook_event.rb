# frozen_string_literal: true

module Whopsdk
  module Models
    module UnwrapWebhookEvent
      extend Whopsdk::Internal::Type::Union

      variant -> { Whopsdk::InvoiceCreatedWebhookEvent }

      variant -> { Whopsdk::InvoicePaidWebhookEvent }

      variant -> { Whopsdk::InvoicePastDueWebhookEvent }

      variant -> { Whopsdk::InvoiceVoidedWebhookEvent }

      # @!method self.variants
      #   @return [Array(Whopsdk::Models::InvoiceCreatedWebhookEvent, Whopsdk::Models::InvoicePaidWebhookEvent, Whopsdk::Models::InvoicePastDueWebhookEvent, Whopsdk::Models::InvoiceVoidedWebhookEvent)]
    end
  end
end
