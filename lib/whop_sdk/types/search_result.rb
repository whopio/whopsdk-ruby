# frozen_string_literal: true

module Whop_sdk
  module Types
    class SearchResult < Internal::Types::Model
      field :match_reason, -> { Whop_sdk::Types::SearchResultMatchReason }, optional: false, nullable: true

      field :record, -> { Whop_sdk::Types::SearchRecord }, optional: false, nullable: false
    end
  end
end
