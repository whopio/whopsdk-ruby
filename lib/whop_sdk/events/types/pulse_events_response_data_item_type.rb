# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      module PulseEventsResponseDataItemType
        extend Whop_sdk::Internal::Types::Enum

        PURCHASE = "purchase"
        AFFILIATE_COMMISSION = "affiliate_commission"
        CARD_SPEND = "card_spend"
        AD_SPEND = "ad_spend"
        APP_REVENUE = "app_revenue"
        OFF_PLATFORM_SALE = "off_platform_sale"
        DEPOSIT = "deposit"
        CARD_LOAD = "card_load"
        AIRDROP_CLAIM = "airdrop_claim"
        TRANSFER = "transfer"
        REFERRAL_BONUS = "referral_bonus"
      end
    end
  end
end
