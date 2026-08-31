# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#create
    class WebhookCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute url
      #   The URL to send the webhook to.
      #
      #   @return [String]
      required :url, String

      # @!attribute body_api_version_date
      #   The dated API version (Api-Version-Date) to pin this webhook's payloads to. Omit
      #   to leave the webhook unpinned, tracking the current payload shape.
      #
      #   @return [String, nil]
      optional :body_api_version_date, String, api_name: :api_version_date, nil?: true

      # @!attribute child_resource_events
      #   Whether to send events for child resources. For example, if the webhook is
      #   created for an account, enabling this sends events only from its connected
      #   accounts.
      #
      #   @return [Boolean, nil]
      optional :child_resource_events, WhopSDK::Internal::Type::Boolean

      # @!attribute enabled
      #   Whether or not the webhook is enabled. Defaults to `true`.
      #
      #   @return [Boolean, nil]
      optional :enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute events
      #   The events to send the webhook for, in dot form (for example
      #   `payment.succeeded`).
      #
      #   @return [Array<Symbol, WhopSDK::Models::WebhookCreateParams::Event>, nil]
      optional :events, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookCreateParams::Event] }

      # @!attribute resource_id
      #   The account or app to create the webhook for. Defaults to the current account.
      #
      #   @return [String, nil]
      optional :resource_id, String, nil?: true

      # @!attribute header_api_version_date
      #
      #   @return [String, nil]
      optional :header_api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(url:, body_api_version_date: nil, child_resource_events: nil, enabled: nil, events: nil, resource_id: nil, header_api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WebhookCreateParams} for more details.
      #
      #   @param url [String] The URL to send the webhook to.
      #
      #   @param body_api_version_date [String, nil] The dated API version (Api-Version-Date) to pin this webhook's payloads to. Omit
      #
      #   @param child_resource_events [Boolean] Whether to send events for child resources. For example, if the webhook is creat
      #
      #   @param enabled [Boolean] Whether or not the webhook is enabled. Defaults to `true`.
      #
      #   @param events [Array<Symbol, WhopSDK::Models::WebhookCreateParams::Event>] The events to send the webhook for, in dot form (for example `payment.succeeded`
      #
      #   @param resource_id [String, nil] The account or app to create the webhook for. Defaults to the current account.
      #
      #   @param header_api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

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
        PAYMENT_CREATED_2 = :payment_created
        PAYMENT_SUCCEEDED = :"payment.succeeded"
        PAYMENT_SUCCEEDED_2 = :payment_succeeded
        PAYMENT_FAILED = :"payment.failed"
        PAYMENT_FAILED_2 = :payment_failed
        PAYMENT_PENDING = :"payment.pending"
        PAYMENT_PENDING_2 = :payment_pending
        DISPUTE_CREATED = :"dispute.created"
        DISPUTE_CREATED_2 = :dispute_created
        DISPUTE_UPDATED = :"dispute.updated"
        DISPUTE_UPDATED_2 = :dispute_updated
        REFUND_CREATED = :"refund.created"
        REFUND_CREATED_2 = :refund_created
        REFUND_UPDATED = :"refund.updated"
        REFUND_UPDATED_2 = :refund_updated
        DISPUTE_ALERT_CREATED = :"dispute_alert.created"
        DISPUTE_ALERT_CREATED_2 = :dispute_alert_created
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED = :"membership.cancel_at_period_end_changed"
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED_2 = :membership_cancel_at_period_end_changed
        MEMBERSHIP_WENT_VALID = :membership_went_valid
        MEMBERSHIP_WENT_VALID_2 = :"membership.went_valid"
        MEMBERSHIP_WENT_INVALID = :membership_went_invalid
        MEMBERSHIP_WENT_INVALID_2 = :"membership.went_invalid"
        MEMBERSHIP_METADATA_UPDATED = :membership_metadata_updated
        MEMBERSHIP_METADATA_UPDATED_2 = :"membership.metadata_updated"
        RESOLUTION_CREATED = :resolution_created
        RESOLUTION_CREATED_2 = :"resolution.created"
        RESOLUTION_UPDATED = :resolution_updated
        RESOLUTION_UPDATED_2 = :"resolution.updated"
        RESOLUTION_DECIDED = :resolution_decided
        RESOLUTION_DECIDED_2 = :"resolution.decided"
        PAYMENT_AFFILIATE_REWARD_CREATED = :payment_affiliate_reward_created
        PAYMENT_AFFILIATE_REWARD_CREATED_2 = :"payment.affiliate_reward_created"
        MEMBERSHIP_EXPERIENCE_CLAIMED = :membership_experience_claimed
        MEMBERSHIP_EXPERIENCE_CLAIMED_2 = :"membership.experience_claimed"
        APP_MEMBERSHIP_WENT_VALID = :app_membership_went_valid
        APP_MEMBERSHIP_WENT_VALID_2 = :"app_membership.went_valid"
        APP_MEMBERSHIP_WENT_INVALID = :app_membership_went_invalid
        APP_MEMBERSHIP_WENT_INVALID_2 = :"app_membership.went_invalid"
        APP_PAYMENT_CREATED = :app_payment_created
        APP_PAYMENT_CREATED_2 = :"app_payment.created"
        APP_PAYMENT_SUCCEEDED = :app_payment_succeeded
        APP_PAYMENT_SUCCEEDED_2 = :"app_payment.succeeded"
        APP_PAYMENT_FAILED = :app_payment_failed
        APP_PAYMENT_FAILED_2 = :"app_payment.failed"
        APP_PAYMENT_PENDING = :app_payment_pending
        APP_PAYMENT_PENDING_2 = :"app_payment.pending"
        APP_MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED = :app_membership_cancel_at_period_end_changed
        APP_MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED_2 = :"app_membership.cancel_at_period_end_changed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
