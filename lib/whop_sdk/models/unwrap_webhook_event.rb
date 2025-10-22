# frozen_string_literal: true

module WhopSDK
  module Models
    module UnwrapWebhookEvent
      extend WhopSDK::Internal::Type::Union

      variant -> { WhopSDK::InvoiceCreatedWebhookEvent }

      variant -> { WhopSDK::InvoicePaidWebhookEvent }

      variant -> { WhopSDK::InvoicePastDueWebhookEvent }

      variant -> { WhopSDK::InvoiceVoidedWebhookEvent }

      variant -> { WhopSDK::MembershipActivatedWebhookEvent }

      variant -> { WhopSDK::MembershipDeactivatedWebhookEvent }

      variant -> { WhopSDK::PaymentSucceededWebhookEvent }

      variant -> { WhopSDK::PaymentFailedWebhookEvent }

      variant -> { WhopSDK::PaymentPendingWebhookEvent }

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::InvoiceCreatedWebhookEvent, WhopSDK::Models::InvoicePaidWebhookEvent, WhopSDK::Models::InvoicePastDueWebhookEvent, WhopSDK::Models::InvoiceVoidedWebhookEvent, WhopSDK::Models::MembershipActivatedWebhookEvent, WhopSDK::Models::MembershipDeactivatedWebhookEvent, WhopSDK::Models::PaymentSucceededWebhookEvent, WhopSDK::Models::PaymentFailedWebhookEvent, WhopSDK::Models::PaymentPendingWebhookEvent)]
    end
  end
end
