# typed: strong

module WhopSDK
  module Models
    module UnwrapWebhookEvent
      extend WhopSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            WhopSDK::AccountUpdatedWebhookEvent,
            WhopSDK::AdCampaignPaymentFailedWebhookEvent,
            WhopSDK::CardCanceledWebhookEvent,
            WhopSDK::CardCreatedWebhookEvent,
            WhopSDK::CardFrozenWebhookEvent,
            WhopSDK::CardUpdatedWebhookEvent,
            WhopSDK::CardApplicationApprovedWebhookEvent,
            WhopSDK::CardApplicationCreatedWebhookEvent,
            WhopSDK::CardApplicationDeniedWebhookEvent,
            WhopSDK::CardApplicationUpdatedWebhookEvent,
            WhopSDK::CardTransactionCompletedWebhookEvent,
            WhopSDK::CardTransactionCreatedWebhookEvent,
            WhopSDK::CardTransactionDeclinedWebhookEvent,
            WhopSDK::CardTransactionReversedWebhookEvent,
            WhopSDK::CardTransactionUpdatedWebhookEvent,
            WhopSDK::ChatMessageCreatedWebhookEvent,
            WhopSDK::ChatReactionCreatedWebhookEvent,
            WhopSDK::CourseLessonInteractionCompletedWebhookEvent,
            WhopSDK::DepositSucceededWebhookEvent,
            WhopSDK::DisputeCreatedWebhookEvent,
            WhopSDK::DisputeUpdatedWebhookEvent,
            WhopSDK::DisputeAlertCreatedWebhookEvent,
            WhopSDK::EntryApprovedWebhookEvent,
            WhopSDK::EntryCreatedWebhookEvent,
            WhopSDK::EntryDeletedWebhookEvent,
            WhopSDK::EntryDeniedWebhookEvent,
            WhopSDK::ExportCompletedWebhookEvent,
            WhopSDK::ExportFailedWebhookEvent,
            WhopSDK::IdentityProfileUpdatedWebhookEvent,
            WhopSDK::InvoiceCreatedWebhookEvent,
            WhopSDK::InvoiceMarkedUncollectibleWebhookEvent,
            WhopSDK::InvoicePaidWebhookEvent,
            WhopSDK::InvoicePastDueWebhookEvent,
            WhopSDK::InvoiceVoidedWebhookEvent,
            WhopSDK::LedgerAccountFundsAvailableWebhookEvent,
            WhopSDK::MemberCreatedWebhookEvent,
            WhopSDK::MembershipActivatedWebhookEvent,
            WhopSDK::MembershipCancelAtPeriodEndChangedWebhookEvent,
            WhopSDK::MembershipDeactivatedWebhookEvent,
            WhopSDK::MembershipTrialEndingSoonWebhookEvent,
            WhopSDK::PaymentAuthorizedWebhookEvent,
            WhopSDK::PaymentCanceledWebhookEvent,
            WhopSDK::PaymentCreatedWebhookEvent,
            WhopSDK::PaymentFailedWebhookEvent,
            WhopSDK::PaymentPendingWebhookEvent,
            WhopSDK::PaymentSucceededWebhookEvent,
            WhopSDK::PayoutCreatedWebhookEvent,
            WhopSDK::PayoutReversedWebhookEvent,
            WhopSDK::PayoutUpdatedWebhookEvent,
            WhopSDK::PayoutAccountStatusUpdatedWebhookEvent,
            WhopSDK::PayoutMethodCreatedWebhookEvent,
            WhopSDK::PlanCreatedWebhookEvent,
            WhopSDK::PlanDeletedWebhookEvent,
            WhopSDK::PlanUpdatedWebhookEvent,
            WhopSDK::ProductCreatedWebhookEvent,
            WhopSDK::ProductDeletedWebhookEvent,
            WhopSDK::ProductPublishedWebhookEvent,
            WhopSDK::ProductUnpublishedWebhookEvent,
            WhopSDK::ProductUpdatedWebhookEvent,
            WhopSDK::RefundCreatedWebhookEvent,
            WhopSDK::RefundUpdatedWebhookEvent,
            WhopSDK::ResolutionCenterCaseCreatedWebhookEvent,
            WhopSDK::ResolutionCenterCaseDecidedWebhookEvent,
            WhopSDK::ResolutionCenterCaseUpdatedWebhookEvent,
            WhopSDK::SetupIntentCanceledWebhookEvent,
            WhopSDK::SetupIntentRequiresActionWebhookEvent,
            WhopSDK::SetupIntentSucceededWebhookEvent,
            WhopSDK::ShipmentCreatedWebhookEvent,
            WhopSDK::ShipmentUpdatedWebhookEvent,
            WhopSDK::SwapCompletedWebhookEvent,
            WhopSDK::TransferCompletedWebhookEvent,
            WhopSDK::TransferCreatedWebhookEvent,
            WhopSDK::TransferFailedWebhookEvent,
            WhopSDK::VerificationSucceededWebhookEvent
          )
        end

      sig { override.returns(T::Array[WhopSDK::UnwrapWebhookEvent::Variants]) }
      def self.variants
      end
    end
  end
end
