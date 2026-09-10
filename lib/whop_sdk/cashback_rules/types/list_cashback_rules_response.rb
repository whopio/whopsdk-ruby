# frozen_string_literal: true

module Whop_sdk
  module CashbackRules
    module Types
      class ListCashbackRulesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::CashbackRule] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::CashbackRules::Types::ListCashbackRulesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
