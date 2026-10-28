# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # USD spent on the ad in the hour so far, to the cent.
      class ReportStatsAdsRequestSpend < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Integer }

        member -> { String }
      end
    end
  end
end
