# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#refund
    class PaymentRefundParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute partial_amount
      #   An amount if the refund is supposed to be partial.
      #
      #   @return [Float, nil]
      optional :partial_amount, Float, nil?: true

      # @!method initialize(partial_amount: nil, request_options: {})
      #   @param partial_amount [Float, nil] An amount if the refund is supposed to be partial.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
