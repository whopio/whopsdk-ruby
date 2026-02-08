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

      # An object representing an identity verification session
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

      # The company ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      sig do
        params(
          id: String,
          data: WhopSDK::VerificationSucceededWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # An object representing an identity verification session
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The company ID that this webhook event is associated with
        company_id: nil,
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
            data: WhopSDK::VerificationSucceededWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            company_id: T.nilable(String)
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

        # The unique identifier for the verification.
        sig { returns(String) }
        attr_accessor :id

        # An error code for a verification attempt.
        sig { returns(T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol)) }
        attr_accessor :last_error_code

        # The last error reason that occurred during the verification.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_error_reason

        # The status of the verification.
        sig { returns(WhopSDK::VerificationStatus::TaggedSymbol) }
        attr_accessor :status

        # An object representing an identity verification session
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
          # The unique identifier for the verification.
          id:,
          # An error code for a verification attempt.
          last_error_code:,
          # The last error reason that occurred during the verification.
          last_error_reason:,
          # The status of the verification.
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
