# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#refund
    class PaymentRefundParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute partial_amount
      #   The amount to refund. For multi-currency payments, this is in the charge
      #   currency (what the buyer paid). For single-currency, this is in the payment
      #   currency. If omitted, the full payment amount is refunded.
      #
      #   @return [Float, nil]
      optional :partial_amount, Float, nil?: true

      # @!method initialize(id:, partial_amount: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentRefundParams} for more details.
      #
      #   @param id [String]
      #
      #   @param partial_amount [Float, nil] The amount to refund. For multi-currency payments, this is in the charge currenc
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
