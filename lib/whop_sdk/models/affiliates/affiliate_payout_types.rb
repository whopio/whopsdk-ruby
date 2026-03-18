# frozen_string_literal: true

module WhopSDK
  module Models
    module Affiliates
      # The types of payouts an affiliate can have
      module AffiliatePayoutTypes
        extend WhopSDK::Internal::Type::Enum

        PERCENTAGE = :percentage
        FLAT_FEE = :flat_fee

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    AffiliatePayoutTypes = Affiliates::AffiliatePayoutTypes
  end
end
