# frozen_string_literal: true

module WhopSDK
  module Models
    module Affiliates
      # Whether a rev-share override applies to a single product or all products
      module AffiliateAppliesToProducts
        extend WhopSDK::Internal::Type::Enum

        SINGLE_PRODUCT = :single_product
        ALL_PRODUCTS = :all_products

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    AffiliateAppliesToProducts = Affiliates::AffiliateAppliesToProducts
  end
end
