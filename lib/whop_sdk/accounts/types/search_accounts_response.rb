# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class SearchAccountsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AccountSearchResult] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Accounts::Types::SearchAccountsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
