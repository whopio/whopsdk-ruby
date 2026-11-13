# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          # The resource that generated the earning. For sales and ad spend earnings, it is the customer payment
          # receipt. For transfer earnings, it is the balance transfer. For withdrawal earnings, it is the withdrawal.
          # For card interchange earnings, it is the card transaction. For fixed reward earnings, it is the qualifying
          # reward. For business referral earnings, it is the referred partner business's own commission.
          class ListEarningsResponseDataItemResource < Internal::Types::Model
            extend Whop_sdk::Internal::Types::Union

            member -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceAlternativePaymentMethod }

            member -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceOne }

            member -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceTwo }

            member -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceMerchantName }

            member -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceSlug }

            member -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceFive }

            member -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceCreatedAt }
          end
        end
      end
    end
  end
end
