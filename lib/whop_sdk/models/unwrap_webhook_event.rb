# frozen_string_literal: true

module WhopSDK
  module Models
    module UnwrapWebhookEvent
      extend WhopSDK::Internal::Type::Union

      discriminator :type

      variant :"invoice.created", -> { WhopSDK::InvoiceCreatedWebhookEvent }

      variant :"invoice.paid", -> { WhopSDK::InvoicePaidWebhookEvent }

      variant :"invoice.past_due", -> { WhopSDK::InvoicePastDueWebhookEvent }

      variant :"invoice.voided", -> { WhopSDK::InvoiceVoidedWebhookEvent }

      variant :"membership.activated", -> { WhopSDK::MembershipActivatedWebhookEvent }

      variant :"membership.deactivated", -> { WhopSDK::MembershipDeactivatedWebhookEvent }

      variant :"entry.created", -> { WhopSDK::EntryCreatedWebhookEvent }

      variant :"entry.approved", -> { WhopSDK::EntryApprovedWebhookEvent }

      variant :"entry.denied", -> { WhopSDK::EntryDeniedWebhookEvent }

      variant :"entry.deleted", -> { WhopSDK::EntryDeletedWebhookEvent }

      variant :"setup_intent.requires_action", -> { WhopSDK::SetupIntentRequiresActionWebhookEvent }

      variant :"setup_intent.succeeded", -> { WhopSDK::SetupIntentSucceededWebhookEvent }

      variant :"setup_intent.canceled", -> { WhopSDK::SetupIntentCanceledWebhookEvent }

      variant :"withdrawal.created", -> { WhopSDK::WithdrawalCreatedWebhookEvent }

      variant :"withdrawal.updated", -> { WhopSDK::WithdrawalUpdatedWebhookEvent }

      variant :"course_lesson_interaction.completed",
              -> { WhopSDK::CourseLessonInteractionCompletedWebhookEvent }

      variant :"payment.succeeded", -> { WhopSDK::PaymentSucceededWebhookEvent }

      variant :"payment.failed", -> { WhopSDK::PaymentFailedWebhookEvent }

      variant :"payment.pending", -> { WhopSDK::PaymentPendingWebhookEvent }

      variant :"dispute.created", -> { WhopSDK::DisputeCreatedWebhookEvent }

      variant :"dispute.updated", -> { WhopSDK::DisputeUpdatedWebhookEvent }

      variant :"refund.created", -> { WhopSDK::RefundCreatedWebhookEvent }

      variant :"refund.updated", -> { WhopSDK::RefundUpdatedWebhookEvent }

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::InvoiceCreatedWebhookEvent, WhopSDK::Models::InvoicePaidWebhookEvent, WhopSDK::Models::InvoicePastDueWebhookEvent, WhopSDK::Models::InvoiceVoidedWebhookEvent, WhopSDK::Models::MembershipActivatedWebhookEvent, WhopSDK::Models::MembershipDeactivatedWebhookEvent, WhopSDK::Models::EntryCreatedWebhookEvent, WhopSDK::Models::EntryApprovedWebhookEvent, WhopSDK::Models::EntryDeniedWebhookEvent, WhopSDK::Models::EntryDeletedWebhookEvent, WhopSDK::Models::SetupIntentRequiresActionWebhookEvent, WhopSDK::Models::SetupIntentSucceededWebhookEvent, WhopSDK::Models::SetupIntentCanceledWebhookEvent, WhopSDK::Models::WithdrawalCreatedWebhookEvent, WhopSDK::Models::WithdrawalUpdatedWebhookEvent, WhopSDK::Models::CourseLessonInteractionCompletedWebhookEvent, WhopSDK::Models::PaymentSucceededWebhookEvent, WhopSDK::Models::PaymentFailedWebhookEvent, WhopSDK::Models::PaymentPendingWebhookEvent, WhopSDK::Models::DisputeCreatedWebhookEvent, WhopSDK::Models::DisputeUpdatedWebhookEvent, WhopSDK::Models::RefundCreatedWebhookEvent, WhopSDK::Models::RefundUpdatedWebhookEvent)]
    end
  end
end
