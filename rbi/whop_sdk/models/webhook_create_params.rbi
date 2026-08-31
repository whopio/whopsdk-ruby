# typed: strong

module WhopSDK
  module Models
    class WebhookCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WebhookCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The URL to send the webhook to.
      sig { returns(String) }
      attr_accessor :url

      # The dated API version (Api-Version-Date) to pin this webhook's payloads to. Omit
      # to leave the webhook unpinned, tracking the current payload shape.
      sig { returns(T.nilable(String)) }
      attr_accessor :body_api_version_date

      # Whether to send events for child resources. For example, if the webhook is
      # created for an account, enabling this sends events only from its connected
      # accounts.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :child_resource_events

      sig { params(child_resource_events: T::Boolean).void }
      attr_writer :child_resource_events

      # Whether or not the webhook is enabled. Defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled

      sig { params(enabled: T::Boolean).void }
      attr_writer :enabled

      # The events to send the webhook for, in dot form (for example
      # `payment.succeeded`).
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::WebhookCreateParams::Event::OrSymbol])
        )
      end
      attr_reader :events

      sig do
        params(
          events: T::Array[WhopSDK::WebhookCreateParams::Event::OrSymbol]
        ).void
      end
      attr_writer :events

      # The account or app to create the webhook for. Defaults to the current account.
      sig { returns(T.nilable(String)) }
      attr_accessor :resource_id

      sig { returns(T.nilable(String)) }
      attr_reader :header_api_version_date

      sig { params(header_api_version_date: String).void }
      attr_writer :header_api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          url: String,
          body_api_version_date: T.nilable(String),
          child_resource_events: T::Boolean,
          enabled: T::Boolean,
          events: T::Array[WhopSDK::WebhookCreateParams::Event::OrSymbol],
          resource_id: T.nilable(String),
          header_api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The URL to send the webhook to.
        url:,
        # The dated API version (Api-Version-Date) to pin this webhook's payloads to. Omit
        # to leave the webhook unpinned, tracking the current payload shape.
        body_api_version_date: nil,
        # Whether to send events for child resources. For example, if the webhook is
        # created for an account, enabling this sends events only from its connected
        # accounts.
        child_resource_events: nil,
        # Whether or not the webhook is enabled. Defaults to `true`.
        enabled: nil,
        # The events to send the webhook for, in dot form (for example
        # `payment.succeeded`).
        events: nil,
        # The account or app to create the webhook for. Defaults to the current account.
        resource_id: nil,
        header_api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            body_api_version_date: T.nilable(String),
            child_resource_events: T::Boolean,
            enabled: T::Boolean,
            events: T::Array[WhopSDK::WebhookCreateParams::Event::OrSymbol],
            resource_id: T.nilable(String),
            header_api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Event
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::WebhookCreateParams::Event) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_UPDATED =
          T.let(
            :"account.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        INVOICE_CREATED =
          T.let(
            :"invoice.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        INVOICE_MARKED_UNCOLLECTIBLE =
          T.let(
            :"invoice.marked_uncollectible",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        INVOICE_PAID =
          T.let(
            :"invoice.paid",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        INVOICE_PAST_DUE =
          T.let(
            :"invoice.past_due",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        INVOICE_VOIDED =
          T.let(
            :"invoice.voided",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_ACTIVATED =
          T.let(
            :"membership.activated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_DEACTIVATED =
          T.let(
            :"membership.deactivated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_TRIAL_ENDING_SOON =
          T.let(
            :"membership.trial_ending_soon",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        ENTRY_CREATED =
          T.let(
            :"entry.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        ENTRY_APPROVED =
          T.let(
            :"entry.approved",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        ENTRY_DENIED =
          T.let(
            :"entry.denied",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        ENTRY_DELETED =
          T.let(
            :"entry.deleted",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        EXPORT_COMPLETED =
          T.let(
            :"export.completed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        EXPORT_FAILED =
          T.let(
            :"export.failed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_REQUIRES_ACTION =
          T.let(
            :"setup_intent.requires_action",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_SUCCEEDED =
          T.let(
            :"setup_intent.succeeded",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_CANCELED =
          T.let(
            :"setup_intent.canceled",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        LEDGER_ACCOUNT_FUNDS_AVAILABLE =
          T.let(
            :"ledger_account.funds_available",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        SWAP_COMPLETED =
          T.let(
            :"swap.completed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        DEPOSIT_SUCCEEDED =
          T.let(
            :"deposit.succeeded",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        TRANSFER_CREATED =
          T.let(
            :"transfer.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        TRANSFER_COMPLETED =
          T.let(
            :"transfer.completed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        TRANSFER_FAILED =
          T.let(
            :"transfer.failed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYOUT_CREATED =
          T.let(
            :"payout.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYOUT_UPDATED =
          T.let(
            :"payout.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYOUT_REVERSED =
          T.let(
            :"payout.reversed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_TRANSACTION_CREATED =
          T.let(
            :"card_transaction.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_TRANSACTION_UPDATED =
          T.let(
            :"card_transaction.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_TRANSACTION_COMPLETED =
          T.let(
            :"card_transaction.completed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_TRANSACTION_DECLINED =
          T.let(
            :"card_transaction.declined",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_TRANSACTION_REVERSED =
          T.let(
            :"card_transaction.reversed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_CREATED =
          T.let(
            :"card.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_UPDATED =
          T.let(
            :"card.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_FROZEN =
          T.let(
            :"card.frozen",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_CANCELED =
          T.let(
            :"card.canceled",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_APPLICATION_CREATED =
          T.let(
            :"card_application.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_APPLICATION_UPDATED =
          T.let(
            :"card_application.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_APPLICATION_APPROVED =
          T.let(
            :"card_application.approved",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CARD_APPLICATION_DENIED =
          T.let(
            :"card_application.denied",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        COURSE_LESSON_INTERACTION_COMPLETED =
          T.let(
            :"course_lesson_interaction.completed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYOUT_METHOD_CREATED =
          T.let(
            :"payout_method.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        VERIFICATION_SUCCEEDED =
          T.let(
            :"verification.succeeded",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_APPROVED =
          T.let(
            :"identity_profile.approved",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_REJECTED =
          T.let(
            :"identity_profile.rejected",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_NEEDS_ACTION =
          T.let(
            :"identity_profile.needs_action",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_UPDATED =
          T.let(
            :"identity_profile.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYOUT_ACCOUNT_STATUS_UPDATED =
          T.let(
            :"payout_account.status_updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_AUTHORIZED =
          T.let(
            :"payment.authorized",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_CANCELED =
          T.let(
            :"payment.canceled",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_CREATED =
          T.let(
            :"resolution_center_case.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_UPDATED =
          T.let(
            :"resolution_center_case.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_DECIDED =
          T.let(
            :"resolution_center_case.decided",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PRODUCT_CREATED =
          T.let(
            :"product.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PRODUCT_UPDATED =
          T.let(
            :"product.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PRODUCT_DELETED =
          T.let(
            :"product.deleted",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PRODUCT_PUBLISHED =
          T.let(
            :"product.published",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PRODUCT_UNPUBLISHED =
          T.let(
            :"product.unpublished",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PLAN_CREATED =
          T.let(
            :"plan.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PLAN_UPDATED =
          T.let(
            :"plan.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PLAN_DELETED =
          T.let(
            :"plan.deleted",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        SHIPMENT_CREATED =
          T.let(
            :"shipment.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        SHIPMENT_UPDATED =
          T.let(
            :"shipment.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBER_CREATED =
          T.let(
            :"member.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        AD_CAMPAIGN_PAYMENT_FAILED =
          T.let(
            :"ad_campaign.payment_failed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CHAT_MESSAGE_CREATED =
          T.let(
            :"chat.message.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        CHAT_REACTION_CREATED =
          T.let(
            :"chat.reaction.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_CREATED =
          T.let(
            :"payment.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_CREATED_2 =
          T.let(
            :payment_created,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_SUCCEEDED =
          T.let(
            :"payment.succeeded",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_SUCCEEDED_2 =
          T.let(
            :payment_succeeded,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :"payment.failed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_FAILED_2 =
          T.let(
            :payment_failed,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_PENDING =
          T.let(
            :"payment.pending",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_PENDING_2 =
          T.let(
            :payment_pending,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        DISPUTE_CREATED =
          T.let(
            :"dispute.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        DISPUTE_CREATED_2 =
          T.let(
            :dispute_created,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        DISPUTE_UPDATED =
          T.let(
            :"dispute.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        DISPUTE_UPDATED_2 =
          T.let(
            :dispute_updated,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        REFUND_CREATED =
          T.let(
            :"refund.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        REFUND_CREATED_2 =
          T.let(
            :refund_created,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        REFUND_UPDATED =
          T.let(
            :"refund.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        REFUND_UPDATED_2 =
          T.let(
            :refund_updated,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        DISPUTE_ALERT_CREATED =
          T.let(
            :"dispute_alert.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        DISPUTE_ALERT_CREATED_2 =
          T.let(
            :dispute_alert_created,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"membership.cancel_at_period_end_changed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED_2 =
          T.let(
            :membership_cancel_at_period_end_changed,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_VALID =
          T.let(
            :membership_went_valid,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_VALID_2 =
          T.let(
            :"membership.went_valid",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_INVALID =
          T.let(
            :membership_went_invalid,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_INVALID_2 =
          T.let(
            :"membership.went_invalid",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_METADATA_UPDATED =
          T.let(
            :membership_metadata_updated,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_METADATA_UPDATED_2 =
          T.let(
            :"membership.metadata_updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        RESOLUTION_CREATED =
          T.let(
            :resolution_created,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        RESOLUTION_CREATED_2 =
          T.let(
            :"resolution.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        RESOLUTION_UPDATED =
          T.let(
            :resolution_updated,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        RESOLUTION_UPDATED_2 =
          T.let(
            :"resolution.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        RESOLUTION_DECIDED =
          T.let(
            :resolution_decided,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        RESOLUTION_DECIDED_2 =
          T.let(
            :"resolution.decided",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_AFFILIATE_REWARD_CREATED =
          T.let(
            :payment_affiliate_reward_created,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_AFFILIATE_REWARD_CREATED_2 =
          T.let(
            :"payment.affiliate_reward_created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_EXPERIENCE_CLAIMED =
          T.let(
            :membership_experience_claimed,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_EXPERIENCE_CLAIMED_2 =
          T.let(
            :"membership.experience_claimed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_VALID =
          T.let(
            :app_membership_went_valid,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_VALID_2 =
          T.let(
            :"app_membership.went_valid",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_INVALID =
          T.let(
            :app_membership_went_invalid,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_INVALID_2 =
          T.let(
            :"app_membership.went_invalid",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_CREATED =
          T.let(
            :app_payment_created,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_CREATED_2 =
          T.let(
            :"app_payment.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_SUCCEEDED =
          T.let(
            :app_payment_succeeded,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_SUCCEEDED_2 =
          T.let(
            :"app_payment.succeeded",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_FAILED =
          T.let(
            :app_payment_failed,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_FAILED_2 =
          T.let(
            :"app_payment.failed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_PENDING =
          T.let(
            :app_payment_pending,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_PAYMENT_PENDING_2 =
          T.let(
            :"app_payment.pending",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :app_membership_cancel_at_period_end_changed,
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED_2 =
          T.let(
            :"app_membership.cancel_at_period_end_changed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::WebhookCreateParams::Event::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
