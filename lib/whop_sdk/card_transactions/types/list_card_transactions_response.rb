# frozen_string_literal: true

module Whop_sdk
  module CardTransactions
    module Types
      class ListCardTransactionsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::CardTransaction] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::CardTransactions::Types::ListCardTransactionsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
