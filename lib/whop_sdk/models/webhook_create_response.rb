# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#create
    class WebhookCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the webhook
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, WhopSDK::Models::WebhookCreateResponse::APIVersion]
      required :api_version, enum: -> { WhopSDK::Models::WebhookCreateResponse::APIVersion }

      # @!attribute child_resource_events
      #   Whether or not to send events for child resources. For example, if the webhook
      #   is created for a Company, enabling this will only send events from the Company's
      #   sub-merchants (child companies).
      #
      #   @return [Boolean]
      required :child_resource_events, WhopSDK::Internal::Type::Boolean

      # @!attribute created_at
      #   The timestamp of when the webhook was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute enabled
      #   Whether or not this webhook is turned on or not
      #
      #   @return [Boolean]
      required :enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute events
      #   The number of events this webhooks is configured to receive
      #
      #   @return [Array<Symbol, WhopSDK::Models::WebhookCreateResponse::Event>]
      required :events,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookCreateResponse::Event] }

      # @!attribute resource_id
      #   The resource ID
      #
      #   @return [String]
      required :resource_id, String

      # @!attribute testable_events
      #   The list of events that can be tested with this webhook
      #
      #   @return [Array<Symbol, WhopSDK::Models::WebhookCreateResponse::TestableEvent>]
      required :testable_events,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::WebhookCreateResponse::TestableEvent] }

      # @!attribute url
      #   The URL the webhook events will be sent to
      #
      #   @return [String]
      required :url, String

      # @!attribute webhook_secret
      #   A unique secret key that will be sent with each webhook event
      #
      #   @return [String]
      required :webhook_secret, String

      # @!method initialize(id:, api_version:, child_resource_events:, created_at:, enabled:, events:, resource_id:, testable_events:, url:, webhook_secret:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WebhookCreateResponse} for more details.
      #
      #   A webhook object, which can be configured to be sent updates about a company
      #
      #   @param id [String] The ID of the webhook
      #
      #   @param api_version [Symbol, WhopSDK::Models::WebhookCreateResponse::APIVersion] The API version for this webhook
      #
      #   @param child_resource_events [Boolean] Whether or not to send events for child resources. For example, if the webhook i
      #
      #   @param created_at [Time] The timestamp of when the webhook was created
      #
      #   @param enabled [Boolean] Whether or not this webhook is turned on or not
      #
      #   @param events [Array<Symbol, WhopSDK::Models::WebhookCreateResponse::Event>] The number of events this webhooks is configured to receive
      #
      #   @param resource_id [String] The resource ID
      #
      #   @param testable_events [Array<Symbol, WhopSDK::Models::WebhookCreateResponse::TestableEvent>] The list of events that can be tested with this webhook
      #
      #   @param url [String] The URL the webhook events will be sent to
      #
      #   @param webhook_secret [String] A unique secret key that will be sent with each webhook event

      # The API version for this webhook
      #
      # @see WhopSDK::Models::WebhookCreateResponse#api_version
      module APIVersion
        extend WhopSDK::Internal::Type::Enum

        V1 = :v1
        V2 = :v2
        V5 = :v5

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The different event types available
      module Event
        extend WhopSDK::Internal::Type::Enum

        INVOICE_CREATED = :"invoice.created"
        INVOICE_PAID = :"invoice.paid"
        INVOICE_PAST_DUE = :"invoice.past_due"
        INVOICE_VOIDED = :"invoice.voided"
        MEMBERSHIP_ACTIVATED = :"membership.activated"
        MEMBERSHIP_DEACTIVATED = :"membership.deactivated"
        ENTRY_CREATED = :"entry.created"
        ENTRY_APPROVED = :"entry.approved"
        ENTRY_DENIED = :"entry.denied"
        ENTRY_DELETED = :"entry.deleted"
        SETUP_INTENT_REQUIRES_ACTION = :"setup_intent.requires_action"
        SETUP_INTENT_SUCCEEDED = :"setup_intent.succeeded"
        SETUP_INTENT_CANCELED = :"setup_intent.canceled"
        WITHDRAWAL_CREATED = :"withdrawal.created"
        WITHDRAWAL_UPDATED = :"withdrawal.updated"
        COURSE_LESSON_INTERACTION_COMPLETED = :"course_lesson_interaction.completed"
        PAYOUT_METHOD_CREATED = :"payout_method.created"
        VERIFICATION_SUCCEEDED = :"verification.succeeded"
        PAYMENT_CREATED = :"payment.created"
        PAYMENT_SUCCEEDED = :"payment.succeeded"
        PAYMENT_FAILED = :"payment.failed"
        PAYMENT_PENDING = :"payment.pending"
        DISPUTE_CREATED = :"dispute.created"
        DISPUTE_UPDATED = :"dispute.updated"
        REFUND_CREATED = :"refund.created"
        REFUND_UPDATED = :"refund.updated"
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED = :"membership.cancel_at_period_end_changed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The different event types available
      module TestableEvent
        extend WhopSDK::Internal::Type::Enum

        INVOICE_CREATED = :"invoice.created"
        INVOICE_PAID = :"invoice.paid"
        INVOICE_PAST_DUE = :"invoice.past_due"
        INVOICE_VOIDED = :"invoice.voided"
        MEMBERSHIP_ACTIVATED = :"membership.activated"
        MEMBERSHIP_DEACTIVATED = :"membership.deactivated"
        ENTRY_CREATED = :"entry.created"
        ENTRY_APPROVED = :"entry.approved"
        ENTRY_DENIED = :"entry.denied"
        ENTRY_DELETED = :"entry.deleted"
        SETUP_INTENT_REQUIRES_ACTION = :"setup_intent.requires_action"
        SETUP_INTENT_SUCCEEDED = :"setup_intent.succeeded"
        SETUP_INTENT_CANCELED = :"setup_intent.canceled"
        WITHDRAWAL_CREATED = :"withdrawal.created"
        WITHDRAWAL_UPDATED = :"withdrawal.updated"
        COURSE_LESSON_INTERACTION_COMPLETED = :"course_lesson_interaction.completed"
        PAYOUT_METHOD_CREATED = :"payout_method.created"
        VERIFICATION_SUCCEEDED = :"verification.succeeded"
        PAYMENT_CREATED = :"payment.created"
        PAYMENT_SUCCEEDED = :"payment.succeeded"
        PAYMENT_FAILED = :"payment.failed"
        PAYMENT_PENDING = :"payment.pending"
        DISPUTE_CREATED = :"dispute.created"
        DISPUTE_UPDATED = :"dispute.updated"
        REFUND_CREATED = :"refund.created"
        REFUND_UPDATED = :"refund.updated"
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED = :"membership.cancel_at_period_end_changed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
