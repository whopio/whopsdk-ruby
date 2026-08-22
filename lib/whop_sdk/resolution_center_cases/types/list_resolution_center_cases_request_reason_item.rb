# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      module ListResolutionCenterCasesRequestReasonItem
        extend Whop_sdk::Internal::Types::Enum

        FRAUDULENT = "fraudulent"
        PRODUCT_NOT_RECEIVED = "product_not_received"
        NOT_AS_DESCRIBED = "not_as_described"
        PRODUCT_UNACCEPTABLE = "product_unacceptable"
        SUBSCRIPTION_CANCELED = "subscription_canceled"
      end
    end
  end
end
