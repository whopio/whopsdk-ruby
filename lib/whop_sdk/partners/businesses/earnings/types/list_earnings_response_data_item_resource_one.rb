# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsResponseDataItemResourceOne < Internal::Types::Model
            field :created_at, -> { String }, optional: false, nullable: false

            field :currency, -> { String }, optional: false, nullable: false

            field :id, -> { String }, optional: false, nullable: false

            field :object, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceOneObject }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
