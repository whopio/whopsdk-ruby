# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Categories
      module Types
        class ListCategoriesResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::AppCategory] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Apps::Categories::Types::ListCategoriesResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
