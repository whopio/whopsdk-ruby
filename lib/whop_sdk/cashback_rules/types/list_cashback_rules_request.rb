# frozen_string_literal: true

module Whop_sdk
  module CashbackRules
    module Types
      class ListCashbackRulesRequest < Internal::Types::Model
        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::CashbackRules::Types::ListCashbackRulesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::CashbackRules::Types::ListCashbackRulesRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
