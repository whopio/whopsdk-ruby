# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Withdrawals#list
    class WithdrawalListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the withdrawal.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The withdrawal amount as a decimal number in the specified currency (e.g.,
      #   100.00 for $100.00 USD).
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   The datetime the withdrawal was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The three-letter ISO currency code for this withdrawal (e.g., 'usd', 'eur').
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute fee_amount
      #   The fee charged for processing this withdrawal, in the same currency as the
      #   withdrawal amount.
      #
      #   @return [Float]
      required :fee_amount, Float

      # @!attribute fee_type
      #   The different fee types for a withdrawal.
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalFeeTypes, nil]
      required :fee_type, enum: -> { WhopSDK::WithdrawalFeeTypes }, nil?: true

      # @!attribute markup_fee
      #   An additional markup fee charged for the withdrawal, in the same currency as the
      #   withdrawal amount. Only applies to platform accounts using Whop Rails.
      #
      #   @return [Float]
      required :markup_fee, Float

      # @!attribute speed
      #   The processing speed selected for this withdrawal ('standard' or 'instant').
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalSpeeds]
      required :speed, enum: -> { WhopSDK::WithdrawalSpeeds }

      # @!attribute status
      #   The computed lifecycle status of the withdrawal, accounting for the state of
      #   associated payouts (e.g., 'requested', 'in_transit', 'completed', 'failed').
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalStatus]
      required :status, enum: -> { WhopSDK::WithdrawalStatus }

      # @!method initialize(id:, amount:, created_at:, currency:, fee_amount:, fee_type:, markup_fee:, speed:, status:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WithdrawalListResponse} for more details.
      #
      #   A withdrawal represents a request to transfer funds from a ledger account to an
      #   external payout method.
      #
      #   @param id [String] The unique identifier for the withdrawal.
      #
      #   @param amount [Float] The withdrawal amount as a decimal number in the specified currency (e.g., 100.0
      #
      #   @param created_at [Time] The datetime the withdrawal was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for this withdrawal (e.g., 'usd', 'eur').
      #
      #   @param fee_amount [Float] The fee charged for processing this withdrawal, in the same currency as the with
      #
      #   @param fee_type [Symbol, WhopSDK::Models::WithdrawalFeeTypes, nil] The different fee types for a withdrawal.
      #
      #   @param markup_fee [Float] An additional markup fee charged for the withdrawal, in the same currency as the
      #
      #   @param speed [Symbol, WhopSDK::Models::WithdrawalSpeeds] The processing speed selected for this withdrawal ('standard' or 'instant').
      #
      #   @param status [Symbol, WhopSDK::Models::WithdrawalStatus] The computed lifecycle status of the withdrawal, accounting for the state of ass
    end
  end
end
