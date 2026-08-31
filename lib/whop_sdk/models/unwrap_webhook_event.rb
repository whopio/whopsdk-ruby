# frozen_string_literal: true

module WhopSDK
  module Models
    module UnwrapWebhookEvent
      extend WhopSDK::Internal::Type::Union

      discriminator :type

      variant :"account.updated", -> { WhopSDK::AccountUpdatedWebhookEvent }

      variant :"ad_campaign.payment_failed", -> { WhopSDK::AdCampaignPaymentFailedWebhookEvent }

      variant :"card.canceled", -> { WhopSDK::CardCanceledWebhookEvent }

      variant :"card.created", -> { WhopSDK::CardCreatedWebhookEvent }

      variant :"card.frozen", -> { WhopSDK::CardFrozenWebhookEvent }

      variant :"card.updated", -> { WhopSDK::CardUpdatedWebhookEvent }

      variant :"card_application.approved", -> { WhopSDK::CardApplicationApprovedWebhookEvent }

      variant :"card_application.created", -> { WhopSDK::CardApplicationCreatedWebhookEvent }

      variant :"card_application.denied", -> { WhopSDK::CardApplicationDeniedWebhookEvent }

      variant :"card_application.updated", -> { WhopSDK::CardApplicationUpdatedWebhookEvent }

      variant :"card_transaction.completed", -> { WhopSDK::CardTransactionCompletedWebhookEvent }

      variant :"card_transaction.created", -> { WhopSDK::CardTransactionCreatedWebhookEvent }

      variant :"card_transaction.declined", -> { WhopSDK::CardTransactionDeclinedWebhookEvent }

      variant :"card_transaction.reversed", -> { WhopSDK::CardTransactionReversedWebhookEvent }

      variant :"card_transaction.updated", -> { WhopSDK::CardTransactionUpdatedWebhookEvent }

      variant :"chat.message.created", -> { WhopSDK::ChatMessageCreatedWebhookEvent }

      variant :"chat.reaction.created", -> { WhopSDK::ChatReactionCreatedWebhookEvent }

      variant :"course_lesson_interaction.completed",
              -> { WhopSDK::CourseLessonInteractionCompletedWebhookEvent }

      variant :"deposit.succeeded", -> { WhopSDK::DepositSucceededWebhookEvent }

      variant :"dispute.created", -> { WhopSDK::DisputeCreatedWebhookEvent }

      variant :"dispute.updated", -> { WhopSDK::DisputeUpdatedWebhookEvent }

      variant :"dispute_alert.created", -> { WhopSDK::DisputeAlertCreatedWebhookEvent }

      variant :"entry.approved", -> { WhopSDK::EntryApprovedWebhookEvent }

      variant :"entry.created", -> { WhopSDK::EntryCreatedWebhookEvent }

      variant :"entry.deleted", -> { WhopSDK::EntryDeletedWebhookEvent }

      variant :"entry.denied", -> { WhopSDK::EntryDeniedWebhookEvent }

      variant :"export.completed", -> { WhopSDK::ExportCompletedWebhookEvent }

      variant :"export.failed", -> { WhopSDK::ExportFailedWebhookEvent }

      variant :"identity_profile.updated", -> { WhopSDK::IdentityProfileUpdatedWebhookEvent }

      variant :"invoice.created", -> { WhopSDK::InvoiceCreatedWebhookEvent }

      variant :"invoice.marked_uncollectible", -> { WhopSDK::InvoiceMarkedUncollectibleWebhookEvent }

      variant :"invoice.paid", -> { WhopSDK::InvoicePaidWebhookEvent }

      variant :"invoice.past_due", -> { WhopSDK::InvoicePastDueWebhookEvent }

      variant :"invoice.voided", -> { WhopSDK::InvoiceVoidedWebhookEvent }

      variant :"ledger_account.funds_available", -> { WhopSDK::LedgerAccountFundsAvailableWebhookEvent }

      variant :"member.created", -> { WhopSDK::MemberCreatedWebhookEvent }

      variant :"membership.activated", -> { WhopSDK::MembershipActivatedWebhookEvent }

      variant :"membership.cancel_at_period_end_changed",
              -> { WhopSDK::MembershipCancelAtPeriodEndChangedWebhookEvent }

      variant :"membership.deactivated", -> { WhopSDK::MembershipDeactivatedWebhookEvent }

      variant :"membership.trial_ending_soon", -> { WhopSDK::MembershipTrialEndingSoonWebhookEvent }

      variant :"payment.authorized", -> { WhopSDK::PaymentAuthorizedWebhookEvent }

      variant :"payment.canceled", -> { WhopSDK::PaymentCanceledWebhookEvent }

      variant :"payment.created", -> { WhopSDK::PaymentCreatedWebhookEvent }

      variant :"payment.failed", -> { WhopSDK::PaymentFailedWebhookEvent }

      variant :"payment.pending", -> { WhopSDK::PaymentPendingWebhookEvent }

      variant :"payment.succeeded", -> { WhopSDK::PaymentSucceededWebhookEvent }

      variant :"payout.created", -> { WhopSDK::PayoutCreatedWebhookEvent }

      variant :"payout.reversed", -> { WhopSDK::PayoutReversedWebhookEvent }

      variant :"payout.updated", -> { WhopSDK::PayoutUpdatedWebhookEvent }

      variant :"payout_account.status_updated", -> { WhopSDK::PayoutAccountStatusUpdatedWebhookEvent }

      variant :"payout_method.created", -> { WhopSDK::PayoutMethodCreatedWebhookEvent }

      variant :"plan.created", -> { WhopSDK::PlanCreatedWebhookEvent }

      variant :"plan.deleted", -> { WhopSDK::PlanDeletedWebhookEvent }

      variant :"plan.updated", -> { WhopSDK::PlanUpdatedWebhookEvent }

      variant :"product.created", -> { WhopSDK::ProductCreatedWebhookEvent }

      variant :"product.deleted", -> { WhopSDK::ProductDeletedWebhookEvent }

      variant :"product.published", -> { WhopSDK::ProductPublishedWebhookEvent }

      variant :"product.unpublished", -> { WhopSDK::ProductUnpublishedWebhookEvent }

      variant :"product.updated", -> { WhopSDK::ProductUpdatedWebhookEvent }

      variant :"refund.created", -> { WhopSDK::RefundCreatedWebhookEvent }

      variant :"refund.updated", -> { WhopSDK::RefundUpdatedWebhookEvent }

      variant :"resolution_center_case.created", -> { WhopSDK::ResolutionCenterCaseCreatedWebhookEvent }

      variant :"resolution_center_case.decided", -> { WhopSDK::ResolutionCenterCaseDecidedWebhookEvent }

      variant :"resolution_center_case.updated", -> { WhopSDK::ResolutionCenterCaseUpdatedWebhookEvent }

      variant :"setup_intent.canceled", -> { WhopSDK::SetupIntentCanceledWebhookEvent }

      variant :"setup_intent.requires_action", -> { WhopSDK::SetupIntentRequiresActionWebhookEvent }

      variant :"setup_intent.succeeded", -> { WhopSDK::SetupIntentSucceededWebhookEvent }

      variant :"shipment.created", -> { WhopSDK::ShipmentCreatedWebhookEvent }

      variant :"shipment.updated", -> { WhopSDK::ShipmentUpdatedWebhookEvent }

      variant :"swap.completed", -> { WhopSDK::SwapCompletedWebhookEvent }

      variant :"transfer.completed", -> { WhopSDK::TransferCompletedWebhookEvent }

      variant :"transfer.created", -> { WhopSDK::TransferCreatedWebhookEvent }

      variant :"transfer.failed", -> { WhopSDK::TransferFailedWebhookEvent }

      variant :"verification.succeeded", -> { WhopSDK::VerificationSucceededWebhookEvent }

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::AccountUpdatedWebhookEvent, WhopSDK::Models::AdCampaignPaymentFailedWebhookEvent, WhopSDK::Models::CardCanceledWebhookEvent, WhopSDK::Models::CardCreatedWebhookEvent, WhopSDK::Models::CardFrozenWebhookEvent, WhopSDK::Models::CardUpdatedWebhookEvent, WhopSDK::Models::CardApplicationApprovedWebhookEvent, WhopSDK::Models::CardApplicationCreatedWebhookEvent, WhopSDK::Models::CardApplicationDeniedWebhookEvent, WhopSDK::Models::CardApplicationUpdatedWebhookEvent, WhopSDK::Models::CardTransactionCompletedWebhookEvent, WhopSDK::Models::CardTransactionCreatedWebhookEvent, WhopSDK::Models::CardTransactionDeclinedWebhookEvent, WhopSDK::Models::CardTransactionReversedWebhookEvent, WhopSDK::Models::CardTransactionUpdatedWebhookEvent, WhopSDK::Models::ChatMessageCreatedWebhookEvent, WhopSDK::Models::ChatReactionCreatedWebhookEvent, WhopSDK::Models::CourseLessonInteractionCompletedWebhookEvent, WhopSDK::Models::DepositSucceededWebhookEvent, WhopSDK::Models::DisputeCreatedWebhookEvent, WhopSDK::Models::DisputeUpdatedWebhookEvent, WhopSDK::Models::DisputeAlertCreatedWebhookEvent, WhopSDK::Models::EntryApprovedWebhookEvent, WhopSDK::Models::EntryCreatedWebhookEvent, WhopSDK::Models::EntryDeletedWebhookEvent, WhopSDK::Models::EntryDeniedWebhookEvent, WhopSDK::Models::ExportCompletedWebhookEvent, WhopSDK::Models::ExportFailedWebhookEvent, WhopSDK::Models::IdentityProfileUpdatedWebhookEvent, WhopSDK::Models::InvoiceCreatedWebhookEvent, WhopSDK::Models::InvoiceMarkedUncollectibleWebhookEvent, WhopSDK::Models::InvoicePaidWebhookEvent, WhopSDK::Models::InvoicePastDueWebhookEvent, WhopSDK::Models::InvoiceVoidedWebhookEvent, WhopSDK::Models::LedgerAccountFundsAvailableWebhookEvent, WhopSDK::Models::MemberCreatedWebhookEvent, WhopSDK::Models::MembershipActivatedWebhookEvent, WhopSDK::Models::MembershipCancelAtPeriodEndChangedWebhookEvent, WhopSDK::Models::MembershipDeactivatedWebhookEvent, WhopSDK::Models::MembershipTrialEndingSoonWebhookEvent, WhopSDK::Models::PaymentAuthorizedWebhookEvent, WhopSDK::Models::PaymentCanceledWebhookEvent, WhopSDK::Models::PaymentCreatedWebhookEvent, WhopSDK::Models::PaymentFailedWebhookEvent, WhopSDK::Models::PaymentPendingWebhookEvent, WhopSDK::Models::PaymentSucceededWebhookEvent, WhopSDK::Models::PayoutCreatedWebhookEvent, WhopSDK::Models::PayoutReversedWebhookEvent, WhopSDK::Models::PayoutUpdatedWebhookEvent, WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent, WhopSDK::Models::PayoutMethodCreatedWebhookEvent, WhopSDK::Models::PlanCreatedWebhookEvent, WhopSDK::Models::PlanDeletedWebhookEvent, WhopSDK::Models::PlanUpdatedWebhookEvent, WhopSDK::Models::ProductCreatedWebhookEvent, WhopSDK::Models::ProductDeletedWebhookEvent, WhopSDK::Models::ProductPublishedWebhookEvent, WhopSDK::Models::ProductUnpublishedWebhookEvent, WhopSDK::Models::ProductUpdatedWebhookEvent, WhopSDK::Models::RefundCreatedWebhookEvent, WhopSDK::Models::RefundUpdatedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseUpdatedWebhookEvent, WhopSDK::Models::SetupIntentCanceledWebhookEvent, WhopSDK::Models::SetupIntentRequiresActionWebhookEvent, WhopSDK::Models::SetupIntentSucceededWebhookEvent, WhopSDK::Models::ShipmentCreatedWebhookEvent, WhopSDK::Models::ShipmentUpdatedWebhookEvent, WhopSDK::Models::SwapCompletedWebhookEvent, WhopSDK::Models::TransferCompletedWebhookEvent, WhopSDK::Models::TransferCreatedWebhookEvent, WhopSDK::Models::TransferFailedWebhookEvent, WhopSDK::Models::VerificationSucceededWebhookEvent)]
    end
  end
end
