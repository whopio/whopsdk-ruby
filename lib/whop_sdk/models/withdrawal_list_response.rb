# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Withdrawals#list
    class WithdrawalListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Internal ID of the withdrawal request.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   How much money was attempted to be withdrawn, in a float type.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   When the withdrawal request was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the withdrawal request.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute fee_amount
      #   The fee amount that was charged for the withdrawal. This is in the same currency
      #   as the withdrawal amount.
      #
      #   @return [Float]
      required :fee_amount, Float

      # @!attribute fee_type
      #   The different fee types for a withdrawal.
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalFeeTypes, nil]
      required :fee_type, enum: -> { WhopSDK::WithdrawalFeeTypes }, nil?: true

      # @!attribute markup_fee
      #   The markup fee that was charged for the withdrawal. This is in the same currency
      #   as the withdrawal amount. This only applies to platform accounts using Whop
      #   Rails.
      #
      #   @return [Float]
      required :markup_fee, Float

      # @!attribute speed
      #   The speed of the withdrawal.
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalSpeeds]
      required :speed, enum: -> { WhopSDK::WithdrawalSpeeds }

      # @!attribute status
      #   Status of the withdrawal.
      #
      #   @return [Symbol, WhopSDK::Models::WithdrawalStatus]
      required :status, enum: -> { WhopSDK::WithdrawalStatus }

      # @!method initialize(id:, amount:, created_at:, currency:, fee_amount:, fee_type:, markup_fee:, speed:, status:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WithdrawalListResponse} for more details.
      #
      #   A withdrawal request.
      #
      #   @param id [String] Internal ID of the withdrawal request.
      #
      #   @param amount [Float] How much money was attempted to be withdrawn, in a float type.
      #
      #   @param created_at [Time] When the withdrawal request was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the withdrawal request.
      #
      #   @param fee_amount [Float] The fee amount that was charged for the withdrawal. This is in the same currency
      #
      #   @param fee_type [Symbol, WhopSDK::Models::WithdrawalFeeTypes, nil] The different fee types for a withdrawal.
      #
      #   @param markup_fee [Float] The markup fee that was charged for the withdrawal. This is in the same currency
      #
      #   @param speed [Symbol, WhopSDK::Models::WithdrawalSpeeds] The speed of the withdrawal.
      #
      #   @param status [Symbol, WhopSDK::Models::WithdrawalStatus] Status of the withdrawal.
    end
  end
end
