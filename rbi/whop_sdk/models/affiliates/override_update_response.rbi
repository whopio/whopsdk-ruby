# typed: strong

module WhopSDK
  module Models
    module Affiliates
      class OverrideUpdateResponse < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::Affiliates::OverrideUpdateResponse,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the affiliate override.
        sig { returns(String) }
        attr_accessor :id

        # Whether the affiliate commission applies to the first payment or all payments
        sig do
          returns(
            T.nilable(
              WhopSDK::Affiliates::AffiliateAppliesToPayments::TaggedSymbol
            )
          )
        end
        attr_accessor :applies_to_payments

        # Whether a rev-share override applies to a single product or all products
        sig do
          returns(
            T.nilable(
              WhopSDK::Affiliates::AffiliateAppliesToProducts::TaggedSymbol
            )
          )
        end
        attr_accessor :applies_to_products

        # The checkout direct link for referrals (standard overrides only).
        sig { returns(T.nilable(String)) }
        attr_accessor :checkout_direct_link

        # The type of commission (percentage or flat_fee).
        sig { returns(WhopSDK::Affiliates::AffiliatePayoutTypes::TaggedSymbol) }
        attr_accessor :commission_type

        # The commission value (percentage 1-100 or flat fee in dollars).
        sig { returns(Float) }
        attr_accessor :commission_value

        # The type of override (standard or rev_share).
        sig do
          returns(WhopSDK::Affiliates::AffiliateOverrideRoles::TaggedSymbol)
        end
        attr_accessor :override_type

        # The plan ID (for standard overrides).
        sig { returns(T.nilable(String)) }
        attr_accessor :plan_id

        # The product page direct link for referrals (standard overrides only).
        sig { returns(T.nilable(String)) }
        attr_accessor :product_direct_link

        # The product ID (for rev-share overrides).
        sig { returns(T.nilable(String)) }
        attr_accessor :product_id

        # The calculation method for affiliate rev-share percentages
        sig do
          returns(
            T.nilable(WhopSDK::Affiliates::AffiliateRevenueBases::TaggedSymbol)
          )
        end
        attr_accessor :revenue_basis

        # The total earnings paid to this affiliate for referrals to this specific plan,
        # in USD.
        sig { returns(Float) }
        attr_accessor :total_referral_earnings_usd

        # An object storing information about the affiliate
        sig do
          params(
            id: String,
            applies_to_payments:
              T.nilable(
                WhopSDK::Affiliates::AffiliateAppliesToPayments::OrSymbol
              ),
            applies_to_products:
              T.nilable(
                WhopSDK::Affiliates::AffiliateAppliesToProducts::OrSymbol
              ),
            checkout_direct_link: T.nilable(String),
            commission_type:
              WhopSDK::Affiliates::AffiliatePayoutTypes::OrSymbol,
            commission_value: Float,
            override_type:
              WhopSDK::Affiliates::AffiliateOverrideRoles::OrSymbol,
            plan_id: T.nilable(String),
            product_direct_link: T.nilable(String),
            product_id: T.nilable(String),
            revenue_basis:
              T.nilable(WhopSDK::Affiliates::AffiliateRevenueBases::OrSymbol),
            total_referral_earnings_usd: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the affiliate override.
          id:,
          # Whether the affiliate commission applies to the first payment or all payments
          applies_to_payments:,
          # Whether a rev-share override applies to a single product or all products
          applies_to_products:,
          # The checkout direct link for referrals (standard overrides only).
          checkout_direct_link:,
          # The type of commission (percentage or flat_fee).
          commission_type:,
          # The commission value (percentage 1-100 or flat fee in dollars).
          commission_value:,
          # The type of override (standard or rev_share).
          override_type:,
          # The plan ID (for standard overrides).
          plan_id:,
          # The product page direct link for referrals (standard overrides only).
          product_direct_link:,
          # The product ID (for rev-share overrides).
          product_id:,
          # The calculation method for affiliate rev-share percentages
          revenue_basis:,
          # The total earnings paid to this affiliate for referrals to this specific plan,
          # in USD.
          total_referral_earnings_usd:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              applies_to_payments:
                T.nilable(
                  WhopSDK::Affiliates::AffiliateAppliesToPayments::TaggedSymbol
                ),
              applies_to_products:
                T.nilable(
                  WhopSDK::Affiliates::AffiliateAppliesToProducts::TaggedSymbol
                ),
              checkout_direct_link: T.nilable(String),
              commission_type:
                WhopSDK::Affiliates::AffiliatePayoutTypes::TaggedSymbol,
              commission_value: Float,
              override_type:
                WhopSDK::Affiliates::AffiliateOverrideRoles::TaggedSymbol,
              plan_id: T.nilable(String),
              product_direct_link: T.nilable(String),
              product_id: T.nilable(String),
              revenue_basis:
                T.nilable(
                  WhopSDK::Affiliates::AffiliateRevenueBases::TaggedSymbol
                ),
              total_referral_earnings_usd: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
