# frozen_string_literal: true

module WhopSDK
  module Models
    module UnwrapWebhookEvent
      extend WhopSDK::Internal::Type::Union

      discriminator :type

      variant :"course_lesson_interaction.completed",
              -> { WhopSDK::CourseLessonInteractionCompletedWebhookEvent }

      variant :"dispute.created", -> { WhopSDK::DisputeCreatedWebhookEvent }

      variant :"dispute.updated", -> { WhopSDK::DisputeUpdatedWebhookEvent }

      variant :"dispute_alert.created", -> { WhopSDK::DisputeAlertCreatedWebhookEvent }

      variant :"entry.approved", -> { WhopSDK::EntryApprovedWebhookEvent }

      variant :"entry.created", -> { WhopSDK::EntryCreatedWebhookEvent }

      variant :"entry.deleted", -> { WhopSDK::EntryDeletedWebhookEvent }

      variant :"entry.denied", -> { WhopSDK::EntryDeniedWebhookEvent }

      variant :"identity_profile.approved", -> { WhopSDK::IdentityProfileApprovedWebhookEvent }

      variant :"identity_profile.needs_action", -> { WhopSDK::IdentityProfileNeedsActionWebhookEvent }

      variant :"identity_profile.rejected", -> { WhopSDK::IdentityProfileRejectedWebhookEvent }

      variant :"identity_profile.updated", -> { WhopSDK::IdentityProfileUpdatedWebhookEvent }

      variant :"invoice.created", -> { WhopSDK::InvoiceCreatedWebhookEvent }

      variant :"invoice.marked_uncollectible", -> { WhopSDK::InvoiceMarkedUncollectibleWebhookEvent }

      variant :"invoice.paid", -> { WhopSDK::InvoicePaidWebhookEvent }

      variant :"invoice.past_due", -> { WhopSDK::InvoicePastDueWebhookEvent }

      variant :"invoice.voided", -> { WhopSDK::InvoiceVoidedWebhookEvent }

      variant :"membership.activated", -> { WhopSDK::MembershipActivatedWebhookEvent }

      variant :"membership.cancel_at_period_end_changed",
              -> { WhopSDK::MembershipCancelAtPeriodEndChangedWebhookEvent }

      variant :"membership.deactivated", -> { WhopSDK::MembershipDeactivatedWebhookEvent }

      variant :"payment.created", -> { WhopSDK::PaymentCreatedWebhookEvent }

      variant :"payment.failed", -> { WhopSDK::PaymentFailedWebhookEvent }

      variant :"payment.pending", -> { WhopSDK::PaymentPendingWebhookEvent }

      variant :"payment.succeeded", -> { WhopSDK::PaymentSucceededWebhookEvent }

      variant :"payout_account.status_updated", -> { WhopSDK::PayoutAccountStatusUpdatedWebhookEvent }

      variant :"payout_method.created", -> { WhopSDK::PayoutMethodCreatedWebhookEvent }

      variant :"refund.created", -> { WhopSDK::RefundCreatedWebhookEvent }

      variant :"refund.updated", -> { WhopSDK::RefundUpdatedWebhookEvent }

      variant :"resolution_center_case.created", -> { WhopSDK::ResolutionCenterCaseCreatedWebhookEvent }

      variant :"resolution_center_case.decided", -> { WhopSDK::ResolutionCenterCaseDecidedWebhookEvent }

      variant :"resolution_center_case.updated", -> { WhopSDK::ResolutionCenterCaseUpdatedWebhookEvent }

      variant :"setup_intent.canceled", -> { WhopSDK::SetupIntentCanceledWebhookEvent }

      variant :"setup_intent.requires_action", -> { WhopSDK::SetupIntentRequiresActionWebhookEvent }

      variant :"setup_intent.succeeded", -> { WhopSDK::SetupIntentSucceededWebhookEvent }

      variant :"verification.succeeded", -> { WhopSDK::VerificationSucceededWebhookEvent }

      variant :"withdrawal.created", -> { WhopSDK::WithdrawalCreatedWebhookEvent }

      variant :"withdrawal.updated", -> { WhopSDK::WithdrawalUpdatedWebhookEvent }

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::CourseLessonInteractionCompletedWebhookEvent, WhopSDK::Models::DisputeCreatedWebhookEvent, WhopSDK::Models::DisputeUpdatedWebhookEvent, WhopSDK::Models::DisputeAlertCreatedWebhookEvent, WhopSDK::Models::EntryApprovedWebhookEvent, WhopSDK::Models::EntryCreatedWebhookEvent, WhopSDK::Models::EntryDeletedWebhookEvent, WhopSDK::Models::EntryDeniedWebhookEvent, WhopSDK::Models::IdentityProfileApprovedWebhookEvent, WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent, WhopSDK::Models::IdentityProfileRejectedWebhookEvent, WhopSDK::Models::IdentityProfileUpdatedWebhookEvent, WhopSDK::Models::InvoiceCreatedWebhookEvent, WhopSDK::Models::InvoiceMarkedUncollectibleWebhookEvent, WhopSDK::Models::InvoicePaidWebhookEvent, WhopSDK::Models::InvoicePastDueWebhookEvent, WhopSDK::Models::InvoiceVoidedWebhookEvent, WhopSDK::Models::MembershipActivatedWebhookEvent, WhopSDK::Models::MembershipCancelAtPeriodEndChangedWebhookEvent, WhopSDK::Models::MembershipDeactivatedWebhookEvent, WhopSDK::Models::PaymentCreatedWebhookEvent, WhopSDK::Models::PaymentFailedWebhookEvent, WhopSDK::Models::PaymentPendingWebhookEvent, WhopSDK::Models::PaymentSucceededWebhookEvent, WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent, WhopSDK::Models::PayoutMethodCreatedWebhookEvent, WhopSDK::Models::RefundCreatedWebhookEvent, WhopSDK::Models::RefundUpdatedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseUpdatedWebhookEvent, WhopSDK::Models::SetupIntentCanceledWebhookEvent, WhopSDK::Models::SetupIntentRequiresActionWebhookEvent, WhopSDK::Models::SetupIntentSucceededWebhookEvent, WhopSDK::Models::VerificationSucceededWebhookEvent, WhopSDK::Models::WithdrawalCreatedWebhookEvent, WhopSDK::Models::WithdrawalUpdatedWebhookEvent)]
    end
  end
end
