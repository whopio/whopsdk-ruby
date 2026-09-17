# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountFeeRate < Internal::Types::Model
      field :fixed, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :percentage, -> { Integer }, optional: false, nullable: true
    end
  end
end
