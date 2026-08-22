# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountReserveUnlock < Internal::Types::Model
      field :amount, -> { String }, optional: false, nullable: false

      field :date, -> { String }, optional: false, nullable: false
    end
  end
end
