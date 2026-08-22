# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          module ListEarningsRequestIncomeSourceItem
            extend Whop_sdk::Internal::Types::Enum

            SALES = "sales"
            AD_SPEND = "ad_spend"
            TRANSFER = "transfer"
            CARD_INTERCHANGE = "card_interchange"
          end
        end
      end
    end
  end
end
