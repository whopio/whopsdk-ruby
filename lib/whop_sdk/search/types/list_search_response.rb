# frozen_string_literal: true

module Whop_sdk
  module Search
    module Types
      class ListSearchResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::SearchResult] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Search::Types::ListSearchResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
