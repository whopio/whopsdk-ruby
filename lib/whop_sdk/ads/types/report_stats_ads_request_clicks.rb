# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # The ad's clicks in the hour so far, at most `impressions`. Zero when left out.
      class ReportStatsAdsRequestClicks < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Integer }

        member -> { String }
      end
    end
  end
end
