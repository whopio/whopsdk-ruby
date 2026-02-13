# typed: strong

module WhopSDK
  module Models
    class Webhook < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Webhook, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the webhook.
      sig { returns(String) }
      attr_accessor :id

      # The API version used to format payloads sent to this webhook endpoint.
      sig { returns(WhopSDK::APIVersion::TaggedSymbol) }
      attr_accessor :api_version

      # Whether events are sent for child resources. For example, if the webhook is on a
      # company, enabling this sends events only from the company's sub-merchants (child
      # companies).
      sig { returns(T::Boolean) }
      attr_accessor :child_resource_events

      # The datetime the webhook was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Whether this webhook endpoint is currently active and receiving events.
      sig { returns(T::Boolean) }
      attr_accessor :enabled

      # The list of event types this webhook is subscribed to.
      sig { returns(T::Array[WhopSDK::WebhookEvent::TaggedSymbol]) }
      attr_accessor :events

      # The ID of the resource (company or product) this webhook is attached to.
      sig { returns(String) }
      attr_accessor :resource_id

      # The subset of subscribed event types that support sending test payloads.
      sig { returns(T::Array[WhopSDK::WebhookEvent::TaggedSymbol]) }
      attr_accessor :testable_events

      # The destination URL where webhook payloads are delivered via HTTP POST.
      sig { returns(String) }
      attr_accessor :url

      # A webhook endpoint that receives event notifications for a company via HTTP
      # POST.
      sig do
        params(
          id: String,
          api_version: WhopSDK::APIVersion::OrSymbol,
          child_resource_events: T::Boolean,
          created_at: Time,
          enabled: T::Boolean,
          events: T::Array[WhopSDK::WebhookEvent::OrSymbol],
          resource_id: String,
          testable_events: T::Array[WhopSDK::WebhookEvent::OrSymbol],
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the webhook.
        id:,
        # The API version used to format payloads sent to this webhook endpoint.
        api_version:,
        # Whether events are sent for child resources. For example, if the webhook is on a
        # company, enabling this sends events only from the company's sub-merchants (child
        # companies).
        child_resource_events:,
        # The datetime the webhook was created.
        created_at:,
        # Whether this webhook endpoint is currently active and receiving events.
        enabled:,
        # The list of event types this webhook is subscribed to.
        events:,
        # The ID of the resource (company or product) this webhook is attached to.
        resource_id:,
        # The subset of subscribed event types that support sending test payloads.
        testable_events:,
        # The destination URL where webhook payloads are delivered via HTTP POST.
        url:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: WhopSDK::APIVersion::TaggedSymbol,
            child_resource_events: T::Boolean,
            created_at: Time,
            enabled: T::Boolean,
            events: T::Array[WhopSDK::WebhookEvent::TaggedSymbol],
            resource_id: String,
            testable_events: T::Array[WhopSDK::WebhookEvent::TaggedSymbol],
            url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
