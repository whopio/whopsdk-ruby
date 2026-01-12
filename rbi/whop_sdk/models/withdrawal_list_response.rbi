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

      # Internal ID of the withdrawal request.
      sig { returns(String) }
      attr_accessor :id

      # How much money was attempted to be withdrawn, in a float type.
      sig { returns(Float) }
      attr_accessor :amount

      # When the withdrawal request was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency of the withdrawal request.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The fee amount that was charged for the withdrawal. This is in the same currency
      # as the withdrawal amount.
      sig { returns(Float) }
      attr_accessor :fee_amount

      # The different fee types for a withdrawal.
      sig { returns(T.nilable(WhopSDK::WithdrawalFeeTypes::TaggedSymbol)) }
      attr_accessor :fee_type

      # The markup fee that was charged for the withdrawal. This is in the same currency
      # as the withdrawal amount. This only applies to platform accounts using Whop
      # Rails.
      sig { returns(Float) }
      attr_accessor :markup_fee

      # The speed of the withdrawal.
      sig { returns(WhopSDK::WithdrawalSpeeds::TaggedSymbol) }
      attr_accessor :speed

      # Status of the withdrawal.
      sig { returns(WhopSDK::WithdrawalStatus::TaggedSymbol) }
      attr_accessor :status

      # A withdrawal request.
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
        # Internal ID of the withdrawal request.
        id:,
        # How much money was attempted to be withdrawn, in a float type.
        amount:,
        # When the withdrawal request was created.
        created_at:,
        # The currency of the withdrawal request.
        currency:,
        # The fee amount that was charged for the withdrawal. This is in the same currency
        # as the withdrawal amount.
        fee_amount:,
        # The different fee types for a withdrawal.
        fee_type:,
        # The markup fee that was charged for the withdrawal. This is in the same currency
        # as the withdrawal amount. This only applies to platform accounts using Whop
        # Rails.
        markup_fee:,
        # The speed of the withdrawal.
        speed:,
        # Status of the withdrawal.
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
