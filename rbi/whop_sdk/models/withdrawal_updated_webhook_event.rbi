# typed: strong

module WhopSDK
  module Models
    class WithdrawalUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::WithdrawalUpdatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # A withdrawal represents a request to transfer funds from a company's ledger
      # account to an external payout method.
      sig { returns(WhopSDK::Withdrawal) }
      attr_reader :data

      sig { params(data: WhopSDK::Withdrawal::OrHash).void }
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
          data: WhopSDK::Withdrawal::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # A withdrawal represents a request to transfer funds from a company's ledger
        # account to an external payout method.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The company ID that this webhook event is associated with
        company_id: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"withdrawal.updated"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::Withdrawal,
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
