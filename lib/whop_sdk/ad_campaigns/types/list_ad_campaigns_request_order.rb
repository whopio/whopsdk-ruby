# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      module ListAdCampaignsRequestOrder
        extend Whop_sdk::Internal::Types::Enum

        CREATED_AT = "created_at"
        UPDATED_AT = "updated_at"
        SPEND = "spend"
        IMPRESSIONS = "impressions"
        REACH = "reach"
        CLICKS = "clicks"
        UNIQUE_CLICKS = "unique_clicks"
        FREQUENCY = "frequency"
        CLICK_THROUGH_RATE = "click_through_rate"
        RESULTS = "results"
        COST_PER_MILLE = "cost_per_mille"
        COST_PER_CLICK = "cost_per_click"
        COST_PER_RESULT = "cost_per_result"
        RETURN_ON_AD_SPEND = "return_on_ad_spend"
      end
    end
  end
end
