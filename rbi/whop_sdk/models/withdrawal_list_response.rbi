# typed: strong

module WhopSDK
  module Models
    class WithdrawalListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WithdrawalListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the withdrawal.
      sig { returns(String) }
      attr_accessor :id

      # The withdrawal amount as a decimal number in the specified currency (e.g.,
      # 100.00 for $100.00 USD).
      sig { returns(Float) }
      attr_accessor :amount

      # The datetime the withdrawal was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The three-letter ISO currency code for this withdrawal (e.g., 'usd', 'eur').
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The fee charged for processing this withdrawal, in the same currency as the
      # withdrawal amount.
      sig { returns(Float) }
      attr_accessor :fee_amount

      # The different fee types for a withdrawal.
      sig { returns(T.nilable(WhopSDK::WithdrawalFeeTypes::TaggedSymbol)) }
      attr_accessor :fee_type

      # An additional markup fee charged for the withdrawal, in the same currency as the
      # withdrawal amount. Only applies to platform accounts using Whop Rails.
      sig { returns(Float) }
      attr_accessor :markup_fee

      # The processing speed selected for this withdrawal ('standard' or 'instant').
      sig { returns(WhopSDK::WithdrawalSpeeds::TaggedSymbol) }
      attr_accessor :speed

      # The computed lifecycle status of the withdrawal, accounting for the state of
      # associated payouts (e.g., 'requested', 'in_transit', 'completed', 'failed').
      sig { returns(WhopSDK::WithdrawalStatus::TaggedSymbol) }
      attr_accessor :status

      # A withdrawal represents a request to transfer funds from a company's ledger
      # account to an external payout method.
      sig do
        params(
          id: String,
          amount: Float,
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          fee_amount: Float,
          fee_type: T.nilable(WhopSDK::WithdrawalFeeTypes::OrSymbol),
          markup_fee: Float,
          speed: WhopSDK::WithdrawalSpeeds::OrSymbol,
          status: WhopSDK::WithdrawalStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the withdrawal.
        id:,
        # The withdrawal amount as a decimal number in the specified currency (e.g.,
        # 100.00 for $100.00 USD).
        amount:,
        # The datetime the withdrawal was created.
        created_at:,
        # The three-letter ISO currency code for this withdrawal (e.g., 'usd', 'eur').
        currency:,
        # The fee charged for processing this withdrawal, in the same currency as the
        # withdrawal amount.
        fee_amount:,
        # The different fee types for a withdrawal.
        fee_type:,
        # An additional markup fee charged for the withdrawal, in the same currency as the
        # withdrawal amount. Only applies to platform accounts using Whop Rails.
        markup_fee:,
        # The processing speed selected for this withdrawal ('standard' or 'instant').
        speed:,
        # The computed lifecycle status of the withdrawal, accounting for the state of
        # associated payouts (e.g., 'requested', 'in_transit', 'completed', 'failed').
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            fee_amount: Float,
            fee_type: T.nilable(WhopSDK::WithdrawalFeeTypes::TaggedSymbol),
            markup_fee: Float,
            speed: WhopSDK::WithdrawalSpeeds::TaggedSymbol,
            status: WhopSDK::WithdrawalStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
