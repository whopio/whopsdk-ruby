# typed: strong

module WhopSDK
  module Models
    module UnwrapWebhookEvent
      extend WhopSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            WhopSDK::CourseLessonInteractionCompletedWebhookEvent,
            WhopSDK::DisputeCreatedWebhookEvent,
            WhopSDK::DisputeUpdatedWebhookEvent,
            WhopSDK::DisputeAlertCreatedWebhookEvent,
            WhopSDK::EntryApprovedWebhookEvent,
            WhopSDK::EntryCreatedWebhookEvent,
            WhopSDK::EntryDeletedWebhookEvent,
            WhopSDK::EntryDeniedWebhookEvent,
            WhopSDK::IdentityProfileApprovedWebhookEvent,
            WhopSDK::IdentityProfileNeedsActionWebhookEvent,
            WhopSDK::IdentityProfileRejectedWebhookEvent,
            WhopSDK::IdentityProfileUpdatedWebhookEvent,
            WhopSDK::InvoiceCreatedWebhookEvent,
            WhopSDK::InvoiceMarkedUncollectibleWebhookEvent,
            WhopSDK::InvoicePaidWebhookEvent,
            WhopSDK::InvoicePastDueWebhookEvent,
            WhopSDK::InvoiceVoidedWebhookEvent,
            WhopSDK::MembershipActivatedWebhookEvent,
            WhopSDK::MembershipCancelAtPeriodEndChangedWebhookEvent,
            WhopSDK::MembershipDeactivatedWebhookEvent,
            WhopSDK::PaymentCreatedWebhookEvent,
            WhopSDK::PaymentFailedWebhookEvent,
            WhopSDK::PaymentPendingWebhookEvent,
            WhopSDK::PaymentSucceededWebhookEvent,
            WhopSDK::PayoutAccountStatusUpdatedWebhookEvent,
            WhopSDK::PayoutMethodCreatedWebhookEvent,
            WhopSDK::RefundCreatedWebhookEvent,
            WhopSDK::RefundUpdatedWebhookEvent,
            WhopSDK::ResolutionCenterCaseCreatedWebhookEvent,
            WhopSDK::ResolutionCenterCaseDecidedWebhookEvent,
            WhopSDK::ResolutionCenterCaseUpdatedWebhookEvent,
            WhopSDK::SetupIntentCanceledWebhookEvent,
            WhopSDK::SetupIntentRequiresActionWebhookEvent,
            WhopSDK::SetupIntentSucceededWebhookEvent,
            WhopSDK::VerificationRfiCreatedWebhookEvent,
            WhopSDK::VerificationSucceededWebhookEvent,
            WhopSDK::WithdrawalCreatedWebhookEvent,
            WhopSDK::WithdrawalUpdatedWebhookEvent
          )
        end

      sig { override.returns(T::Array[WhopSDK::UnwrapWebhookEvent::Variants]) }
      def self.variants
      end
    end
  end
end
