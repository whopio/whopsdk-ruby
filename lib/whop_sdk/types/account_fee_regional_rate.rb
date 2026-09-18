# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountFeeRegionalRate < Internal::Types::Model
      field :default, -> { Whop_sdk::Types::AccountFeeRate }, optional: false, nullable: false

      field :fixed, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :maximum, -> { Whop_sdk::Types::AccountFeeRate }, optional: false, nullable: true

      field :minimum, -> { Whop_sdk::Types::AccountFeeRate }, optional: false, nullable: true

      field :percentage, -> { Integer }, optional: false, nullable: true

      field :reset, -> { Whop_sdk::Types::AccountFeeRate }, optional: false, nullable: false

      field :source, -> { Whop_sdk::Types::AccountFeeRegionalRateSource }, optional: false, nullable: false
    end
  end
end
