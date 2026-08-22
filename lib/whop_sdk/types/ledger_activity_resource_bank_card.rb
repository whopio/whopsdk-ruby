# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityResourceBankCard < Internal::Types::Model
      field :brand, -> { String }, optional: false, nullable: true

      field :exp_month, -> { Integer }, optional: false, nullable: true

      field :exp_year, -> { Integer }, optional: false, nullable: true

      field :last4, -> { String }, optional: false, nullable: true
    end
  end
end
