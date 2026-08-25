# typed: strong

module WhopSDK
  module Models
    module UnwrapWebhookEvent
      extend WhopSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            WhopSDK::InvoiceCreatedWebhookEvent,
            WhopSDK::InvoiceMarkedUncollectibleWebhookEvent,
            WhopSDK::InvoicePaidWebhookEvent,
            WhopSDK::InvoicePastDueWebhookEvent,
            WhopSDK::InvoiceVoidedWebhookEvent,
            WhopSDK::MembershipActivatedWebhookEvent,
            WhopSDK::MembershipDeactivatedWebhookEvent,
            WhopSDK::MembershipTrialEndingSoonWebhookEvent,
            WhopSDK::EntryCreatedWebhookEvent,
            WhopSDK::EntryApprovedWebhookEvent,
            WhopSDK::EntryDeniedWebhookEvent,
            WhopSDK::EntryDeletedWebhookEvent,
            WhopSDK::SetupIntentRequiresActionWebhookEvent,
            WhopSDK::SetupIntentSucceededWebhookEvent,
            WhopSDK::SetupIntentCanceledWebhookEvent,
            WhopSDK::LedgerAccountFundsAvailableWebhookEvent,
            WhopSDK::CardTransactionCreatedWebhookEvent,
            WhopSDK::CardTransactionUpdatedWebhookEvent,
            WhopSDK::CardTransactionCompletedWebhookEvent,
            WhopSDK::CardTransactionDeclinedWebhookEvent,
            WhopSDK::CardTransactionReversedWebhookEvent,
            WhopSDK::CourseLessonInteractionCompletedWebhookEvent,
            WhopSDK::PayoutMethodCreatedWebhookEvent,
            WhopSDK::VerificationSucceededWebhookEvent,
            WhopSDK::IdentityProfileUpdatedWebhookEvent,
            WhopSDK::PayoutAccountStatusUpdatedWebhookEvent,
            WhopSDK::ResolutionCenterCaseCreatedWebhookEvent,
            WhopSDK::ResolutionCenterCaseUpdatedWebhookEvent,
            WhopSDK::ResolutionCenterCaseDecidedWebhookEvent,
            WhopSDK::ProductCreatedWebhookEvent,
            WhopSDK::ProductUpdatedWebhookEvent,
            WhopSDK::ProductDeletedWebhookEvent,
            WhopSDK::ProductPublishedWebhookEvent,
            WhopSDK::ProductUnpublishedWebhookEvent,
            WhopSDK::ShipmentCreatedWebhookEvent,
            WhopSDK::ShipmentUpdatedWebhookEvent,
            WhopSDK::MemberCreatedWebhookEvent,
            WhopSDK::ChatMessageCreatedWebhookEvent,
            WhopSDK::ChatReactionCreatedWebhookEvent,
            WhopSDK::PaymentCreatedWebhookEvent,
            WhopSDK::PaymentSucceededWebhookEvent,
            WhopSDK::PaymentFailedWebhookEvent,
            WhopSDK::PaymentPendingWebhookEvent,
            WhopSDK::DisputeCreatedWebhookEvent,
            WhopSDK::DisputeUpdatedWebhookEvent,
            WhopSDK::RefundCreatedWebhookEvent,
            WhopSDK::RefundUpdatedWebhookEvent,
            WhopSDK::DisputeAlertCreatedWebhookEvent,
            WhopSDK::MembershipCancelAtPeriodEndChangedWebhookEvent
          )
        end

      sig { override.returns(T::Array[WhopSDK::UnwrapWebhookEvent::Variants]) }
      def self.variants
      end
    end
  end
end
