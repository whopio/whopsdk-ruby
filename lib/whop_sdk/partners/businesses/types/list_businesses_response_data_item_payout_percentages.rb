# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # The referrer's commission rate for each income source, expressed as a fraction (0.3 = 30%).
        class ListBusinessesResponseDataItemPayoutPercentages < Internal::Types::Model
          field :ad_spend, -> { Integer }, optional: false, nullable: true

          field :card_interchange, -> { Integer }, optional: false, nullable: true

          field :sales, -> { Integer }, optional: false, nullable: false

          field :transfer, -> { Integer }, optional: false, nullable: true
        end
      end
    end
  end
end
