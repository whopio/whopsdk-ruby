# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#retrieve
    class Webhook < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the webhook
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

      # @!method initialize(id:, api_version:, child_resource_events:, created_at:, enabled:, events:, resource_id:, testable_events:, url:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Webhook}
      #   for more details.
      #
      #   A webhook object, which can be configured to be sent updates about a company
      #
      #   @param id [String] The ID of the webhook
      #
      #   @param api_version [Symbol, WhopSDK::Models::APIVersion] The API version for this webhook
      #
      #   @param child_resource_events [Boolean] Whether or not to send events for child resources. For example, if the webhook i
      #
      #   @param created_at [Time] The timestamp of when the webhook was created
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
    end
  end
end
