# typed: strong

module WhopSDK
  module Models
    class IdentityProfileNeedsActionWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::IdentityProfileNeedsActionWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # A consolidated identity or business profile synced from verification provider
      # data.
      sig { returns(WhopSDK::IdentityProfile) }
      attr_reader :data

      sig { params(data: WhopSDK::IdentityProfile::OrHash).void }
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The company ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      sig do
        params(
          id: String,
          data: WhopSDK::IdentityProfile::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # A consolidated identity or business profile synced from verification provider
        # data.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The company ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"identity_profile.needs_action"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::IdentityProfile,
            timestamp: Time,
            type: Symbol,
            company_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
