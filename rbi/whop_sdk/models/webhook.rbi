# typed: strong

module WhopSDK
  module Models
    class Webhook < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Webhook, WhopSDK::Internal::AnyHash) }

      # Webhook ID, prefixed `hook_`.
      sig { returns(String) }
      attr_accessor :id

      # The API version used to format payloads sent to this webhook endpoint.
      sig { returns(WhopSDK::Webhook::APIVersion::TaggedSymbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) that v1 payloads for this endpoint are
      # pinned to: events serialize exactly like a REST read at this version (the native
      # serializer where the resource has one). Null when unpinned — legacy (v2/v5)
      # webhooks, and v1 webhooks on the legacy payload shape.
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      # Whether events are sent for child resources. For example, if the webhook is on
      # an account, enabling this sends events only from its connected accounts.
      sig { returns(T::Boolean) }
      attr_accessor :child_resource_events

      # Number of consecutive deliveries whose first attempt to this endpoint failed
      # since it last accepted one. Later retries of the same delivery do not increment
      # it. Resets to `0` when a delivery succeeds or the webhook is re-enabled.
      sig { returns(Integer) }
      attr_accessor :consecutive_failures

      # When the webhook was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # When Whop automatically disabled this webhook, as an ISO 8601 timestamp. `null`
      # unless the webhook was disabled by Whop; a webhook you disabled yourself has
      # `enabled: false` and a `null` `disabled_at`.
      sig { returns(T.nilable(String)) }
      attr_accessor :disabled_at

      # Why Whop disabled this webhook. `delivery_failures` means every delivery failed
      # for 3 days straight. `null` when `disabled_at` is `null`.
      sig { returns(T.nilable(WhopSDK::Webhook::DisabledReason::TaggedSymbol)) }
      attr_accessor :disabled_reason

      # Whether this webhook endpoint is currently active and receiving events.
      sig { returns(T::Boolean) }
      attr_accessor :enabled

      sig { returns(T::Array[WhopSDK::Webhook::Event::TaggedSymbol]) }
      attr_accessor :events

      # When the current failure streak began, as an ISO 8601 timestamp. Unlike
      # `last_failure_at`, this is set on the streak's first failed attempt, so it shows
      # an endpoint that is failing right now. `null` when the endpoint is healthy.
      sig { returns(T.nilable(String)) }
      attr_accessor :failing_since

      # When a delivery to this endpoint most recently failed after exhausting retries,
      # as an ISO 8601 timestamp. `null` if no delivery has ever failed.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_failure_at

      # ID of the resource (account or app) this webhook is attached to.
      sig { returns(String) }
      attr_accessor :resource_id

      sig { returns(T::Array[WhopSDK::Webhook::TestableEvent::TaggedSymbol]) }
      attr_accessor :testable_events

      # Destination URL where webhook payloads are delivered via HTTP POST.
      sig { returns(String) }
      attr_accessor :url

      # Secret key used to sign webhook payloads for verification. Include this in your
      # HMAC validation logic. Returned on the create response and to interactive
      # dashboard sessions; `null` for API-key and OAuth callers on later reads.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_secret

      sig do
        params(
          id: String,
          api_version: WhopSDK::Webhook::APIVersion::OrSymbol,
          api_version_date: T.nilable(String),
          child_resource_events: T::Boolean,
          consecutive_failures: Integer,
          created_at: String,
          disabled_at: T.nilable(String),
          disabled_reason:
            T.nilable(WhopSDK::Webhook::DisabledReason::OrSymbol),
          enabled: T::Boolean,
          events: T::Array[WhopSDK::Webhook::Event::OrSymbol],
          failing_since: T.nilable(String),
          last_failure_at: T.nilable(String),
          resource_id: String,
          testable_events: T::Array[WhopSDK::Webhook::TestableEvent::OrSymbol],
          url: String,
          webhook_secret: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Webhook ID, prefixed `hook_`.
        id:,
        # The API version used to format payloads sent to this webhook endpoint.
        api_version:,
        # The dated API version (Api-Version-Date) that v1 payloads for this endpoint are
        # pinned to: events serialize exactly like a REST read at this version (the native
        # serializer where the resource has one). Null when unpinned — legacy (v2/v5)
        # webhooks, and v1 webhooks on the legacy payload shape.
        api_version_date:,
        # Whether events are sent for child resources. For example, if the webhook is on
        # an account, enabling this sends events only from its connected accounts.
        child_resource_events:,
        # Number of consecutive deliveries whose first attempt to this endpoint failed
        # since it last accepted one. Later retries of the same delivery do not increment
        # it. Resets to `0` when a delivery succeeds or the webhook is re-enabled.
        consecutive_failures:,
        # When the webhook was created, as an ISO 8601 timestamp.
        created_at:,
        # When Whop automatically disabled this webhook, as an ISO 8601 timestamp. `null`
        # unless the webhook was disabled by Whop; a webhook you disabled yourself has
        # `enabled: false` and a `null` `disabled_at`.
        disabled_at:,
        # Why Whop disabled this webhook. `delivery_failures` means every delivery failed
        # for 3 days straight. `null` when `disabled_at` is `null`.
        disabled_reason:,
        # Whether this webhook endpoint is currently active and receiving events.
        enabled:,
        events:,
        # When the current failure streak began, as an ISO 8601 timestamp. Unlike
        # `last_failure_at`, this is set on the streak's first failed attempt, so it shows
        # an endpoint that is failing right now. `null` when the endpoint is healthy.
        failing_since:,
        # When a delivery to this endpoint most recently failed after exhausting retries,
        # as an ISO 8601 timestamp. `null` if no delivery has ever failed.
        last_failure_at:,
        # ID of the resource (account or app) this webhook is attached to.
        resource_id:,
        testable_events:,
        # Destination URL where webhook payloads are delivered via HTTP POST.
        url:,
        # Secret key used to sign webhook payloads for verification. Include this in your
        # HMAC validation logic. Returned on the create response and to interactive
        # dashboard sessions; `null` for API-key and OAuth callers on later reads.
        webhook_secret:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: WhopSDK::Webhook::APIVersion::TaggedSymbol,
            api_version_date: T.nilable(String),
            child_resource_events: T::Boolean,
            consecutive_failures: Integer,
            created_at: String,
            disabled_at: T.nilable(String),
            disabled_reason:
              T.nilable(WhopSDK::Webhook::DisabledReason::TaggedSymbol),
            enabled: T::Boolean,
            events: T::Array[WhopSDK::Webhook::Event::TaggedSymbol],
            failing_since: T.nilable(String),
            last_failure_at: T.nilable(String),
            resource_id: String,
            testable_events:
              T::Array[WhopSDK::Webhook::TestableEvent::TaggedSymbol],
            url: String,
            webhook_secret: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The API version used to format payloads sent to this webhook endpoint.
      module APIVersion
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Webhook::APIVersion) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 = T.let(:v1, WhopSDK::Webhook::APIVersion::TaggedSymbol)
        V2 = T.let(:v2, WhopSDK::Webhook::APIVersion::TaggedSymbol)
        V5 = T.let(:v5, WhopSDK::Webhook::APIVersion::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Webhook::APIVersion::TaggedSymbol])
        end
        def self.values
        end
      end

      # Why Whop disabled this webhook. `delivery_failures` means every delivery failed
      # for 3 days straight. `null` when `disabled_at` is `null`.
      module DisabledReason
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Webhook::DisabledReason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELIVERY_FAILURES =
          T.let(
            :delivery_failures,
            WhopSDK::Webhook::DisabledReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Webhook::DisabledReason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Event types this webhook is subscribed to, in dot form (for example
      # `payment.succeeded`).
      module Event
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Webhook::Event) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_UPDATED =
          T.let(:"account.updated", WhopSDK::Webhook::Event::TaggedSymbol)
        INVOICE_CREATED =
          T.let(:"invoice.created", WhopSDK::Webhook::Event::TaggedSymbol)
        INVOICE_MARKED_UNCOLLECTIBLE =
          T.let(
            :"invoice.marked_uncollectible",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        INVOICE_PAID =
          T.let(:"invoice.paid", WhopSDK::Webhook::Event::TaggedSymbol)
        INVOICE_PAST_DUE =
          T.let(:"invoice.past_due", WhopSDK::Webhook::Event::TaggedSymbol)
        INVOICE_VOIDED =
          T.let(:"invoice.voided", WhopSDK::Webhook::Event::TaggedSymbol)
        MEMBERSHIP_ACTIVATED =
          T.let(:"membership.activated", WhopSDK::Webhook::Event::TaggedSymbol)
        MEMBERSHIP_DEACTIVATED =
          T.let(
            :"membership.deactivated",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        MEMBERSHIP_TRIAL_ENDING_SOON =
          T.let(
            :"membership.trial_ending_soon",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        ENTRY_CREATED =
          T.let(:"entry.created", WhopSDK::Webhook::Event::TaggedSymbol)
        ENTRY_APPROVED =
          T.let(:"entry.approved", WhopSDK::Webhook::Event::TaggedSymbol)
        ENTRY_DENIED =
          T.let(:"entry.denied", WhopSDK::Webhook::Event::TaggedSymbol)
        ENTRY_DELETED =
          T.let(:"entry.deleted", WhopSDK::Webhook::Event::TaggedSymbol)
        EXPORT_COMPLETED =
          T.let(:"export.completed", WhopSDK::Webhook::Event::TaggedSymbol)
        EXPORT_FAILED =
          T.let(:"export.failed", WhopSDK::Webhook::Event::TaggedSymbol)
        SETUP_INTENT_REQUIRES_ACTION =
          T.let(
            :"setup_intent.requires_action",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        SETUP_INTENT_SUCCEEDED =
          T.let(
            :"setup_intent.succeeded",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        SETUP_INTENT_CANCELED =
          T.let(:"setup_intent.canceled", WhopSDK::Webhook::Event::TaggedSymbol)
        LEDGER_ACCOUNT_FUNDS_AVAILABLE =
          T.let(
            :"ledger_account.funds_available",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        SWAP_COMPLETED =
          T.let(:"swap.completed", WhopSDK::Webhook::Event::TaggedSymbol)
        DEPOSIT_SUCCEEDED =
          T.let(:"deposit.succeeded", WhopSDK::Webhook::Event::TaggedSymbol)
        TRANSFER_CREATED =
          T.let(:"transfer.created", WhopSDK::Webhook::Event::TaggedSymbol)
        TRANSFER_COMPLETED =
          T.let(:"transfer.completed", WhopSDK::Webhook::Event::TaggedSymbol)
        TRANSFER_FAILED =
          T.let(:"transfer.failed", WhopSDK::Webhook::Event::TaggedSymbol)
        WITHDRAWAL_CREATED =
          T.let(:"withdrawal.created", WhopSDK::Webhook::Event::TaggedSymbol)
        WITHDRAWAL_UPDATED =
          T.let(:"withdrawal.updated", WhopSDK::Webhook::Event::TaggedSymbol)
        WITHDRAWAL_REVERSED =
          T.let(:"withdrawal.reversed", WhopSDK::Webhook::Event::TaggedSymbol)
        PAYOUT_CREATED =
          T.let(:"payout.created", WhopSDK::Webhook::Event::TaggedSymbol)
        PAYOUT_UPDATED =
          T.let(:"payout.updated", WhopSDK::Webhook::Event::TaggedSymbol)
        PAYOUT_REVERSED =
          T.let(:"payout.reversed", WhopSDK::Webhook::Event::TaggedSymbol)
        CARD_TRANSACTION_CREATED =
          T.let(
            :"card_transaction.created",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        CARD_TRANSACTION_UPDATED =
          T.let(
            :"card_transaction.updated",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        CARD_TRANSACTION_COMPLETED =
          T.let(
            :"card_transaction.completed",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        CARD_TRANSACTION_DECLINED =
          T.let(
            :"card_transaction.declined",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        CARD_TRANSACTION_REVERSED =
          T.let(
            :"card_transaction.reversed",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        CARD_CREATED =
          T.let(:"card.created", WhopSDK::Webhook::Event::TaggedSymbol)
        CARD_UPDATED =
          T.let(:"card.updated", WhopSDK::Webhook::Event::TaggedSymbol)
        CARD_FROZEN =
          T.let(:"card.frozen", WhopSDK::Webhook::Event::TaggedSymbol)
        CARD_CANCELED =
          T.let(:"card.canceled", WhopSDK::Webhook::Event::TaggedSymbol)
        CARD_APPLICATION_CREATED =
          T.let(
            :"card_application.created",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        CARD_APPLICATION_UPDATED =
          T.let(
            :"card_application.updated",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        CARD_APPLICATION_APPROVED =
          T.let(
            :"card_application.approved",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        CARD_APPLICATION_DENIED =
          T.let(
            :"card_application.denied",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        COURSE_LESSON_INTERACTION_COMPLETED =
          T.let(
            :"course_lesson_interaction.completed",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        PAYOUT_METHOD_CREATED =
          T.let(:"payout_method.created", WhopSDK::Webhook::Event::TaggedSymbol)
        VERIFICATION_SUCCEEDED =
          T.let(
            :"verification.succeeded",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_APPROVED =
          T.let(
            :"identity_profile.approved",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_REJECTED =
          T.let(
            :"identity_profile.rejected",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_NEEDS_ACTION =
          T.let(
            :"identity_profile.needs_action",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_UPDATED =
          T.let(
            :"identity_profile.updated",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        PAYOUT_ACCOUNT_STATUS_UPDATED =
          T.let(
            :"payout_account.status_updated",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        PAYMENT_AUTHORIZED =
          T.let(:"payment.authorized", WhopSDK::Webhook::Event::TaggedSymbol)
        PAYMENT_CANCELED =
          T.let(:"payment.canceled", WhopSDK::Webhook::Event::TaggedSymbol)
        RESOLUTION_CENTER_CASE_CREATED =
          T.let(
            :"resolution_center_case.created",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_UPDATED =
          T.let(
            :"resolution_center_case.updated",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_DECIDED =
          T.let(
            :"resolution_center_case.decided",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        PRODUCT_CREATED =
          T.let(:"product.created", WhopSDK::Webhook::Event::TaggedSymbol)
        PRODUCT_UPDATED =
          T.let(:"product.updated", WhopSDK::Webhook::Event::TaggedSymbol)
        PRODUCT_DELETED =
          T.let(:"product.deleted", WhopSDK::Webhook::Event::TaggedSymbol)
        PRODUCT_PUBLISHED =
          T.let(:"product.published", WhopSDK::Webhook::Event::TaggedSymbol)
        PRODUCT_UNPUBLISHED =
          T.let(:"product.unpublished", WhopSDK::Webhook::Event::TaggedSymbol)
        PLAN_CREATED =
          T.let(:"plan.created", WhopSDK::Webhook::Event::TaggedSymbol)
        PLAN_UPDATED =
          T.let(:"plan.updated", WhopSDK::Webhook::Event::TaggedSymbol)
        PLAN_DELETED =
          T.let(:"plan.deleted", WhopSDK::Webhook::Event::TaggedSymbol)
        SHIPMENT_CREATED =
          T.let(:"shipment.created", WhopSDK::Webhook::Event::TaggedSymbol)
        SHIPMENT_UPDATED =
          T.let(:"shipment.updated", WhopSDK::Webhook::Event::TaggedSymbol)
        MEMBER_CREATED =
          T.let(:"member.created", WhopSDK::Webhook::Event::TaggedSymbol)
        AD_CAMPAIGN_PAYMENT_FAILED =
          T.let(
            :"ad_campaign.payment_failed",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        CHAT_MESSAGE_CREATED =
          T.let(:"chat.message.created", WhopSDK::Webhook::Event::TaggedSymbol)
        CHAT_REACTION_CREATED =
          T.let(:"chat.reaction.created", WhopSDK::Webhook::Event::TaggedSymbol)
        PAYMENT_CREATED =
          T.let(:"payment.created", WhopSDK::Webhook::Event::TaggedSymbol)
        PAYMENT_SUCCEEDED =
          T.let(:"payment.succeeded", WhopSDK::Webhook::Event::TaggedSymbol)
        PAYMENT_FAILED =
          T.let(:"payment.failed", WhopSDK::Webhook::Event::TaggedSymbol)
        PAYMENT_PENDING =
          T.let(:"payment.pending", WhopSDK::Webhook::Event::TaggedSymbol)
        DISPUTE_CREATED =
          T.let(:"dispute.created", WhopSDK::Webhook::Event::TaggedSymbol)
        DISPUTE_UPDATED =
          T.let(:"dispute.updated", WhopSDK::Webhook::Event::TaggedSymbol)
        REFUND_CREATED =
          T.let(:"refund.created", WhopSDK::Webhook::Event::TaggedSymbol)
        REFUND_UPDATED =
          T.let(:"refund.updated", WhopSDK::Webhook::Event::TaggedSymbol)
        DISPUTE_ALERT_CREATED =
          T.let(:"dispute_alert.created", WhopSDK::Webhook::Event::TaggedSymbol)
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"membership.cancel_at_period_end_changed",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_VALID =
          T.let(:"membership.went_valid", WhopSDK::Webhook::Event::TaggedSymbol)
        MEMBERSHIP_WENT_INVALID =
          T.let(
            :"membership.went_invalid",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        MEMBERSHIP_METADATA_UPDATED =
          T.let(
            :"membership.metadata_updated",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        RESOLUTION_CREATED =
          T.let(:"resolution.created", WhopSDK::Webhook::Event::TaggedSymbol)
        RESOLUTION_UPDATED =
          T.let(:"resolution.updated", WhopSDK::Webhook::Event::TaggedSymbol)
        RESOLUTION_DECIDED =
          T.let(:"resolution.decided", WhopSDK::Webhook::Event::TaggedSymbol)
        PAYMENT_AFFILIATE_REWARD_CREATED =
          T.let(
            :"payment.affiliate_reward_created",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        MEMBERSHIP_EXPERIENCE_CLAIMED =
          T.let(
            :"membership.experience_claimed",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_VALID =
          T.let(
            :"app_membership.went_valid",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_INVALID =
          T.let(
            :"app_membership.went_invalid",
            WhopSDK::Webhook::Event::TaggedSymbol
          )
        APP_PAYMENT_CREATED =
          T.let(:"app_payment.created", WhopSDK::Webhook::Event::TaggedSymbol)
        APP_PAYMENT_SUCCEEDED =
          T.let(:"app_payment.succeeded", WhopSDK::Webhook::Event::TaggedSymbol)
        APP_PAYMENT_FAILED =
          T.let(:"app_payment.failed", WhopSDK::Webhook::Event::TaggedSymbol)
        APP_PAYMENT_PENDING =
          T.let(:"app_payment.pending", WhopSDK::Webhook::Event::TaggedSymbol)
        APP_MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"app_membership.cancel_at_period_end_changed",
            WhopSDK::Webhook::Event::TaggedSymbol
          )

        sig do
          override.returns(T::Array[WhopSDK::Webhook::Event::TaggedSymbol])
        end
        def self.values
        end
      end

      # The subset of subscribed event types that support sending test payloads, in dot
      # form.
      module TestableEvent
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Webhook::TestableEvent) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_UPDATED =
          T.let(
            :"account.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        INVOICE_CREATED =
          T.let(
            :"invoice.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        INVOICE_MARKED_UNCOLLECTIBLE =
          T.let(
            :"invoice.marked_uncollectible",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        INVOICE_PAID =
          T.let(:"invoice.paid", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        INVOICE_PAST_DUE =
          T.let(
            :"invoice.past_due",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        INVOICE_VOIDED =
          T.let(
            :"invoice.voided",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        MEMBERSHIP_ACTIVATED =
          T.let(
            :"membership.activated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        MEMBERSHIP_DEACTIVATED =
          T.let(
            :"membership.deactivated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        MEMBERSHIP_TRIAL_ENDING_SOON =
          T.let(
            :"membership.trial_ending_soon",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        ENTRY_CREATED =
          T.let(:"entry.created", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        ENTRY_APPROVED =
          T.let(
            :"entry.approved",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        ENTRY_DENIED =
          T.let(:"entry.denied", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        ENTRY_DELETED =
          T.let(:"entry.deleted", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        EXPORT_COMPLETED =
          T.let(
            :"export.completed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        EXPORT_FAILED =
          T.let(:"export.failed", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        SETUP_INTENT_REQUIRES_ACTION =
          T.let(
            :"setup_intent.requires_action",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        SETUP_INTENT_SUCCEEDED =
          T.let(
            :"setup_intent.succeeded",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        SETUP_INTENT_CANCELED =
          T.let(
            :"setup_intent.canceled",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        LEDGER_ACCOUNT_FUNDS_AVAILABLE =
          T.let(
            :"ledger_account.funds_available",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        SWAP_COMPLETED =
          T.let(
            :"swap.completed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        DEPOSIT_SUCCEEDED =
          T.let(
            :"deposit.succeeded",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        TRANSFER_CREATED =
          T.let(
            :"transfer.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        TRANSFER_COMPLETED =
          T.let(
            :"transfer.completed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        TRANSFER_FAILED =
          T.let(
            :"transfer.failed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        WITHDRAWAL_CREATED =
          T.let(
            :"withdrawal.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        WITHDRAWAL_UPDATED =
          T.let(
            :"withdrawal.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        WITHDRAWAL_REVERSED =
          T.let(
            :"withdrawal.reversed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYOUT_CREATED =
          T.let(
            :"payout.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYOUT_UPDATED =
          T.let(
            :"payout.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYOUT_REVERSED =
          T.let(
            :"payout.reversed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CARD_TRANSACTION_CREATED =
          T.let(
            :"card_transaction.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CARD_TRANSACTION_UPDATED =
          T.let(
            :"card_transaction.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CARD_TRANSACTION_COMPLETED =
          T.let(
            :"card_transaction.completed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CARD_TRANSACTION_DECLINED =
          T.let(
            :"card_transaction.declined",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CARD_TRANSACTION_REVERSED =
          T.let(
            :"card_transaction.reversed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CARD_CREATED =
          T.let(:"card.created", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        CARD_UPDATED =
          T.let(:"card.updated", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        CARD_FROZEN =
          T.let(:"card.frozen", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        CARD_CANCELED =
          T.let(:"card.canceled", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        CARD_APPLICATION_CREATED =
          T.let(
            :"card_application.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CARD_APPLICATION_UPDATED =
          T.let(
            :"card_application.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CARD_APPLICATION_APPROVED =
          T.let(
            :"card_application.approved",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CARD_APPLICATION_DENIED =
          T.let(
            :"card_application.denied",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        COURSE_LESSON_INTERACTION_COMPLETED =
          T.let(
            :"course_lesson_interaction.completed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYOUT_METHOD_CREATED =
          T.let(
            :"payout_method.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        VERIFICATION_SUCCEEDED =
          T.let(
            :"verification.succeeded",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        IDENTITY_PROFILE_APPROVED =
          T.let(
            :"identity_profile.approved",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        IDENTITY_PROFILE_REJECTED =
          T.let(
            :"identity_profile.rejected",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        IDENTITY_PROFILE_NEEDS_ACTION =
          T.let(
            :"identity_profile.needs_action",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        IDENTITY_PROFILE_UPDATED =
          T.let(
            :"identity_profile.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYOUT_ACCOUNT_STATUS_UPDATED =
          T.let(
            :"payout_account.status_updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYMENT_AUTHORIZED =
          T.let(
            :"payment.authorized",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYMENT_CANCELED =
          T.let(
            :"payment.canceled",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_CREATED =
          T.let(
            :"resolution_center_case.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_UPDATED =
          T.let(
            :"resolution_center_case.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_DECIDED =
          T.let(
            :"resolution_center_case.decided",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PRODUCT_CREATED =
          T.let(
            :"product.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PRODUCT_UPDATED =
          T.let(
            :"product.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PRODUCT_DELETED =
          T.let(
            :"product.deleted",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PRODUCT_PUBLISHED =
          T.let(
            :"product.published",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PRODUCT_UNPUBLISHED =
          T.let(
            :"product.unpublished",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PLAN_CREATED =
          T.let(:"plan.created", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        PLAN_UPDATED =
          T.let(:"plan.updated", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        PLAN_DELETED =
          T.let(:"plan.deleted", WhopSDK::Webhook::TestableEvent::TaggedSymbol)
        SHIPMENT_CREATED =
          T.let(
            :"shipment.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        SHIPMENT_UPDATED =
          T.let(
            :"shipment.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        MEMBER_CREATED =
          T.let(
            :"member.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        AD_CAMPAIGN_PAYMENT_FAILED =
          T.let(
            :"ad_campaign.payment_failed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CHAT_MESSAGE_CREATED =
          T.let(
            :"chat.message.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        CHAT_REACTION_CREATED =
          T.let(
            :"chat.reaction.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYMENT_CREATED =
          T.let(
            :"payment.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYMENT_SUCCEEDED =
          T.let(
            :"payment.succeeded",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :"payment.failed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYMENT_PENDING =
          T.let(
            :"payment.pending",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        DISPUTE_CREATED =
          T.let(
            :"dispute.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        DISPUTE_UPDATED =
          T.let(
            :"dispute.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        REFUND_CREATED =
          T.let(
            :"refund.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        REFUND_UPDATED =
          T.let(
            :"refund.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        DISPUTE_ALERT_CREATED =
          T.let(
            :"dispute_alert.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"membership.cancel_at_period_end_changed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        MEMBERSHIP_WENT_VALID =
          T.let(
            :"membership.went_valid",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        MEMBERSHIP_WENT_INVALID =
          T.let(
            :"membership.went_invalid",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        MEMBERSHIP_METADATA_UPDATED =
          T.let(
            :"membership.metadata_updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        RESOLUTION_CREATED =
          T.let(
            :"resolution.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        RESOLUTION_UPDATED =
          T.let(
            :"resolution.updated",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        RESOLUTION_DECIDED =
          T.let(
            :"resolution.decided",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        PAYMENT_AFFILIATE_REWARD_CREATED =
          T.let(
            :"payment.affiliate_reward_created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        MEMBERSHIP_EXPERIENCE_CLAIMED =
          T.let(
            :"membership.experience_claimed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_VALID =
          T.let(
            :"app_membership.went_valid",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_INVALID =
          T.let(
            :"app_membership.went_invalid",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        APP_PAYMENT_CREATED =
          T.let(
            :"app_payment.created",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        APP_PAYMENT_SUCCEEDED =
          T.let(
            :"app_payment.succeeded",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        APP_PAYMENT_FAILED =
          T.let(
            :"app_payment.failed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        APP_PAYMENT_PENDING =
          T.let(
            :"app_payment.pending",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )
        APP_MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"app_membership.cancel_at_period_end_changed",
            WhopSDK::Webhook::TestableEvent::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Webhook::TestableEvent::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
