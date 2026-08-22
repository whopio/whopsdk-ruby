# frozen_string_literal: true

module Whop_sdk
  module FinancialActivity
    module Types
      class ListFinancialActivityResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::LedgerActivity] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::FinancialActivity::Types::ListFinancialActivityResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
