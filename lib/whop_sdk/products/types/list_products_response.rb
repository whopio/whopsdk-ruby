# frozen_string_literal: true

module Whop_sdk
  module Products
    module Types
      class ListProductsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ProductListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Products::Types::ListProductsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
