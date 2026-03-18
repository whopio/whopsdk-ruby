# frozen_string_literal: true

module WhopSDK
  module Models
    module Affiliates
      # The calculation method for affiliate rev-share percentages
      module AffiliateRevenueBases
        extend WhopSDK::Internal::Type::Enum

        PRE_FEES = :pre_fees
        POST_FEES = :post_fees

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    AffiliateRevenueBases = Affiliates::AffiliateRevenueBases
  end
end
