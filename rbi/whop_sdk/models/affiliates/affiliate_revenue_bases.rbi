# typed: strong

module WhopSDK
  module Models
    AffiliateRevenueBases = Affiliates::AffiliateRevenueBases

    module Affiliates
      # The calculation method for affiliate rev-share percentages
      module AffiliateRevenueBases
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Affiliates::AffiliateRevenueBases)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRE_FEES =
          T.let(
            :pre_fees,
            WhopSDK::Affiliates::AffiliateRevenueBases::TaggedSymbol
          )
        POST_FEES =
          T.let(
            :post_fees,
            WhopSDK::Affiliates::AffiliateRevenueBases::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Affiliates::AffiliateRevenueBases::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
