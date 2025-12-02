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

      variant -> { WhopSDK::EntryCreatedWebhookEvent }

      variant -> { WhopSDK::EntryApprovedWebhookEvent }

      variant -> { WhopSDK::EntryDeniedWebhookEvent }

      variant -> { WhopSDK::EntryDeletedWebhookEvent }

      variant -> { WhopSDK::SetupIntentRequiresActionWebhookEvent }

      variant -> { WhopSDK::SetupIntentSucceededWebhookEvent }

      variant -> { WhopSDK::SetupIntentCanceledWebhookEvent }

      variant -> { WhopSDK::CourseLessonInteractionCompletedWebhookEvent }

      variant -> { WhopSDK::PaymentSucceededWebhookEvent }

      variant -> { WhopSDK::PaymentFailedWebhookEvent }

      variant -> { WhopSDK::PaymentPendingWebhookEvent }

      variant -> { WhopSDK::DisputeCreatedWebhookEvent }

      variant -> { WhopSDK::DisputeUpdatedWebhookEvent }

      variant -> { WhopSDK::RefundCreatedWebhookEvent }

      variant -> { WhopSDK::RefundUpdatedWebhookEvent }

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::InvoiceCreatedWebhookEvent, WhopSDK::Models::InvoicePaidWebhookEvent, WhopSDK::Models::InvoicePastDueWebhookEvent, WhopSDK::Models::InvoiceVoidedWebhookEvent, WhopSDK::Models::MembershipActivatedWebhookEvent, WhopSDK::Models::MembershipDeactivatedWebhookEvent, WhopSDK::Models::EntryCreatedWebhookEvent, WhopSDK::Models::EntryApprovedWebhookEvent, WhopSDK::Models::EntryDeniedWebhookEvent, WhopSDK::Models::EntryDeletedWebhookEvent, WhopSDK::Models::SetupIntentRequiresActionWebhookEvent, WhopSDK::Models::SetupIntentSucceededWebhookEvent, WhopSDK::Models::SetupIntentCanceledWebhookEvent, WhopSDK::Models::CourseLessonInteractionCompletedWebhookEvent, WhopSDK::Models::PaymentSucceededWebhookEvent, WhopSDK::Models::PaymentFailedWebhookEvent, WhopSDK::Models::PaymentPendingWebhookEvent, WhopSDK::Models::DisputeCreatedWebhookEvent, WhopSDK::Models::DisputeUpdatedWebhookEvent, WhopSDK::Models::RefundCreatedWebhookEvent, WhopSDK::Models::RefundUpdatedWebhookEvent)]
    end
  end
end
