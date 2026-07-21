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

      # @!attribute idempotency_key
      #   A client-generated key that makes retries safe. Retrying with the same key
      #   returns the original withdrawal instead of creating a second one.
      #
      #   @return [String, nil]
      optional :idempotency_key, String, nil?: true

      # @!attribute payout_method_id
      #   The ID of the payout method to use for the withdrawal.
      #
      #   @return [String, nil]
      optional :payout_method_id, String, nil?: true

      # @!attribute platform_covers_fees
      #   Whether the platform covers the payout fees.
      #
      #   @return [Boolean, nil]
      optional :platform_covers_fees, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute statement_descriptor
      #   Custom statement descriptor for the withdrawal. Must be between 5 and 22
      #   characters and contain only alphanumeric characters.
      #
      #   @return [String, nil]
      optional :statement_descriptor, String, nil?: true

      # @!method initialize(amount:, company_id:, currency:, idempotency_key: nil, payout_method_id: nil, platform_covers_fees: nil, statement_descriptor: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WithdrawalCreateParams} for more details.
      #
      #   @param amount [Float] The amount to withdraw in the specified currency
      #
      #   @param company_id [String] The ID of the company to withdraw from.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency that is being withdrawn.
      #
      #   @param idempotency_key [String, nil] A client-generated key that makes retries safe. Retrying with the same key retur
      #
      #   @param payout_method_id [String, nil] The ID of the payout method to use for the withdrawal.
      #
      #   @param platform_covers_fees [Boolean, nil] Whether the platform covers the payout fees.
      #
      #   @param statement_descriptor [String, nil] Custom statement descriptor for the withdrawal. Must be between 5 and 22 charact
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
