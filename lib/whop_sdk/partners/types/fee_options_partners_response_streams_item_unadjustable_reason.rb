# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      module FeeOptionsPartnersResponseStreamsItemUnadjustableReason
        extend Whop_sdk::Internal::Types::Enum

        NO_MERCHANT_FEE = "no_merchant_fee"
        COMMISSION_FIXED = "commission_fixed"
        NO_HEADROOM = "no_headroom"
        FEE_UNAVAILABLE = "fee_unavailable"
      end
    end
  end
end
