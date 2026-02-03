# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#update
    class WebhookUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute api_version
      #   The different API versions
      #
      #   @return [Symbol, WhopSDK::Models::APIVersion, nil]
      optional :api_version, enum: -> { WhopSDK::APIVersion }, nil?: true

      # @!attribute child_resource_events
      #   Whether or not to send events for child resources.
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
      #   @return [Array<Symbol, WhopSDK::Models::WebhookEvent>, nil]
      optional :events, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent] }, nil?: true

      # @!attribute url
      #   The URL to send the webhook to.
      #
      #   @return [String, nil]
      optional :url, String, nil?: true

      # @!method initialize(api_version: nil, child_resource_events: nil, enabled: nil, events: nil, url: nil, request_options: {})
      #   @param api_version [Symbol, WhopSDK::Models::APIVersion, nil] The different API versions
      #
      #   @param child_resource_events [Boolean, nil] Whether or not to send events for child resources.
      #
      #   @param enabled [Boolean, nil] Whether or not the webhook is enabled.
      #
      #   @param events [Array<Symbol, WhopSDK::Models::WebhookEvent>, nil] The events to send the webhook for.
      #
      #   @param url [String, nil] The URL to send the webhook to.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
