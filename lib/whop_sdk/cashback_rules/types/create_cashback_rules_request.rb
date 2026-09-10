# frozen_string_literal: true

module Whop_sdk
  module CashbackRules
    module Types
      class CreateCashbackRulesRequest < Internal::Types::Model
        field :description, -> { String }, optional: true, nullable: false

        field :expires_at, -> { String }, optional: true, nullable: false

        field :merchant_category_code, -> { String }, optional: false, nullable: false

        field :merchant_name, -> { String }, optional: false, nullable: false

        field :rate_bps, -> { Integer }, optional: false, nullable: false

        field :scoped_account_id, -> { String }, optional: true, nullable: false

        field :starts_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
