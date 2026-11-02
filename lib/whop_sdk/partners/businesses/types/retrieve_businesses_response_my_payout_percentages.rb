# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # The caller's own cut of each income source on this business, as a fraction of the same base as
        # `payout_percentages` (0.12 = 12%). A solo partner's cut is the whole rate. On a referring partner business's
        # deal it is the caller's team share of the rate: a closer earns their share, a manager earns their share minus
        # the share of the person below them, and a deal participant earns their cut. Null when the caller earns nothing
        # on this business, as with an account API key.
        class RetrieveBusinessesResponseMyPayoutPercentages < Internal::Types::Model
          field :ad_spend, -> { Integer }, optional: false, nullable: true

          field :card_interchange, -> { Integer }, optional: false, nullable: true

          field :sales, -> { Integer }, optional: false, nullable: true

          field :transfer, -> { Integer }, optional: false, nullable: true

          field :withdrawal, -> { Integer }, optional: false, nullable: true
        end
      end
    end
  end
end
