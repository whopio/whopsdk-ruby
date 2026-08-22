# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsResponseDataItemProduct < Internal::Types::Model
            field :id, -> { String }, optional: false, nullable: false

            field :route, -> { String }, optional: false, nullable: false

            field :title, -> { String }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
