# typed: strong

module WhopSDK
  module Models
    module Affiliates
      class OverrideUpdateParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Affiliates::OverrideUpdateParams,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :override_id

        # Whether the affiliate commission applies to the first payment or all payments
        sig do
          returns(
            T.nilable(WhopSDK::Affiliates::AffiliateAppliesToPayments::OrSymbol)
          )
        end
        attr_accessor :applies_to_payments

        # The types of payouts an affiliate can have
        sig do
          returns(
            T.nilable(WhopSDK::Affiliates::AffiliatePayoutTypes::OrSymbol)
          )
        end
        attr_accessor :commission_type

        # The commission value (percentage 1-100 or flat fee in dollars).
        sig { returns(T.nilable(Float)) }
        attr_accessor :commission_value

        # The calculation method for affiliate rev-share percentages
        sig do
          returns(
            T.nilable(WhopSDK::Affiliates::AffiliateRevenueBases::OrSymbol)
          )
        end
        attr_accessor :revenue_basis

        sig do
          params(
            id: String,
            override_id: String,
            applies_to_payments:
              T.nilable(
                WhopSDK::Affiliates::AffiliateAppliesToPayments::OrSymbol
              ),
            commission_type:
              T.nilable(WhopSDK::Affiliates::AffiliatePayoutTypes::OrSymbol),
            commission_value: T.nilable(Float),
            revenue_basis:
              T.nilable(WhopSDK::Affiliates::AffiliateRevenueBases::OrSymbol),
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          override_id:,
          # Whether the affiliate commission applies to the first payment or all payments
          applies_to_payments: nil,
          # The types of payouts an affiliate can have
          commission_type: nil,
          # The commission value (percentage 1-100 or flat fee in dollars).
          commission_value: nil,
          # The calculation method for affiliate rev-share percentages
          revenue_basis: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              override_id: String,
              applies_to_payments:
                T.nilable(
                  WhopSDK::Affiliates::AffiliateAppliesToPayments::OrSymbol
                ),
              commission_type:
                T.nilable(WhopSDK::Affiliates::AffiliatePayoutTypes::OrSymbol),
              commission_value: T.nilable(Float),
              revenue_basis:
                T.nilable(WhopSDK::Affiliates::AffiliateRevenueBases::OrSymbol),
              request_options: WhopSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
