# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#list
    class WebhookListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the webhook.
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version used to format payloads sent to this webhook endpoint.
      #
      #   @return [Symbol, WhopSDK::Models::APIVersion]
      required :api_version, enum: -> { WhopSDK::APIVersion }

      # @!attribute child_resource_events
      #   Whether events are sent for child resources. For example, if the webhook is on a
      #   company, enabling this sends events only from the company's sub-merchants (child
      #   companies).
      #
      #   @return [Boolean]
      required :child_resource_events, WhopSDK::Internal::Type::Boolean

      # @!attribute created_at
      #   The datetime the webhook was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute enabled
      #   Whether this webhook endpoint is currently active and receiving events.
      #
      #   @return [Boolean]
      required :enabled, WhopSDK::Internal::Type::Boolean

      # @!attribute events
      #   The list of event types this webhook is subscribed to.
      #
      #   @return [Array<Symbol, WhopSDK::Models::WebhookEvent>]
      required :events, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent] }

      # @!attribute url
      #   The destination URL where webhook payloads are delivered via HTTP POST.
      #
      #   @return [String]
      required :url, String

      # @!method initialize(id:, api_version:, child_resource_events:, created_at:, enabled:, events:, url:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WebhookListResponse} for more details.
      #
      #   A webhook endpoint that receives event notifications for a company via HTTP
      #   POST.
      #
      #   @param id [String] The unique identifier for the webhook.
      #
      #   @param api_version [Symbol, WhopSDK::Models::APIVersion] The API version used to format payloads sent to this webhook endpoint.
      #
      #   @param child_resource_events [Boolean] Whether events are sent for child resources. For example, if the webhook is on a
      #
      #   @param created_at [Time] The datetime the webhook was created.
      #
      #   @param enabled [Boolean] Whether this webhook endpoint is currently active and receiving events.
      #
      #   @param events [Array<Symbol, WhopSDK::Models::WebhookEvent>] The list of event types this webhook is subscribed to.
      #
      #   @param url [String] The destination URL where webhook payloads are delivered via HTTP POST.
    end
  end
end
