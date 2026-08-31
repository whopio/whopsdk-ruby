# typed: strong

module WhopSDK
  module Models
    class WebhookUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WebhookUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The dated API version (Api-Version-Date) to pin this webhook's payloads to. Only
      # valid for `v1` webhooks. Omit to leave the current pin unchanged, or pass `null`
      # to unpin and track the current payload shape.
      sig { returns(T.nilable(String)) }
      attr_accessor :body_api_version_date

      # Whether or not to send events for child resources.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :child_resource_events

      sig { params(child_resource_events: T::Boolean).void }
      attr_writer :child_resource_events

      # Whether or not the webhook is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled

      sig { params(enabled: T::Boolean).void }
      attr_writer :enabled

      # The events to send the webhook for, in dot form (for example
      # `payment.succeeded`).
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::WebhookUpdateParams::Event::OrSymbol])
        )
      end
      attr_reader :events

      sig do
        params(
          events: T::Array[WhopSDK::WebhookUpdateParams::Event::OrSymbol]
        ).void
      end
      attr_writer :events

      # The URL to send the webhook to.
      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      sig { returns(T.nilable(String)) }
      attr_reader :header_api_version_date

      sig { params(header_api_version_date: String).void }
      attr_writer :header_api_version_date

      sig do
        params(
          id: String,
          body_api_version_date: T.nilable(String),
          child_resource_events: T::Boolean,
          enabled: T::Boolean,
          events: T::Array[WhopSDK::WebhookUpdateParams::Event::OrSymbol],
          url: String,
          header_api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The dated API version (Api-Version-Date) to pin this webhook's payloads to. Only
        # valid for `v1` webhooks. Omit to leave the current pin unchanged, or pass `null`
        # to unpin and track the current payload shape.
        body_api_version_date: nil,
        # Whether or not to send events for child resources.
        child_resource_events: nil,
        # Whether or not the webhook is enabled.
        enabled: nil,
        # The events to send the webhook for, in dot form (for example
        # `payment.succeeded`).
        events: nil,
        # The URL to send the webhook to.
        url: nil,
        header_api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            body_api_version_date: T.nilable(String),
            child_resource_events: T::Boolean,
            enabled: T::Boolean,
            events: T::Array[WhopSDK::WebhookUpdateParams::Event::OrSymbol],
            url: String,
            header_api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Event
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::WebhookUpdateParams::Event) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_UPDATED =
          T.let(
            :"account.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        INVOICE_CREATED =
          T.let(
            :"invoice.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        INVOICE_MARKED_UNCOLLECTIBLE =
          T.let(
            :"invoice.marked_uncollectible",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        INVOICE_PAID =
          T.let(
            :"invoice.paid",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        INVOICE_PAST_DUE =
          T.let(
            :"invoice.past_due",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        INVOICE_VOIDED =
          T.let(
            :"invoice.voided",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_ACTIVATED =
          T.let(
            :"membership.activated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_DEACTIVATED =
          T.let(
            :"membership.deactivated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_TRIAL_ENDING_SOON =
          T.let(
            :"membership.trial_ending_soon",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        ENTRY_CREATED =
          T.let(
            :"entry.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        ENTRY_APPROVED =
          T.let(
            :"entry.approved",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        ENTRY_DENIED =
          T.let(
            :"entry.denied",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        ENTRY_DELETED =
          T.let(
            :"entry.deleted",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        EXPORT_COMPLETED =
          T.let(
            :"export.completed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        EXPORT_FAILED =
          T.let(
            :"export.failed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_REQUIRES_ACTION =
          T.let(
            :"setup_intent.requires_action",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_SUCCEEDED =
          T.let(
            :"setup_intent.succeeded",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_CANCELED =
          T.let(
            :"setup_intent.canceled",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        LEDGER_ACCOUNT_FUNDS_AVAILABLE =
          T.let(
            :"ledger_account.funds_available",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        SWAP_COMPLETED =
          T.let(
            :"swap.completed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        DEPOSIT_SUCCEEDED =
          T.let(
            :"deposit.succeeded",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        TRANSFER_CREATED =
          T.let(
            :"transfer.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        TRANSFER_COMPLETED =
          T.let(
            :"transfer.completed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        TRANSFER_FAILED =
          T.let(
            :"transfer.failed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYOUT_CREATED =
          T.let(
            :"payout.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYOUT_UPDATED =
          T.let(
            :"payout.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYOUT_REVERSED =
          T.let(
            :"payout.reversed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_TRANSACTION_CREATED =
          T.let(
            :"card_transaction.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_TRANSACTION_UPDATED =
          T.let(
            :"card_transaction.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_TRANSACTION_COMPLETED =
          T.let(
            :"card_transaction.completed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_TRANSACTION_DECLINED =
          T.let(
            :"card_transaction.declined",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_TRANSACTION_REVERSED =
          T.let(
            :"card_transaction.reversed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_CREATED =
          T.let(
            :"card.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_UPDATED =
          T.let(
            :"card.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_FROZEN =
          T.let(
            :"card.frozen",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_CANCELED =
          T.let(
            :"card.canceled",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_APPLICATION_CREATED =
          T.let(
            :"card_application.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_APPLICATION_UPDATED =
          T.let(
            :"card_application.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_APPLICATION_APPROVED =
          T.let(
            :"card_application.approved",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CARD_APPLICATION_DENIED =
          T.let(
            :"card_application.denied",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        COURSE_LESSON_INTERACTION_COMPLETED =
          T.let(
            :"course_lesson_interaction.completed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYOUT_METHOD_CREATED =
          T.let(
            :"payout_method.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        VERIFICATION_SUCCEEDED =
          T.let(
            :"verification.succeeded",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_APPROVED =
          T.let(
            :"identity_profile.approved",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_REJECTED =
          T.let(
            :"identity_profile.rejected",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_NEEDS_ACTION =
          T.let(
            :"identity_profile.needs_action",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_UPDATED =
          T.let(
            :"identity_profile.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYOUT_ACCOUNT_STATUS_UPDATED =
          T.let(
            :"payout_account.status_updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_AUTHORIZED =
          T.let(
            :"payment.authorized",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_CANCELED =
          T.let(
            :"payment.canceled",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_CREATED =
          T.let(
            :"resolution_center_case.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_UPDATED =
          T.let(
            :"resolution_center_case.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_DECIDED =
          T.let(
            :"resolution_center_case.decided",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PRODUCT_CREATED =
          T.let(
            :"product.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PRODUCT_UPDATED =
          T.let(
            :"product.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PRODUCT_DELETED =
          T.let(
            :"product.deleted",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PRODUCT_PUBLISHED =
          T.let(
            :"product.published",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PRODUCT_UNPUBLISHED =
          T.let(
            :"product.unpublished",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PLAN_CREATED =
          T.let(
            :"plan.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PLAN_UPDATED =
          T.let(
            :"plan.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PLAN_DELETED =
          T.let(
            :"plan.deleted",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        SHIPMENT_CREATED =
          T.let(
            :"shipment.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        SHIPMENT_UPDATED =
          T.let(
            :"shipment.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBER_CREATED =
          T.let(
            :"member.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        AD_CAMPAIGN_PAYMENT_FAILED =
          T.let(
            :"ad_campaign.payment_failed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CHAT_MESSAGE_CREATED =
          T.let(
            :"chat.message.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        CHAT_REACTION_CREATED =
          T.let(
            :"chat.reaction.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_CREATED =
          T.let(
            :"payment.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_CREATED_2 =
          T.let(
            :payment_created,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_SUCCEEDED =
          T.let(
            :"payment.succeeded",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_SUCCEEDED_2 =
          T.let(
            :payment_succeeded,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :"payment.failed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_FAILED_2 =
          T.let(
            :payment_failed,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_PENDING =
          T.let(
            :"payment.pending",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_PENDING_2 =
          T.let(
            :payment_pending,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        DISPUTE_CREATED =
          T.let(
            :"dispute.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        DISPUTE_CREATED_2 =
          T.let(
            :dispute_created,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        DISPUTE_UPDATED =
          T.let(
            :"dispute.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        DISPUTE_UPDATED_2 =
          T.let(
            :dispute_updated,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        REFUND_CREATED =
          T.let(
            :"refund.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        REFUND_CREATED_2 =
          T.let(
            :refund_created,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        REFUND_UPDATED =
          T.let(
            :"refund.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        REFUND_UPDATED_2 =
          T.let(
            :refund_updated,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        DISPUTE_ALERT_CREATED =
          T.let(
            :"dispute_alert.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        DISPUTE_ALERT_CREATED_2 =
          T.let(
            :dispute_alert_created,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"membership.cancel_at_period_end_changed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED_2 =
          T.let(
            :membership_cancel_at_period_end_changed,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_VALID =
          T.let(
            :membership_went_valid,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_VALID_2 =
          T.let(
            :"membership.went_valid",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_INVALID =
          T.let(
            :membership_went_invalid,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_INVALID_2 =
          T.let(
            :"membership.went_invalid",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_METADATA_UPDATED =
          T.let(
            :membership_metadata_updated,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_METADATA_UPDATED_2 =
          T.let(
            :"membership.metadata_updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        RESOLUTION_CREATED =
          T.let(
            :resolution_created,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        RESOLUTION_CREATED_2 =
          T.let(
            :"resolution.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        RESOLUTION_UPDATED =
          T.let(
            :resolution_updated,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        RESOLUTION_UPDATED_2 =
          T.let(
            :"resolution.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        RESOLUTION_DECIDED =
          T.let(
            :resolution_decided,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        RESOLUTION_DECIDED_2 =
          T.let(
            :"resolution.decided",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_AFFILIATE_REWARD_CREATED =
          T.let(
            :payment_affiliate_reward_created,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_AFFILIATE_REWARD_CREATED_2 =
          T.let(
            :"payment.affiliate_reward_created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_EXPERIENCE_CLAIMED =
          T.let(
            :membership_experience_claimed,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_EXPERIENCE_CLAIMED_2 =
          T.let(
            :"membership.experience_claimed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_VALID =
          T.let(
            :app_membership_went_valid,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_VALID_2 =
          T.let(
            :"app_membership.went_valid",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_INVALID =
          T.let(
            :app_membership_went_invalid,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_INVALID_2 =
          T.let(
            :"app_membership.went_invalid",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_CREATED =
          T.let(
            :app_payment_created,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_CREATED_2 =
          T.let(
            :"app_payment.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_SUCCEEDED =
          T.let(
            :app_payment_succeeded,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_SUCCEEDED_2 =
          T.let(
            :"app_payment.succeeded",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_FAILED =
          T.let(
            :app_payment_failed,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_FAILED_2 =
          T.let(
            :"app_payment.failed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_PENDING =
          T.let(
            :app_payment_pending,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_PENDING_2 =
          T.let(
            :"app_payment.pending",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :app_membership_cancel_at_period_end_changed,
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED_2 =
          T.let(
            :"app_membership.cancel_at_period_end_changed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::WebhookUpdateParams::Event::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
