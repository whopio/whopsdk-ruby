# typed: strong

module WhopSDK
  module Models
    AffiliateAppliesToProducts = Affiliates::AffiliateAppliesToProducts

    module Affiliates
      # Whether a rev-share override applies to a single product or all products
      module AffiliateAppliesToProducts
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Affiliates::AffiliateAppliesToProducts)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SINGLE_PRODUCT =
          T.let(
            :single_product,
            WhopSDK::Affiliates::AffiliateAppliesToProducts::TaggedSymbol
          )
        ALL_PRODUCTS =
          T.let(
            :all_products,
            WhopSDK::Affiliates::AffiliateAppliesToProducts::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Affiliates::AffiliateAppliesToProducts::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
