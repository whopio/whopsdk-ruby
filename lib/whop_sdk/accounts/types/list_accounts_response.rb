# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class ListAccountsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Account] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Accounts::Types::ListAccountsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
