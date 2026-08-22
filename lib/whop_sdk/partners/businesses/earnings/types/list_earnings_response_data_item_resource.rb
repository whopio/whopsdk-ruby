# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          # The resource that generated the earning: the customer payment receipt for sales and ad spend earnings, the
          # balance transfer for transfer earnings, or the card transaction for card interchange earnings.
          class ListEarningsResponseDataItemResource < Internal::Types::Model
            extend Whop_sdk::Internal::Types::Union

            member -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceAlternativePaymentMethod }

            member -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceOne }

            member -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceCreatedAt }
          end
        end
      end
    end
  end
end
