# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Earnings
        module Types
          class ListEarningsResponse < Internal::Types::Model
            field :data, -> { Internal::Types::Array[Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponseDataItem] }, optional: false, nullable: false

            field :page_info, -> { Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponsePageInfo }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
