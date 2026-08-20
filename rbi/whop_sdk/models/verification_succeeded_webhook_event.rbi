# typed: strong

module WhopSDK
  module Models
    class VerificationSucceededWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::VerificationSucceededWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      # An identity verification session used to confirm a person or entity's identity
      # for payout account eligibility.
      sig { returns(WhopSDK::VerificationSucceededWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::VerificationSucceededWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::VerificationSucceededWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        # An identity verification session used to confirm a person or entity's identity
        # for payout account eligibility.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"verification.succeeded"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::VerificationSucceededWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::VerificationSucceededWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The numeric id of the verification record.
        sig { returns(String) }
        attr_accessor :id

        # An error code for a verification attempt.
        sig { returns(T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol)) }
        attr_accessor :last_error_code

        # A human-readable explanation of the most recent verification error. Null if no
        # error has occurred.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_error_reason

        # The current status of this verification session.
        sig { returns(WhopSDK::VerificationStatus::TaggedSymbol) }
        attr_accessor :status

        # An identity verification session used to confirm a person or entity's identity
        # for payout account eligibility.
        sig do
          params(
            id: String,
            last_error_code:
              T.nilable(WhopSDK::VerificationErrorCode::OrSymbol),
            last_error_reason: T.nilable(String),
            status: WhopSDK::VerificationStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The numeric id of the verification record.
          id:,
          # An error code for a verification attempt.
          last_error_code:,
          # A human-readable explanation of the most recent verification error. Null if no
          # error has occurred.
          last_error_reason:,
          # The current status of this verification session.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              last_error_code:
                T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol),
              last_error_reason: T.nilable(String),
              status: WhopSDK::VerificationStatus::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
