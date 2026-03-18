# typed: strong

module WhopSDK
  module Models
    AffiliateAppliesToPayments = Affiliates::AffiliateAppliesToPayments

    module Affiliates
      # Whether the affiliate commission applies to the first payment or all payments
      module AffiliateAppliesToPayments
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Affiliates::AffiliateAppliesToPayments)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIRST_PAYMENT =
          T.let(
            :first_payment,
            WhopSDK::Affiliates::AffiliateAppliesToPayments::TaggedSymbol
          )
        ALL_PAYMENTS =
          T.let(
            :all_payments,
            WhopSDK::Affiliates::AffiliateAppliesToPayments::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Affiliates::AffiliateAppliesToPayments::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
