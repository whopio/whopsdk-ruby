# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # The ad's impressions in the hour so far. Zero when left out.
      class ReportStatsAdsRequestImpressions < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Integer }

        member -> { String }
      end
    end
  end
end
