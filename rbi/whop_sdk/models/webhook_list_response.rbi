# typed: strong

module WhopSDK
  module Models
    class WebhookListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WebhookListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the webhook.
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(WhopSDK::APIVersion::TaggedSymbol) }
      attr_accessor :api_version

      # Whether or not to send events for child resources. For example, if the webhook
      # is created for a Company, enabling this will only send events from the Company's
      # sub-merchants (child companies).
      sig { returns(T::Boolean) }
      attr_accessor :child_resource_events

      # The datetime the webhook was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Whether or not this webhook is turned on or not
      sig { returns(T::Boolean) }
      attr_accessor :enabled

      # The number of events this webhooks is configured to receive
      sig { returns(T::Array[WhopSDK::WebhookEvent::TaggedSymbol]) }
      attr_accessor :events

      # The URL the webhook events will be sent to
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
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the webhook.
        id:,
        # The API version for this webhook
        api_version:,
        # Whether or not to send events for child resources. For example, if the webhook
        # is created for a Company, enabling this will only send events from the Company's
        # sub-merchants (child companies).
        child_resource_events:,
        # The datetime the webhook was created.
        created_at:,
        # Whether or not this webhook is turned on or not
        enabled:,
        # The number of events this webhooks is configured to receive
        events:,
        # The URL the webhook events will be sent to
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
            url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
