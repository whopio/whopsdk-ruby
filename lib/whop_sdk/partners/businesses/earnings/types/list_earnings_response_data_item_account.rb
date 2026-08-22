# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          # Referred account.
          class ListEarningsResponseDataItemAccount < Internal::Types::Model
            field :id, -> { String }, optional: false, nullable: false

            field :logo_url, -> { String }, optional: false, nullable: true

            field :route, -> { String }, optional: false, nullable: false

            field :title, -> { String }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
