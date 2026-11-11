# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # Ignored. An ad's clicks are its Whop pixel page views, which Whop counts when it shows the ad's stats.
      class ReportStatsAdsRequestClicks < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Integer }

        member -> { String }
      end
    end
  end
end
