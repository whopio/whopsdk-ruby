# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#update
    class WebhookUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The different API versions
      #
      #   @return [Symbol, WhopSDK::Models::APIVersion, nil]
      optional :api_version, enum: -> { WhopSDK::APIVersion }, nil?: true

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) to pin this webhook's payloads to:
      #   events serialize exactly like a REST read at this version (the native serializer
      #   where the resource has one). Only applies to v1 webhooks. Pass null to unpin,
      #   returning to the legacy payload shape.
      #
      #   @return [String, nil]
      optional :api_version_date, String, nil?: true

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

      # @!method initialize(id:, api_version: nil, api_version_date: nil, child_resource_events: nil, enabled: nil, events: nil, url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WebhookUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param api_version [Symbol, WhopSDK::Models::APIVersion, nil] The different API versions
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) to pin this webhook's payloads to: even
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
