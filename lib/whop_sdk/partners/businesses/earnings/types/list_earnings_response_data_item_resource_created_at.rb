# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsResponseDataItemResourceCreatedAt < Internal::Types::Model
            field :business_id, -> { String }, optional: false, nullable: false

            field :created_at, -> { String }, optional: false, nullable: false

            field :id, -> { String }, optional: false, nullable: false

            field :object, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceCreatedAtObject }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
