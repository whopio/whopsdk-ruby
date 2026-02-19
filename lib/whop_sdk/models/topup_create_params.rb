# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Topups#create
    class TopupCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   The amount to add to the balance in the specified currency. For example, 50.00
      #   for $50.00 USD.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute company_id
      #   The unique identifier of the company to add funds to, starting with 'biz\_'.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute currency
      #   The currency for the top-up amount, such as 'usd'.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute payment_method_id
      #   The unique identifier of the stored payment method to charge for the top-up.
      #
      #   @return [String]
      required :payment_method_id, String

      # @!method initialize(amount:, company_id:, currency:, payment_method_id:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TopupCreateParams} for more details.
      #
      #   @param amount [Float] The amount to add to the balance in the specified currency. For example, 50.00 f
      #
      #   @param company_id [String] The unique identifier of the company to add funds to, starting with 'biz\_'.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency for the top-up amount, such as 'usd'.
      #
      #   @param payment_method_id [String] The unique identifier of the stored payment method to charge for the top-up.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
