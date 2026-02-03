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
      #   @return [Symbol, WhopSDK::Models::APIVersion, nil]
      optional :api_version, enum: -> { WhopSDK::APIVersion }, nil?: true

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
      #   @return [Array<Symbol, WhopSDK::Models::WebhookEvent>, nil]
      optional :events, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::WebhookEvent] }, nil?: true

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
      #   @param api_version [Symbol, WhopSDK::Models::APIVersion, nil] The different API versions
      #
      #   @param child_resource_events [Boolean, nil] Whether or not to send events for child resources. For example, if the webhook i
      #
      #   @param enabled [Boolean, nil] Whether or not the webhook is enabled.
      #
      #   @param events [Array<Symbol, WhopSDK::Models::WebhookEvent>, nil] The events to send the webhook for.
      #
      #   @param resource_id [String, nil] The resource to create the webhook for. By default this will use current company
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
