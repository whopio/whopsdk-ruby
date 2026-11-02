# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # The commission rate this referral pays for each income source, as a fraction (0.3 = 30%). A solo partner earns
        # it directly; the team of a referring partner business splits it by their shares.
        class RetrieveBusinessesResponsePayoutPercentages < Internal::Types::Model
          field :ad_spend, -> { Integer }, optional: false, nullable: true

          field :card_interchange, -> { Integer }, optional: false, nullable: true

          field :sales, -> { Integer }, optional: false, nullable: false

          field :transfer, -> { Integer }, optional: false, nullable: true

          field :withdrawal, -> { Integer }, optional: false, nullable: true
        end
      end
    end
  end
end
