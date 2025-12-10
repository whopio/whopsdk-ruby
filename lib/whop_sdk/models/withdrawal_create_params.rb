# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Withdrawals#create
    class WithdrawalCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   The amount to withdraw in the specified currency
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute company_id
      #   The ID of the company to withdraw from.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute currency
      #   The currency that is being withdrawn.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute payout_method_id
      #   The ID of the payout method to use for the withdrawal.
      #
      #   @return [String, nil]
      optional :payout_method_id, String, nil?: true

      # @!method initialize(amount:, company_id:, currency:, payout_method_id: nil, request_options: {})
      #   @param amount [Float] The amount to withdraw in the specified currency
      #
      #   @param company_id [String] The ID of the company to withdraw from.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency that is being withdrawn.
      #
      #   @param payout_method_id [String, nil] The ID of the payout method to use for the withdrawal.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
