# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class ReportStatsAdsRequest < Internal::Types::Model
        field :ad_id, -> { String }, optional: false, nullable: false

        field :clicks, -> { Whop_sdk::Ads::Types::ReportStatsAdsRequestClicks }, optional: true, nullable: false

        field :hour_started_at, -> { String }, optional: false, nullable: false

        field :impressions, -> { Whop_sdk::Ads::Types::ReportStatsAdsRequestImpressions }, optional: true, nullable: false

        field :spend, -> { Whop_sdk::Ads::Types::ReportStatsAdsRequestSpend }, optional: false, nullable: false
      end
    end
  end
end
