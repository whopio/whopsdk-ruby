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
      INVOICE_MARKED_UNCOLLECTIBLE =
        T.let(
          :"invoice.marked_uncollectible",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      INVOICE_PAID = T.let(:"invoice.paid", WhopSDK::WebhookEvent::TaggedSymbol)
      INVOICE_PAST_DUE =
        T.let(:"invoice.past_due", WhopSDK::WebhookEvent::TaggedSymbol)
      INVOICE_VOIDED =
        T.let(:"invoice.voided", WhopSDK::WebhookEvent::TaggedSymbol)
      MEMBERSHIP_ACTIVATED =
        T.let(:"membership.activated", WhopSDK::WebhookEvent::TaggedSymbol)
      MEMBERSHIP_DEACTIVATED =
        T.let(:"membership.deactivated", WhopSDK::WebhookEvent::TaggedSymbol)
      MEMBERSHIP_TRIAL_ENDING_SOON =
        T.let(
          :"membership.trial_ending_soon",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      ENTRY_CREATED =
        T.let(:"entry.created", WhopSDK::WebhookEvent::TaggedSymbol)
      ENTRY_APPROVED =
        T.let(:"entry.approved", WhopSDK::WebhookEvent::TaggedSymbol)
      ENTRY_DENIED = T.let(:"entry.denied", WhopSDK::WebhookEvent::TaggedSymbol)
      ENTRY_DELETED =
        T.let(:"entry.deleted", WhopSDK::WebhookEvent::TaggedSymbol)
      EXPORT_COMPLETED =
        T.let(:"export.completed", WhopSDK::WebhookEvent::TaggedSymbol)
      EXPORT_FAILED =
        T.let(:"export.failed", WhopSDK::WebhookEvent::TaggedSymbol)
      SETUP_INTENT_REQUIRES_ACTION =
        T.let(
          :"setup_intent.requires_action",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      SETUP_INTENT_SUCCEEDED =
        T.let(:"setup_intent.succeeded", WhopSDK::WebhookEvent::TaggedSymbol)
      SETUP_INTENT_CANCELED =
        T.let(:"setup_intent.canceled", WhopSDK::WebhookEvent::TaggedSymbol)
      LEDGER_ACCOUNT_FUNDS_AVAILABLE =
        T.let(
          :"ledger_account.funds_available",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      SWAP_COMPLETED =
        T.let(:"swap.completed", WhopSDK::WebhookEvent::TaggedSymbol)
      DEPOSIT_SUCCEEDED =
        T.let(:"deposit.succeeded", WhopSDK::WebhookEvent::TaggedSymbol)
      TRANSFER_CREATED =
        T.let(:"transfer.created", WhopSDK::WebhookEvent::TaggedSymbol)
      TRANSFER_COMPLETED =
        T.let(:"transfer.completed", WhopSDK::WebhookEvent::TaggedSymbol)
      WITHDRAWAL_CREATED =
        T.let(:"withdrawal.created", WhopSDK::WebhookEvent::TaggedSymbol)
      WITHDRAWAL_UPDATED =
        T.let(:"withdrawal.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_TRANSACTION_CREATED =
        T.let(:"card_transaction.created", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_TRANSACTION_UPDATED =
        T.let(:"card_transaction.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_TRANSACTION_COMPLETED =
        T.let(
          :"card_transaction.completed",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      CARD_TRANSACTION_DECLINED =
        T.let(:"card_transaction.declined", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_TRANSACTION_REVERSED =
        T.let(:"card_transaction.reversed", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_CREATED = T.let(:"card.created", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_UPDATED = T.let(:"card.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_FROZEN = T.let(:"card.frozen", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_CANCELED =
        T.let(:"card.canceled", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_APPLICATION_CREATED =
        T.let(:"card_application.created", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_APPLICATION_UPDATED =
        T.let(:"card_application.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_APPLICATION_APPROVED =
        T.let(:"card_application.approved", WhopSDK::WebhookEvent::TaggedSymbol)
      CARD_APPLICATION_DENIED =
        T.let(:"card_application.denied", WhopSDK::WebhookEvent::TaggedSymbol)
      COURSE_LESSON_INTERACTION_COMPLETED =
        T.let(
          :"course_lesson_interaction.completed",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      PAYOUT_METHOD_CREATED =
        T.let(:"payout_method.created", WhopSDK::WebhookEvent::TaggedSymbol)
      VERIFICATION_SUCCEEDED =
        T.let(:"verification.succeeded", WhopSDK::WebhookEvent::TaggedSymbol)
      IDENTITY_PROFILE_APPROVED =
        T.let(:"identity_profile.approved", WhopSDK::WebhookEvent::TaggedSymbol)
      IDENTITY_PROFILE_REJECTED =
        T.let(:"identity_profile.rejected", WhopSDK::WebhookEvent::TaggedSymbol)
      IDENTITY_PROFILE_NEEDS_ACTION =
        T.let(
          :"identity_profile.needs_action",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      IDENTITY_PROFILE_UPDATED =
        T.let(:"identity_profile.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      PAYOUT_ACCOUNT_STATUS_UPDATED =
        T.let(
          :"payout_account.status_updated",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      RESOLUTION_CENTER_CASE_CREATED =
        T.let(
          :"resolution_center_case.created",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      RESOLUTION_CENTER_CASE_UPDATED =
        T.let(
          :"resolution_center_case.updated",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      RESOLUTION_CENTER_CASE_DECIDED =
        T.let(
          :"resolution_center_case.decided",
          WhopSDK::WebhookEvent::TaggedSymbol
        )
      PRODUCT_CREATED =
        T.let(:"product.created", WhopSDK::WebhookEvent::TaggedSymbol)
      PRODUCT_UPDATED =
        T.let(:"product.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      PRODUCT_DELETED =
        T.let(:"product.deleted", WhopSDK::WebhookEvent::TaggedSymbol)
      PRODUCT_PUBLISHED =
        T.let(:"product.published", WhopSDK::WebhookEvent::TaggedSymbol)
      PRODUCT_UNPUBLISHED =
        T.let(:"product.unpublished", WhopSDK::WebhookEvent::TaggedSymbol)
      PLAN_CREATED = T.let(:"plan.created", WhopSDK::WebhookEvent::TaggedSymbol)
      PLAN_UPDATED = T.let(:"plan.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      PLAN_DELETED = T.let(:"plan.deleted", WhopSDK::WebhookEvent::TaggedSymbol)
      SHIPMENT_CREATED =
        T.let(:"shipment.created", WhopSDK::WebhookEvent::TaggedSymbol)
      SHIPMENT_UPDATED =
        T.let(:"shipment.updated", WhopSDK::WebhookEvent::TaggedSymbol)
      MEMBER_CREATED =
        T.let(:"member.created", WhopSDK::WebhookEvent::TaggedSymbol)
      CHAT_MESSAGE_CREATED =
        T.let(:"chat.message.created", WhopSDK::WebhookEvent::TaggedSymbol)
      CHAT_REACTION_CREATED =
        T.let(:"chat.reaction.created", WhopSDK::WebhookEvent::TaggedSymbol)
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
