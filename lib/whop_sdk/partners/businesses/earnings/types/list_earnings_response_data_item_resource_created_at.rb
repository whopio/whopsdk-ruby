# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsResponseDataItemResourceCreatedAt < Internal::Types::Model
            field :created_at, -> { String }, optional: false, nullable: false

            field :currency, -> { String }, optional: false, nullable: true

            field :id, -> { String }, optional: false, nullable: false

            field :merchant_name, -> { String }, optional: false, nullable: true

            field :object, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceCreatedAtObject }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
