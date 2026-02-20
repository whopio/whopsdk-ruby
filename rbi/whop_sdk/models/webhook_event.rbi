# typed: strong

module WhopSDK
  module Models
    # The different event types available
    module WebhookEvent
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::WebhookEvent) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INVOICE_CREATED =
        T.let(:"invoice.created", WhopSDK::WebhookEvent::TaggedSymbol)
      INVOICE_PAID = T.let(:"invoice.paid", WhopSDK::WebhookEvent::TaggedSymbol)
      INVOICE_PAST_DUE =
        T.let(:"invoice.past_due", WhopSDK::WebhookEvent::TaggedSymbol)
      INVOICE_VOIDED =
        T.let(:"invoice.voided", WhopSDK::WebhookEvent::TaggedSymbol)
      MEMBERSHIP_ACTIVATED =
        T.let(:"membership.activated", WhopSDK::WebhookEvent::TaggedSymbol)
      MEMBERSHIP_DEACTIVATED =
        T.let(:"membership.deactivated", WhopSDK::WebhookEvent::TaggedSymbol)
      ENTRY_CREATED =
        T.let(:"entry.created", WhopSDK::WebhookEvent::TaggedSymbol)
      ENTRY_APPROVED =
        T.let(:"entry.approved", WhopSDK::WebhookEvent::TaggedSymbol)
      ENTRY_DENIED = T.let(:"entry.denied", WhopSDK::WebhookEvent::TaggedSymbol)
      ENTRY_DELETED =
        T.let(:"entry.deleted", WhopSDK::WebhookEvent::TaggedSymbol)
      SETUP_INTENT_REQUIRES_ACTION =
        T.let(
          :"setup_intent.requires_action",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      SETUP_INTENT_SUCCEEDED =
        T.let(:"setup_intent.succeeded", WhopSDK::WebhookEvent::TaggedSymbol)
      SETUP_INTENT_CANCELED =
        T.let(:"setup_intent.canceled", WhopSDK::WebhookEvent::TaggedSymbol)
      WITHDRAWAL_CREATED =
        T.let(:"withdrawal.created", WhopSDK::WebhookEvent::TaggedSymbol)
      WITHDRAWAL_UPDATED =
        T.let(:"withdrawal.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      COURSE_LESSON_INTERACTION_COMPLETED =
        T.let(
          :"course_lesson_interaction.completed",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      PAYOUT_METHOD_CREATED =
        T.let(:"payout_method.created", WhopSDK::WebhookEvent::TaggedSymbol)
      VERIFICATION_SUCCEEDED =
        T.let(:"verification.succeeded", WhopSDK::WebhookEvent::TaggedSymbol)
      PAYMENT_CREATED =
        T.let(:"payment.created", WhopSDK::WebhookEvent::TaggedSymbol)
      PAYMENT_SUCCEEDED =
        T.let(:"payment.succeeded", WhopSDK::WebhookEvent::TaggedSymbol)
      PAYMENT_FAILED =
        T.let(:"payment.failed", WhopSDK::WebhookEvent::TaggedSymbol)
      PAYMENT_PENDING =
        T.let(:"payment.pending", WhopSDK::WebhookEvent::TaggedSymbol)
      DISPUTE_CREATED =
        T.let(:"dispute.created", WhopSDK::WebhookEvent::TaggedSymbol)
      DISPUTE_UPDATED =
        T.let(:"dispute.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      REFUND_CREATED =
        T.let(:"refund.created", WhopSDK::WebhookEvent::TaggedSymbol)
      REFUND_UPDATED =
        T.let(:"refund.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      DISPUTE_ALERT_CREATED =
        T.let(:"dispute_alert.created", WhopSDK::WebhookEvent::TaggedSymbol)
      MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
        T.let(
          :"membership.cancel_at_period_end_changed",
          WhopSDK::WebhookEvent::TaggedSymbol
        )

      sig { override.returns(T::Array[WhopSDK::WebhookEvent::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
