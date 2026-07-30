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

      sig { returns(String) }
      attr_accessor :id

      # The different API versions
      sig { returns(T.nilable(WhopSDK::APIVersion::OrSymbol)) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) to pin this webhook's payloads to:
      # events serialize exactly like a REST read at this version (the native serializer
      # where the resource has one). Only applies to v1 webhooks. Pass null to unpin,
      # returning to the legacy payload shape.
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

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
          id: String,
          api_version: T.nilable(WhopSDK::APIVersion::OrSymbol),
          api_version_date: T.nilable(String),
          child_resource_events: T.nilable(T::Boolean),
          enabled: T.nilable(T::Boolean),
          events: T.nilable(T::Array[WhopSDK::WebhookEvent::OrSymbol]),
          url: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The different API versions
        api_version: nil,
        # The dated API version (Api-Version-Date) to pin this webhook's payloads to:
        # events serialize exactly like a REST read at this version (the native serializer
        # where the resource has one). Only applies to v1 webhooks. Pass null to unpin,
        # returning to the legacy payload shape.
        api_version_date: nil,
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
            id: String,
            api_version: T.nilable(WhopSDK::APIVersion::OrSymbol),
            api_version_date: T.nilable(String),
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
