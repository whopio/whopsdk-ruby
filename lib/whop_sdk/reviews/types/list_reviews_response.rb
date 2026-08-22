# frozen_string_literal: true

module Whop_sdk
  module Reviews
    module Types
      # The connection type for Review.
      class ListReviewsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ReviewListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
