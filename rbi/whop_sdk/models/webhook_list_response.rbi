# typed: strong

module WhopSDK
  module Models
    class WebhookListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WebhookListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Webhook ID, prefixed `hook_`.
      sig { returns(String) }
      attr_accessor :id

      # The API version used to format payloads sent to this webhook endpoint.
      sig do
        returns(WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol)
      end
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
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::WebhookListResponse::DisabledReason::TaggedSymbol
          )
        )
      end
      attr_accessor :disabled_reason

      # Whether this webhook endpoint is currently active and receiving events.
      sig { returns(T::Boolean) }
      attr_accessor :enabled

      sig do
        returns(
          T::Array[WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol]
        )
      end
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
          api_version:
            WhopSDK::Models::WebhookListResponse::APIVersion::OrSymbol,
          api_version_date: T.nilable(String),
          child_resource_events: T::Boolean,
          consecutive_failures: Integer,
          created_at: String,
          disabled_at: T.nilable(String),
          disabled_reason:
            T.nilable(
              WhopSDK::Models::WebhookListResponse::DisabledReason::OrSymbol
            ),
          enabled: T::Boolean,
          events:
            T::Array[WhopSDK::Models::WebhookListResponse::Event::OrSymbol],
          failing_since: T.nilable(String),
          last_failure_at: T.nilable(String),
          resource_id: String,
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
            api_version:
              WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol,
            api_version_date: T.nilable(String),
            child_resource_events: T::Boolean,
            consecutive_failures: Integer,
            created_at: String,
            disabled_at: T.nilable(String),
            disabled_reason:
              T.nilable(
                WhopSDK::Models::WebhookListResponse::DisabledReason::TaggedSymbol
              ),
            enabled: T::Boolean,
            events:
              T::Array[
                WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
              ],
            failing_since: T.nilable(String),
            last_failure_at: T.nilable(String),
            resource_id: String,
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
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WebhookListResponse::APIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 =
          T.let(
            :v1,
            WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol
          )
        V2 =
          T.let(
            :v2,
            WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol
          )
        V5 =
          T.let(
            :v5,
            WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Why Whop disabled this webhook. `delivery_failures` means every delivery failed
      # for 3 days straight. `null` when `disabled_at` is `null`.
      module DisabledReason
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WebhookListResponse::DisabledReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELIVERY_FAILURES =
          T.let(
            :delivery_failures,
            WhopSDK::Models::WebhookListResponse::DisabledReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WebhookListResponse::DisabledReason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Event types this webhook is subscribed to, in dot form (for example
      # `payment.succeeded`).
      module Event
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WebhookListResponse::Event)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT_UPDATED =
          T.let(
            :"account.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        INVOICE_CREATED =
          T.let(
            :"invoice.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        INVOICE_MARKED_UNCOLLECTIBLE =
          T.let(
            :"invoice.marked_uncollectible",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        INVOICE_PAID =
          T.let(
            :"invoice.paid",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        INVOICE_PAST_DUE =
          T.let(
            :"invoice.past_due",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        INVOICE_VOIDED =
          T.let(
            :"invoice.voided",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_ACTIVATED =
          T.let(
            :"membership.activated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_DEACTIVATED =
          T.let(
            :"membership.deactivated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_TRIAL_ENDING_SOON =
          T.let(
            :"membership.trial_ending_soon",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        ENTRY_CREATED =
          T.let(
            :"entry.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        ENTRY_APPROVED =
          T.let(
            :"entry.approved",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        ENTRY_DENIED =
          T.let(
            :"entry.denied",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        ENTRY_DELETED =
          T.let(
            :"entry.deleted",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        EXPORT_COMPLETED =
          T.let(
            :"export.completed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        EXPORT_FAILED =
          T.let(
            :"export.failed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        SETUP_INTENT_REQUIRES_ACTION =
          T.let(
            :"setup_intent.requires_action",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        SETUP_INTENT_SUCCEEDED =
          T.let(
            :"setup_intent.succeeded",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        SETUP_INTENT_CANCELED =
          T.let(
            :"setup_intent.canceled",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        LEDGER_ACCOUNT_FUNDS_AVAILABLE =
          T.let(
            :"ledger_account.funds_available",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        SWAP_COMPLETED =
          T.let(
            :"swap.completed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        DEPOSIT_SUCCEEDED =
          T.let(
            :"deposit.succeeded",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        TRANSFER_CREATED =
          T.let(
            :"transfer.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        TRANSFER_COMPLETED =
          T.let(
            :"transfer.completed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        TRANSFER_FAILED =
          T.let(
            :"transfer.failed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        WITHDRAWAL_CREATED =
          T.let(
            :"withdrawal.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        WITHDRAWAL_UPDATED =
          T.let(
            :"withdrawal.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        WITHDRAWAL_REVERSED =
          T.let(
            :"withdrawal.reversed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYOUT_CREATED =
          T.let(
            :"payout.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYOUT_UPDATED =
          T.let(
            :"payout.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYOUT_REVERSED =
          T.let(
            :"payout.reversed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_TRANSACTION_CREATED =
          T.let(
            :"card_transaction.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_TRANSACTION_UPDATED =
          T.let(
            :"card_transaction.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_TRANSACTION_COMPLETED =
          T.let(
            :"card_transaction.completed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_TRANSACTION_DECLINED =
          T.let(
            :"card_transaction.declined",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_TRANSACTION_REVERSED =
          T.let(
            :"card_transaction.reversed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_CREATED =
          T.let(
            :"card.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_UPDATED =
          T.let(
            :"card.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_FROZEN =
          T.let(
            :"card.frozen",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_CANCELED =
          T.let(
            :"card.canceled",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_APPLICATION_CREATED =
          T.let(
            :"card_application.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_APPLICATION_UPDATED =
          T.let(
            :"card_application.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_APPLICATION_APPROVED =
          T.let(
            :"card_application.approved",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CARD_APPLICATION_DENIED =
          T.let(
            :"card_application.denied",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        COURSE_LESSON_INTERACTION_COMPLETED =
          T.let(
            :"course_lesson_interaction.completed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYOUT_METHOD_CREATED =
          T.let(
            :"payout_method.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        VERIFICATION_SUCCEEDED =
          T.let(
            :"verification.succeeded",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_APPROVED =
          T.let(
            :"identity_profile.approved",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_REJECTED =
          T.let(
            :"identity_profile.rejected",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_NEEDS_ACTION =
          T.let(
            :"identity_profile.needs_action",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        IDENTITY_PROFILE_UPDATED =
          T.let(
            :"identity_profile.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYOUT_ACCOUNT_STATUS_UPDATED =
          T.let(
            :"payout_account.status_updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_AUTHORIZED =
          T.let(
            :"payment.authorized",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_CANCELED =
          T.let(
            :"payment.canceled",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_CREATED =
          T.let(
            :"resolution_center_case.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_UPDATED =
          T.let(
            :"resolution_center_case.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        RESOLUTION_CENTER_CASE_DECIDED =
          T.let(
            :"resolution_center_case.decided",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PRODUCT_CREATED =
          T.let(
            :"product.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PRODUCT_UPDATED =
          T.let(
            :"product.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PRODUCT_DELETED =
          T.let(
            :"product.deleted",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PRODUCT_PUBLISHED =
          T.let(
            :"product.published",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PRODUCT_UNPUBLISHED =
          T.let(
            :"product.unpublished",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PLAN_CREATED =
          T.let(
            :"plan.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PLAN_UPDATED =
          T.let(
            :"plan.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PLAN_DELETED =
          T.let(
            :"plan.deleted",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        SHIPMENT_CREATED =
          T.let(
            :"shipment.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        SHIPMENT_UPDATED =
          T.let(
            :"shipment.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBER_CREATED =
          T.let(
            :"member.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        AD_CAMPAIGN_PAYMENT_FAILED =
          T.let(
            :"ad_campaign.payment_failed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CHAT_MESSAGE_CREATED =
          T.let(
            :"chat.message.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        CHAT_REACTION_CREATED =
          T.let(
            :"chat.reaction.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_CREATED =
          T.let(
            :"payment.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_SUCCEEDED =
          T.let(
            :"payment.succeeded",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :"payment.failed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_PENDING =
          T.let(
            :"payment.pending",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        DISPUTE_CREATED =
          T.let(
            :"dispute.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        DISPUTE_UPDATED =
          T.let(
            :"dispute.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        REFUND_CREATED =
          T.let(
            :"refund.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        REFUND_UPDATED =
          T.let(
            :"refund.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        DISPUTE_ALERT_CREATED =
          T.let(
            :"dispute_alert.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"membership.cancel_at_period_end_changed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_VALID =
          T.let(
            :"membership.went_valid",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_WENT_INVALID =
          T.let(
            :"membership.went_invalid",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_METADATA_UPDATED =
          T.let(
            :"membership.metadata_updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        RESOLUTION_CREATED =
          T.let(
            :"resolution.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        RESOLUTION_UPDATED =
          T.let(
            :"resolution.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        RESOLUTION_DECIDED =
          T.let(
            :"resolution.decided",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_AFFILIATE_REWARD_CREATED =
          T.let(
            :"payment.affiliate_reward_created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_EXPERIENCE_CLAIMED =
          T.let(
            :"membership.experience_claimed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_VALID =
          T.let(
            :"app_membership.went_valid",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_WENT_INVALID =
          T.let(
            :"app_membership.went_invalid",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        APP_PAYMENT_CREATED =
          T.let(
            :"app_payment.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        APP_PAYMENT_SUCCEEDED =
          T.let(
            :"app_payment.succeeded",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        APP_PAYMENT_FAILED =
          T.let(
            :"app_payment.failed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        APP_PAYMENT_PENDING =
          T.let(
            :"app_payment.pending",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        APP_MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"app_membership.cancel_at_period_end_changed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
