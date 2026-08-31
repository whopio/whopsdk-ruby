# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#list
    class WebhookListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Webhook ID, prefixed `hook_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version used to format payloads sent to this webhook endpoint.
      #
      #   @return [Symbol, WhopSDK::Models::WebhookListResponse::APIVersion]
      required :api_version, enum: -> { WhopSDK::Models::WebhookListResponse::APIVersion }

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) that v1 payloads for this endpoint are
      #   pinned to: events serialize exactly like a REST read at this version (the native
      #   serializer where the resource has one). Null when unpinned — legacy (v2/v5)
      #   webhooks, and v1 webhooks on the legacy payload shape.
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute child_resource_events
      #   Whether events are sent for child resources. For example, if the webhook is on
      #   an account, enabling this sends events only from its connected accounts.
      #
      #   @return [Boolean]
      required :child_resource_events, WhopSDK::Internal::Type::Boolean

      # @!attribute consecutive_failures
      #   Number of consecutive deliveries whose first attempt to this endpoint failed
      #   since it last accepted one. Later retries of the same delivery do not increment
      #   it. Resets to `0` when a delivery succeeds or the webhook is re-enabled.
      #
      #   @return [Integer]
      required :consecutive_failures, Integer

      # @!attribute created_at
      #   When the webhook was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute disabled_at
      #   When Whop automatically disabled this webhook, as an ISO 8601 timestamp. `null`
      #   unless the webhook was disabled by Whop; a webhook you disabled yourself has
      #   `enabled: false` and a `null` `disabled_at`.
      #
      #   @return [String, nil]
      required :disabled_at, String, nil?: true

      # @!attribute disabled_reason
      #   Why Whop disabled this webhook. `delivery_failures` means every delivery failed
      #   for 3 days straight. `null` when `disabled_at` is `null`.
      #
      #   @return [Symbol, WhopSDK::Models::WebhookListResponse::DisabledReason, nil]
      required :disabled_reason, enum: -> { WhopSDK::Models::WebhookListResponse::DisabledReason }, nil?: true

      # @!attribute enabled
      #   Whether this webhook endpoint is currently active and receiving events.
      #
      #   @return [Boolean]
      required :enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute events
      #
      #   @return [Array<Symbol, WhopSDK::Models::WebhookListResponse::Event>]
      required :events,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookListResponse::Event] }

      # @!attribute failing_since
      #   When the current failure streak began, as an ISO 8601 timestamp. Unlike
      #   `last_failure_at`, this is set on the streak's first failed attempt, so it shows
      #   an endpoint that is failing right now. `null` when the endpoint is healthy.
      #
      #   @return [String, nil]
      required :failing_since, String, nil?: true

      # @!attribute last_failure_at
      #   When a delivery to this endpoint most recently failed after exhausting retries,
      #   as an ISO 8601 timestamp. `null` if no delivery has ever failed.
      #
      #   @return [String, nil]
      required :last_failure_at, String, nil?: true

      # @!attribute resource_id
      #   ID of the resource (account or app) this webhook is attached to.
      #
      #   @return [String]
      required :resource_id, String

      # @!attribute url
      #   Destination URL where webhook payloads are delivered via HTTP POST.
      #
      #   @return [String]
      required :url, String

      # @!attribute webhook_secret
      #   Secret key used to sign webhook payloads for verification. Include this in your
      #   HMAC validation logic. Returned on the create response and to interactive
      #   dashboard sessions; `null` for API-key and OAuth callers on later reads.
      #
      #   @return [String, nil]
      required :webhook_secret, String, nil?: true

      # @!method initialize(id:, api_version:, api_version_date:, child_resource_events:, consecutive_failures:, created_at:, disabled_at:, disabled_reason:, enabled:, events:, failing_since:, last_failure_at:, resource_id:, url:, webhook_secret:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WebhookListResponse} for more details.
      #
      #   @param id [String] Webhook ID, prefixed `hook_`.
      #
      #   @param api_version [Symbol, WhopSDK::Models::WebhookListResponse::APIVersion] The API version used to format payloads sent to this webhook endpoint.
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) that v1 payloads for this endpoint are
      #
      #   @param child_resource_events [Boolean] Whether events are sent for child resources. For example, if the webhook is on a
      #
      #   @param consecutive_failures [Integer] Number of consecutive deliveries whose first attempt to this endpoint failed sin
      #
      #   @param created_at [String] When the webhook was created, as an ISO 8601 timestamp.
      #
      #   @param disabled_at [String, nil] When Whop automatically disabled this webhook, as an ISO 8601 timestamp. `null`
      #
      #   @param disabled_reason [Symbol, WhopSDK::Models::WebhookListResponse::DisabledReason, nil] Why Whop disabled this webhook. `delivery_failures` means every delivery failed
      #
      #   @param enabled [Boolean] Whether this webhook endpoint is currently active and receiving events.
      #
      #   @param events [Array<Symbol, WhopSDK::Models::WebhookListResponse::Event>]
      #
      #   @param failing_since [String, nil] When the current failure streak began, as an ISO 8601 timestamp. Unlike `last_fa
      #
      #   @param last_failure_at [String, nil] When a delivery to this endpoint most recently failed after exhausting retries,
      #
      #   @param resource_id [String] ID of the resource (account or app) this webhook is attached to.
      #
      #   @param url [String] Destination URL where webhook payloads are delivered via HTTP POST.
      #
      #   @param webhook_secret [String, nil] Secret key used to sign webhook payloads for verification. Include this in your

      # The API version used to format payloads sent to this webhook endpoint.
      #
      # @see WhopSDK::Models::WebhookListResponse#api_version
      module APIVersion
        extend WhopSDK::Internal::Type::Enum

        V1 = :v1
        V2 = :v2
        V5 = :v5

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Why Whop disabled this webhook. `delivery_failures` means every delivery failed
      # for 3 days straight. `null` when `disabled_at` is `null`.
      #
      # @see WhopSDK::Models::WebhookListResponse#disabled_reason
      module DisabledReason
        extend WhopSDK::Internal::Type::Enum

        DELIVERY_FAILURES = :delivery_failures

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Event types this webhook is subscribed to, in dot form (for example
      # `payment.succeeded`).
      module Event
        extend WhopSDK::Internal::Type::Enum

        ACCOUNT_UPDATED = :"account.updated"
        INVOICE_CREATED = :"invoice.created"
        INVOICE_MARKED_UNCOLLECTIBLE = :"invoice.marked_uncollectible"
        INVOICE_PAID = :"invoice.paid"
        INVOICE_PAST_DUE = :"invoice.past_due"
        INVOICE_VOIDED = :"invoice.voided"
        MEMBERSHIP_ACTIVATED = :"membership.activated"
        MEMBERSHIP_DEACTIVATED = :"membership.deactivated"
        MEMBERSHIP_TRIAL_ENDING_SOON = :"membership.trial_ending_soon"
        ENTRY_CREATED = :"entry.created"
        ENTRY_APPROVED = :"entry.approved"
        ENTRY_DENIED = :"entry.denied"
        ENTRY_DELETED = :"entry.deleted"
        EXPORT_COMPLETED = :"export.completed"
        EXPORT_FAILED = :"export.failed"
        SETUP_INTENT_REQUIRES_ACTION = :"setup_intent.requires_action"
        SETUP_INTENT_SUCCEEDED = :"setup_intent.succeeded"
        SETUP_INTENT_CANCELED = :"setup_intent.canceled"
        LEDGER_ACCOUNT_FUNDS_AVAILABLE = :"ledger_account.funds_available"
        SWAP_COMPLETED = :"swap.completed"
        DEPOSIT_SUCCEEDED = :"deposit.succeeded"
        TRANSFER_CREATED = :"transfer.created"
        TRANSFER_COMPLETED = :"transfer.completed"
        TRANSFER_FAILED = :"transfer.failed"
        WITHDRAWAL_CREATED = :"withdrawal.created"
        WITHDRAWAL_UPDATED = :"withdrawal.updated"
        WITHDRAWAL_REVERSED = :"withdrawal.reversed"
        PAYOUT_CREATED = :"payout.created"
        PAYOUT_UPDATED = :"payout.updated"
        PAYOUT_REVERSED = :"payout.reversed"
        CARD_TRANSACTION_CREATED = :"card_transaction.created"
        CARD_TRANSACTION_UPDATED = :"card_transaction.updated"
        CARD_TRANSACTION_COMPLETED = :"card_transaction.completed"
        CARD_TRANSACTION_DECLINED = :"card_transaction.declined"
        CARD_TRANSACTION_REVERSED = :"card_transaction.reversed"
        CARD_CREATED = :"card.created"
        CARD_UPDATED = :"card.updated"
        CARD_FROZEN = :"card.frozen"
        CARD_CANCELED = :"card.canceled"
        CARD_APPLICATION_CREATED = :"card_application.created"
        CARD_APPLICATION_UPDATED = :"card_application.updated"
        CARD_APPLICATION_APPROVED = :"card_application.approved"
        CARD_APPLICATION_DENIED = :"card_application.denied"
        COURSE_LESSON_INTERACTION_COMPLETED = :"course_lesson_interaction.completed"
        PAYOUT_METHOD_CREATED = :"payout_method.created"
        VERIFICATION_SUCCEEDED = :"verification.succeeded"
        IDENTITY_PROFILE_APPROVED = :"identity_profile.approved"
        IDENTITY_PROFILE_REJECTED = :"identity_profile.rejected"
        IDENTITY_PROFILE_NEEDS_ACTION = :"identity_profile.needs_action"
        IDENTITY_PROFILE_UPDATED = :"identity_profile.updated"
        PAYOUT_ACCOUNT_STATUS_UPDATED = :"payout_account.status_updated"
        PAYMENT_AUTHORIZED = :"payment.authorized"
        PAYMENT_CANCELED = :"payment.canceled"
        RESOLUTION_CENTER_CASE_CREATED = :"resolution_center_case.created"
        RESOLUTION_CENTER_CASE_UPDATED = :"resolution_center_case.updated"
        RESOLUTION_CENTER_CASE_DECIDED = :"resolution_center_case.decided"
        PRODUCT_CREATED = :"product.created"
        PRODUCT_UPDATED = :"product.updated"
        PRODUCT_DELETED = :"product.deleted"
        PRODUCT_PUBLISHED = :"product.published"
        PRODUCT_UNPUBLISHED = :"product.unpublished"
        PLAN_CREATED = :"plan.created"
        PLAN_UPDATED = :"plan.updated"
        PLAN_DELETED = :"plan.deleted"
        SHIPMENT_CREATED = :"shipment.created"
        SHIPMENT_UPDATED = :"shipment.updated"
        MEMBER_CREATED = :"member.created"
        AD_CAMPAIGN_PAYMENT_FAILED = :"ad_campaign.payment_failed"
        CHAT_MESSAGE_CREATED = :"chat.message.created"
        CHAT_REACTION_CREATED = :"chat.reaction.created"
        PAYMENT_CREATED = :"payment.created"
        PAYMENT_SUCCEEDED = :"payment.succeeded"
        PAYMENT_FAILED = :"payment.failed"
        PAYMENT_PENDING = :"payment.pending"
        DISPUTE_CREATED = :"dispute.created"
        DISPUTE_UPDATED = :"dispute.updated"
        REFUND_CREATED = :"refund.created"
        REFUND_UPDATED = :"refund.updated"
        DISPUTE_ALERT_CREATED = :"dispute_alert.created"
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED = :"membership.cancel_at_period_end_changed"
        MEMBERSHIP_WENT_VALID = :"membership.went_valid"
        MEMBERSHIP_WENT_INVALID = :"membership.went_invalid"
        MEMBERSHIP_METADATA_UPDATED = :"membership.metadata_updated"
        RESOLUTION_CREATED = :"resolution.created"
        RESOLUTION_UPDATED = :"resolution.updated"
        RESOLUTION_DECIDED = :"resolution.decided"
        PAYMENT_AFFILIATE_REWARD_CREATED = :"payment.affiliate_reward_created"
        MEMBERSHIP_EXPERIENCE_CLAIMED = :"membership.experience_claimed"
        APP_MEMBERSHIP_WENT_VALID = :"app_membership.went_valid"
        APP_MEMBERSHIP_WENT_INVALID = :"app_membership.went_invalid"
        APP_PAYMENT_CREATED = :"app_payment.created"
        APP_PAYMENT_SUCCEEDED = :"app_payment.succeeded"
        APP_PAYMENT_FAILED = :"app_payment.failed"
        APP_PAYMENT_PENDING = :"app_payment.pending"
        APP_MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED = :"app_membership.cancel_at_period_end_changed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
