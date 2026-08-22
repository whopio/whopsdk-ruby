# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountRecommendedActionAction
      extend Whop_sdk::Internal::Types::Enum

      THEME_BUSINESS = "theme_business"
      CREATE_PRODUCT = "create_product"
      CREATE_PLAN = "create_plan"
      VERIFY_IDENTITY = "verify_identity"
      CONNECT_AFFILIATE_PROGRAM = "connect_affiliate_program"
      CREATE_PROMOTION = "create_promotion"
      MIGRATE_FROM_STRIPE = "migrate_from_stripe"
      ACCEPT_FIRST_PAYMENT = "accept_first_payment"
      LAUNCH_FIRST_AD = "launch_first_ad"
      LAUNCH_DRAFT_CAMPAIGN = "launch_draft_campaign"
      INCREASE_AD_BUDGET = "increase_ad_budget"
      REFRESH_AD_CREATIVES = "refresh_ad_creatives"
      FIX_AD_BILLING = "fix_ad_billing"
      EXCLUDE_CUSTOMERS_FROM_ADS = "exclude_customers_from_ads"
      RETARGET_ABANDONED_CHECKOUTS = "retarget_abandoned_checkouts"
      FIX_FUNNEL_DROPOFF = "fix_funnel_dropoff"
      INVITE_TEAM_MEMBER = "invite_team_member"
      ENABLE_TAX_COLLECTION = "enable_tax_collection"
      CREATE_CARD = "create_card"
      APPLY_FOR_FINANCING = "apply_for_financing"
    end
  end
end
