# typed: strong

module WhopSDK
  module Models
    class WebhookUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WebhookUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The different API versions
      sig { returns(T.nilable(WhopSDK::APIVersion::OrSymbol)) }
      attr_accessor :api_version

      # Whether or not to send events for child resources.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :child_resource_events

      # Whether or not the webhook is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :enabled

      # The events to send the webhook for.
      sig { returns(T.nilable(T::Array[WhopSDK::WebhookEvent::OrSymbol])) }
      attr_accessor :events

      # The URL to send the webhook to.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      sig do
        params(
          api_version: T.nilable(WhopSDK::APIVersion::OrSymbol),
          child_resource_events: T.nilable(T::Boolean),
          enabled: T.nilable(T::Boolean),
          events: T.nilable(T::Array[WhopSDK::WebhookEvent::OrSymbol]),
          url: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The different API versions
        api_version: nil,
        # Whether or not to send events for child resources.
        child_resource_events: nil,
        # Whether or not the webhook is enabled.
        enabled: nil,
        # The events to send the webhook for.
        events: nil,
        # The URL to send the webhook to.
        url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            api_version: T.nilable(WhopSDK::APIVersion::OrSymbol),
            child_resource_events: T.nilable(T::Boolean),
            enabled: T.nilable(T::Boolean),
            events: T.nilable(T::Array[WhopSDK::WebhookEvent::OrSymbol]),
            url: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
