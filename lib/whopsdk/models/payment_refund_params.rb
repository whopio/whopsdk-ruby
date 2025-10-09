# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Payments#refund
    class PaymentRefundParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute partial_amount
      #   refund_payment | An amount if the refund is supposed to be partial.
      #
      #   @return [Float, nil]
      optional :partial_amount, Float, nil?: true

      # @!method initialize(partial_amount: nil, request_options: {})
      #   @param partial_amount [Float, nil] refund_payment | An amount if the refund is supposed to be partial.
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
