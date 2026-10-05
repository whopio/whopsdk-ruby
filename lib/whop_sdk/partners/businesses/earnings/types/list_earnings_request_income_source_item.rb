# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          module ListEarningsRequestIncomeSourceItem
            extend Whop_sdk::Internal::Types::Enum

            SALES = "sales"
            AD_SPEND = "ad_spend"
            TRANSFER = "transfer"
            CARD_INTERCHANGE = "card_interchange"
            WITHDRAWAL = "withdrawal"
            ONBOARDING_REWARD = "onboarding_reward"
            PARTNER_REWARD = "partner_reward"
            VERIFIED_PARTNER_REFERRAL_PAYBACK = "verified_partner_referral_payback"
          end
        end
      end
    end
  end
end
