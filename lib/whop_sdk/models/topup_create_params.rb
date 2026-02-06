# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Topups#create
    class TopupCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   The amount to add to the balance. Provided as a number in the specified
      #   currency. Eg: 50.00 for $50.00 USD.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute company_id
      #   The ID of the company to add funds to.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute currency
      #   The currency of the top-up.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute payment_method_id
      #   The ID of the payment method to charge for the top-up.
      #
      #   @return [String]
      required :payment_method_id, String

      # @!method initialize(amount:, company_id:, currency:, payment_method_id:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TopupCreateParams} for more details.
      #
      #   @param amount [Float] The amount to add to the balance. Provided as a number in the specified currency
      #
      #   @param company_id [String] The ID of the company to add funds to.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the top-up.
      #
      #   @param payment_method_id [String] The ID of the payment method to charge for the top-up.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
