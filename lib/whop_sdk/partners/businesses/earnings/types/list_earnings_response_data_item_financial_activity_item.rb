# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsResponseDataItemFinancialActivityItem < Internal::Types::Model
            field :amount, -> { String }, optional: false, nullable: false

            field :amount_usd, -> { String }, optional: false, nullable: false

            field :category, -> { String }, optional: false, nullable: true

            field :created_at, -> { String }, optional: false, nullable: true

            field :currency, -> { String }, optional: false, nullable: false

            field :type, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemFinancialActivityItemType }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
