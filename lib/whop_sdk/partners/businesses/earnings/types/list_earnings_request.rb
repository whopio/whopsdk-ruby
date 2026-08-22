# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsRequest < Internal::Types::Model
            field :id, -> { String }, optional: false, nullable: false

            field :status, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestStatus }, optional: true, nullable: false

            field :income_source, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestIncomeSourceItem }, optional: true, nullable: false

            field :first, -> { Integer }, optional: true, nullable: false

            field :after, -> { String }, optional: true, nullable: false

            field :last, -> { Integer }, optional: true, nullable: false

            field :before, -> { String }, optional: true, nullable: false

            field :order, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestOrder }, optional: true, nullable: false

            field :direction, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestDirection }, optional: true, nullable: false

            field :created_before, -> { String }, optional: true, nullable: false

            field :created_after, -> { String }, optional: true, nullable: false
          end
        end
      end
    end
  end
end
