# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsResponseDataItemResourceBusinessID < Internal::Types::Model
            field :business_id, -> { String }, optional: false, nullable: false

            field :created_at, -> { String }, optional: false, nullable: false

            field :id, -> { String }, optional: false, nullable: true

            field :object, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItemResourceBusinessIDObject }, optional: false, nullable: false

            field :slug, -> { String }, optional: false, nullable: true
          end
        end
      end
    end
  end
end
