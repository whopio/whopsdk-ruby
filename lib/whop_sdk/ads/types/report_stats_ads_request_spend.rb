# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      # The USD to be paid for the ad's hour so far, to the cent: what the ad spent plus any markup, such as 105.00 for
      # 100.00 spent with a 5% markup.
      class ReportStatsAdsRequestSpend < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Integer }

        member -> { String }
      end
    end
  end
end
