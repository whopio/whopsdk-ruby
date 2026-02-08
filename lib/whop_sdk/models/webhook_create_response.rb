# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#create
    class WebhookCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the webhook.
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, WhopSDK::Models::APIVersion]
      required :api_version, enum: -> { WhopSDK::APIVersion }

      # @!attribute child_resource_events
      #   Whether or not to send events for child resources. For example, if the webhook
      #   is created for a Company, enabling this will only send events from the Company's
      #   sub-merchants (child companies).
      #
      #   @return [Boolean]
      required :child_resource_events, WhopSDK::Internal::Type::Boolean

      # @!attribute created_at
      #   The datetime the webhook was created.
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
      #   @return [Array<Symbol, WhopSDK::Models::WebhookEvent>]
      required :events, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent] }

      # @!attribute resource_id
      #   The resource ID
      #
      #   @return [String]
      required :resource_id, String

      # @!attribute testable_events
      #   The list of events that can be tested with this webhook
      #
      #   @return [Array<Symbol, WhopSDK::Models::WebhookEvent>]
      required :testable_events, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent] }

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
      #   A webhook endpoint that receives event notifications for a company via HTTP
      #   POST.
      #
      #   @param id [String] The unique identifier for the webhook.
      #
      #   @param api_version [Symbol, WhopSDK::Models::APIVersion] The API version for this webhook
      #
      #   @param child_resource_events [Boolean] Whether or not to send events for child resources. For example, if the webhook i
      #
      #   @param created_at [Time] The datetime the webhook was created.
      #
      #   @param enabled [Boolean] Whether or not this webhook is turned on or not
      #
      #   @param events [Array<Symbol, WhopSDK::Models::WebhookEvent>] The number of events this webhooks is configured to receive
      #
      #   @param resource_id [String] The resource ID
      #
      #   @param testable_events [Array<Symbol, WhopSDK::Models::WebhookEvent>] The list of events that can be tested with this webhook
      #
      #   @param url [String] The URL the webhook events will be sent to
      #
      #   @param webhook_secret [String] A unique secret key that will be sent with each webhook event
    end
  end
end
