# typed: strong

module WhopSDK
  module Models
    module UnwrapWebhookEvent
      extend WhopSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            WhopSDK::InvoiceCreatedWebhookEvent,
            WhopSDK::InvoicePaidWebhookEvent,
            WhopSDK::InvoicePastDueWebhookEvent,
            WhopSDK::InvoiceVoidedWebhookEvent,
            WhopSDK::MembershipActivatedWebhookEvent,
            WhopSDK::MembershipDeactivatedWebhookEvent,
            WhopSDK::EntryCreatedWebhookEvent,
            WhopSDK::EntryApprovedWebhookEvent,
            WhopSDK::EntryDeniedWebhookEvent,
            WhopSDK::EntryDeletedWebhookEvent,
            WhopSDK::SetupIntentRequiresActionWebhookEvent,
            WhopSDK::SetupIntentSucceededWebhookEvent,
            WhopSDK::SetupIntentCanceledWebhookEvent,
            WhopSDK::WithdrawalCreatedWebhookEvent,
            WhopSDK::WithdrawalUpdatedWebhookEvent,
            WhopSDK::CourseLessonInteractionCompletedWebhookEvent,
            WhopSDK::PaymentSucceededWebhookEvent,
            WhopSDK::PaymentFailedWebhookEvent,
            WhopSDK::PaymentPendingWebhookEvent,
            WhopSDK::DisputeCreatedWebhookEvent,
            WhopSDK::DisputeUpdatedWebhookEvent,
            WhopSDK::RefundCreatedWebhookEvent,
            WhopSDK::RefundUpdatedWebhookEvent
          )
        end

      sig { override.returns(T::Array[WhopSDK::UnwrapWebhookEvent::Variants]) }
      def self.variants
      end
    end
  end
end
