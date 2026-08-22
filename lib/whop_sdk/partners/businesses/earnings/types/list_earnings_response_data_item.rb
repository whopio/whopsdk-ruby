# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsResponseDataItem < Internal::Types::Model
            field :account, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemAccount }, optional: false, nullable: true

            field :cancelation_reason, -> { String }, optional: false, nullable: true

            field :commission_amount_usd, -> { String }, optional: false, nullable: true

            field :created_at, -> { String }, optional: false, nullable: false

            field :financial_activity, -> { Internal::Types::Array[Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemFinancialActivityItem] }, optional: false, nullable: true

            field :id, -> { String }, optional: false, nullable: true

            field :income_source, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemIncomeSource }, optional: false, nullable: false

            field :object, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemObject }, optional: false, nullable: false

            field :payout_at, -> { String }, optional: false, nullable: true

            field :payout_percentage, -> { Integer }, optional: false, nullable: true

            field :product, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemProduct }, optional: false, nullable: true

            field :resource, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResource }, optional: false, nullable: true

            field :second_tier, -> { Internal::Types::Boolean }, optional: false, nullable: false

            field :status, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemStatus }, optional: false, nullable: false

            field :transaction_amount_usd, -> { String }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
