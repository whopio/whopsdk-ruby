# frozen_string_literal: true

module Whop_sdk
  module CashbackRules
    module Types
      class UpdateCashbackRulesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :expires_at, -> { String }, optional: true, nullable: false

        field :merchant_category_code, -> { String }, optional: true, nullable: false

        field :merchant_name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
