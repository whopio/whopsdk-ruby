# typed: strong

module WhopSDK
  module Models
    AffiliateOverrideRoles = Affiliates::AffiliateOverrideRoles

    module Affiliates
      # The role of an affiliate override (standard or rev_share)
      module AffiliateOverrideRoles
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Affiliates::AffiliateOverrideRoles)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STANDARD =
          T.let(
            :standard,
            WhopSDK::Affiliates::AffiliateOverrideRoles::TaggedSymbol
          )
        REV_SHARE =
          T.let(
            :rev_share,
            WhopSDK::Affiliates::AffiliateOverrideRoles::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Affiliates::AffiliateOverrideRoles::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
