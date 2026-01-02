# typed: strong

module WhopSDK
  module Resources
    class Webhooks
      sig do
        params(payload: String).returns(
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
            WhopSDK::PayoutMethodCreatedWebhookEvent,
            WhopSDK::PaymentCreatedWebhookEvent,
            WhopSDK::PaymentSucceededWebhookEvent,
            WhopSDK::PaymentFailedWebhookEvent,
            WhopSDK::PaymentPendingWebhookEvent,
            WhopSDK::DisputeCreatedWebhookEvent,
            WhopSDK::DisputeUpdatedWebhookEvent,
            WhopSDK::RefundCreatedWebhookEvent,
            WhopSDK::RefundUpdatedWebhookEvent
          )
        )
      end
      def unwrap(
        # The raw webhook payload as a string
        payload
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
