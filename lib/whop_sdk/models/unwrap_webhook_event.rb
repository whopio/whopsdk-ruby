# frozen_string_literal: true

module WhopSDK
  module Models
    module UnwrapWebhookEvent
      extend WhopSDK::Internal::Type::Union

      variant -> { WhopSDK::InvoiceCreatedWebhookEvent }

      variant -> { WhopSDK::InvoicePaidWebhookEvent }

      variant -> { WhopSDK::InvoicePastDueWebhookEvent }

      variant -> { WhopSDK::InvoiceVoidedWebhookEvent }

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::InvoiceCreatedWebhookEvent, WhopSDK::Models::InvoicePaidWebhookEvent, WhopSDK::Models::InvoicePastDueWebhookEvent, WhopSDK::Models::InvoiceVoidedWebhookEvent)]
    end
  end
end
