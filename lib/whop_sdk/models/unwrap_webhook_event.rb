# frozen_string_literal: true

module WhopSDK
  module Models
    module UnwrapWebhookEvent
      extend WhopSDK::Internal::Type::Union

      discriminator :type

      variant :"invoice.created", -> { WhopSDK::InvoiceCreatedWebhookEvent }

      variant :"invoice.marked_uncollectible", -> { WhopSDK::InvoiceMarkedUncollectibleWebhookEvent }

      variant :"invoice.paid", -> { WhopSDK::InvoicePaidWebhookEvent }

      variant :"invoice.past_due", -> { WhopSDK::InvoicePastDueWebhookEvent }

      variant :"invoice.voided", -> { WhopSDK::InvoiceVoidedWebhookEvent }

      variant :"membership.activated", -> { WhopSDK::MembershipActivatedWebhookEvent }

      variant :"membership.deactivated", -> { WhopSDK::MembershipDeactivatedWebhookEvent }

      variant :"membership.trial_ending_soon", -> { WhopSDK::MembershipTrialEndingSoonWebhookEvent }

      variant :"entry.created", -> { WhopSDK::EntryCreatedWebhookEvent }

      variant :"entry.approved", -> { WhopSDK::EntryApprovedWebhookEvent }

      variant :"entry.denied", -> { WhopSDK::EntryDeniedWebhookEvent }

      variant :"entry.deleted", -> { WhopSDK::EntryDeletedWebhookEvent }

      variant :"setup_intent.requires_action", -> { WhopSDK::SetupIntentRequiresActionWebhookEvent }

      variant :"setup_intent.succeeded", -> { WhopSDK::SetupIntentSucceededWebhookEvent }

      variant :"setup_intent.canceled", -> { WhopSDK::SetupIntentCanceledWebhookEvent }

      variant :"ledger_account.funds_available", -> { WhopSDK::LedgerAccountFundsAvailableWebhookEvent }

      variant :"withdrawal.created", -> { WhopSDK::WithdrawalCreatedWebhookEvent }

      variant :"withdrawal.updated", -> { WhopSDK::WithdrawalUpdatedWebhookEvent }

      variant :"course_lesson_interaction.completed",
              -> { WhopSDK::CourseLessonInteractionCompletedWebhookEvent }

      variant :"payout_method.created", -> { WhopSDK::PayoutMethodCreatedWebhookEvent }

      variant :"verification.succeeded", -> { WhopSDK::VerificationSucceededWebhookEvent }

      variant :"identity_profile.approved", -> { WhopSDK::IdentityProfileApprovedWebhookEvent }

      variant :"identity_profile.rejected", -> { WhopSDK::IdentityProfileRejectedWebhookEvent }

      variant :"identity_profile.needs_action", -> { WhopSDK::IdentityProfileNeedsActionWebhookEvent }

      variant :"identity_profile.updated", -> { WhopSDK::IdentityProfileUpdatedWebhookEvent }

      variant :"payout_account.status_updated", -> { WhopSDK::PayoutAccountStatusUpdatedWebhookEvent }

      variant :"resolution_center_case.created", -> { WhopSDK::ResolutionCenterCaseCreatedWebhookEvent }

      variant :"resolution_center_case.updated", -> { WhopSDK::ResolutionCenterCaseUpdatedWebhookEvent }

      variant :"resolution_center_case.decided", -> { WhopSDK::ResolutionCenterCaseDecidedWebhookEvent }

      variant :"payment.created", -> { WhopSDK::PaymentCreatedWebhookEvent }

      variant :"payment.succeeded", -> { WhopSDK::PaymentSucceededWebhookEvent }

      variant :"payment.failed", -> { WhopSDK::PaymentFailedWebhookEvent }

      variant :"payment.pending", -> { WhopSDK::PaymentPendingWebhookEvent }

      variant :"dispute.created", -> { WhopSDK::DisputeCreatedWebhookEvent }

      variant :"dispute.updated", -> { WhopSDK::DisputeUpdatedWebhookEvent }

      variant :"refund.created", -> { WhopSDK::RefundCreatedWebhookEvent }

      variant :"refund.updated", -> { WhopSDK::RefundUpdatedWebhookEvent }

      variant :"dispute_alert.created", -> { WhopSDK::DisputeAlertCreatedWebhookEvent }

      variant :"membership.cancel_at_period_end_changed",
              -> { WhopSDK::MembershipCancelAtPeriodEndChangedWebhookEvent }

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::InvoiceCreatedWebhookEvent, WhopSDK::Models::InvoiceMarkedUncollectibleWebhookEvent, WhopSDK::Models::InvoicePaidWebhookEvent, WhopSDK::Models::InvoicePastDueWebhookEvent, WhopSDK::Models::InvoiceVoidedWebhookEvent, WhopSDK::Models::MembershipActivatedWebhookEvent, WhopSDK::Models::MembershipDeactivatedWebhookEvent, WhopSDK::Models::MembershipTrialEndingSoonWebhookEvent, WhopSDK::Models::EntryCreatedWebhookEvent, WhopSDK::Models::EntryApprovedWebhookEvent, WhopSDK::Models::EntryDeniedWebhookEvent, WhopSDK::Models::EntryDeletedWebhookEvent, WhopSDK::Models::SetupIntentRequiresActionWebhookEvent, WhopSDK::Models::SetupIntentSucceededWebhookEvent, WhopSDK::Models::SetupIntentCanceledWebhookEvent, WhopSDK::Models::LedgerAccountFundsAvailableWebhookEvent, WhopSDK::Models::WithdrawalCreatedWebhookEvent, WhopSDK::Models::WithdrawalUpdatedWebhookEvent, WhopSDK::Models::CourseLessonInteractionCompletedWebhookEvent, WhopSDK::Models::PayoutMethodCreatedWebhookEvent, WhopSDK::Models::VerificationSucceededWebhookEvent, WhopSDK::Models::IdentityProfileApprovedWebhookEvent, WhopSDK::Models::IdentityProfileRejectedWebhookEvent, WhopSDK::Models::IdentityProfileNeedsActionWebhookEvent, WhopSDK::Models::IdentityProfileUpdatedWebhookEvent, WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseUpdatedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent, WhopSDK::Models::PaymentCreatedWebhookEvent, WhopSDK::Models::PaymentSucceededWebhookEvent, WhopSDK::Models::PaymentFailedWebhookEvent, WhopSDK::Models::PaymentPendingWebhookEvent, WhopSDK::Models::DisputeCreatedWebhookEvent, WhopSDK::Models::DisputeUpdatedWebhookEvent, WhopSDK::Models::RefundCreatedWebhookEvent, WhopSDK::Models::RefundUpdatedWebhookEvent, WhopSDK::Models::DisputeAlertCreatedWebhookEvent, WhopSDK::Models::MembershipCancelAtPeriodEndChangedWebhookEvent)]
    end
  end
end
