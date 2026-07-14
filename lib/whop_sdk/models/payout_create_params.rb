# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payouts#create
    class PayoutCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The account to pay out from (a biz\_ identifier).
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   The amount to pay out in the specified currency.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute payout_method_id
      #   The saved payout method to deliver to (a potk\_ identifier).
      #
      #   @return [String]
      required :payout_method_id, String

      # @!attribute currency
      #   The payout currency. Defaults to usd.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute idempotency_key
      #   A client-generated key that makes retries safe. Retrying with the same key
      #   returns the original payout instead of creating a second one.
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(account_id:, amount:, payout_method_id:, currency: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PayoutCreateParams} for more details.
      #
      #   @param account_id [String] The account to pay out from (a biz\_ identifier).
      #
      #   @param amount [Float] The amount to pay out in the specified currency.
      #
      #   @param payout_method_id [String] The saved payout method to deliver to (a potk\_ identifier).
      #
      #   @param currency [String] The payout currency. Defaults to usd.
      #
      #   @param idempotency_key [String] A client-generated key that makes retries safe. Retrying with the same key retur
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
