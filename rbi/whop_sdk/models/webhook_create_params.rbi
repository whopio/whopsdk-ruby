# typed: strong

module WhopSDK
  module Models
    class WebhookCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WebhookCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The URL to send the webhook to.
      sig { returns(String) }
      attr_accessor :url

      # The different API versions
      sig { returns(T.nilable(WhopSDK::APIVersion::OrSymbol)) }
      attr_accessor :api_version

      # Whether or not to send events for child resources. For example, if the webhook
      # is created for a Company, enabling this will only send events from the Company's
      # sub-merchants (child companies).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :child_resource_events

      # Whether or not the webhook is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :enabled

      # The events to send the webhook for.
      sig { returns(T.nilable(T::Array[WhopSDK::WebhookEvent::OrSymbol])) }
      attr_accessor :events

      # The resource to create the webhook for. By default this will use current company
      sig { returns(T.nilable(String)) }
      attr_accessor :resource_id

      sig do
        params(
          url: String,
          api_version: T.nilable(WhopSDK::APIVersion::OrSymbol),
          child_resource_events: T.nilable(T::Boolean),
          enabled: T.nilable(T::Boolean),
          events: T.nilable(T::Array[WhopSDK::WebhookEvent::OrSymbol]),
          resource_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The URL to send the webhook to.
        url:,
        # The different API versions
        api_version: nil,
        # Whether or not to send events for child resources. For example, if the webhook
        # is created for a Company, enabling this will only send events from the Company's
        # sub-merchants (child companies).
        child_resource_events: nil,
        # Whether or not the webhook is enabled.
        enabled: nil,
        # The events to send the webhook for.
        events: nil,
        # The resource to create the webhook for. By default this will use current company
        resource_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            api_version: T.nilable(WhopSDK::APIVersion::OrSymbol),
            child_resource_events: T.nilable(T::Boolean),
            enabled: T.nilable(T::Boolean),
            events: T.nilable(T::Array[WhopSDK::WebhookEvent::OrSymbol]),
            resource_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
