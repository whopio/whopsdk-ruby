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

      # @!attribute api_version
      #   The different API versions
      #
      #   @return [Symbol, WhopSDK::Models::WebhookCreateParams::APIVersion, nil]
      optional :api_version, enum: -> { WhopSDK::WebhookCreateParams::APIVersion }, nil?: true

      # @!attribute child_resource_events
      #   Whether or not to send events for child resources. For example, if the webhook
      #   is created for a Company, enabling this will only send events from the Company's
      #   sub-merchants (child companies).
      #
      #   @return [Boolean, nil]
      optional :child_resource_events, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute enabled
      #   Whether or not the webhook is enabled.
      #
      #   @return [Boolean, nil]
      optional :enabled, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute events
      #   The events to send the webhook for.
      #
      #   @return [Array<Symbol, WhopSDK::Models::WebhookCreateParams::Event>, nil]
      optional :events,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookCreateParams::Event] },
               nil?: true

      # @!attribute resource_id
      #   The resource to create the webhook for. By default this will use current company
      #
      #   @return [String, nil]
      optional :resource_id, String, nil?: true

      # @!method initialize(url:, api_version: nil, child_resource_events: nil, enabled: nil, events: nil, resource_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WebhookCreateParams} for more details.
      #
      #   @param url [String] The URL to send the webhook to.
      #
      #   @param api_version [Symbol, WhopSDK::Models::WebhookCreateParams::APIVersion, nil] The different API versions
      #
      #   @param child_resource_events [Boolean, nil] Whether or not to send events for child resources. For example, if the webhook i
      #
      #   @param enabled [Boolean, nil] Whether or not the webhook is enabled.
      #
      #   @param events [Array<Symbol, WhopSDK::Models::WebhookCreateParams::Event>, nil] The events to send the webhook for.
      #
      #   @param resource_id [String, nil] The resource to create the webhook for. By default this will use current company
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The different API versions
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
    end
  end
end
