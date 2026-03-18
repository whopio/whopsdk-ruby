# typed: strong

module WhopSDK
  module Models
    AffiliatePayoutTypes = Affiliates::AffiliatePayoutTypes

    module Affiliates
      # The types of payouts an affiliate can have
      module AffiliatePayoutTypes
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Affiliates::AffiliatePayoutTypes)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE =
          T.let(
            :percentage,
            WhopSDK::Affiliates::AffiliatePayoutTypes::TaggedSymbol
          )
        FLAT_FEE =
          T.let(
            :flat_fee,
            WhopSDK::Affiliates::AffiliatePayoutTypes::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Affiliates::AffiliatePayoutTypes::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
