# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountFee < Internal::Types::Model
      field :adjustable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :category, -> { Whop_sdk::Types::AccountFeeCategory }, optional: false, nullable: false

      field :default, -> { Whop_sdk::Types::AccountFeeRate }, optional: false, nullable: false

      field :ends_at, -> { String }, optional: false, nullable: true

      field :fixed, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :minimum, -> { Whop_sdk::Types::AccountFeeRate }, optional: false, nullable: true

      field :percentage, -> { Integer }, optional: false, nullable: true

      field :region, -> { Whop_sdk::Types::AccountFeeRegion }, optional: false, nullable: true

      field :regions, -> { Internal::Types::Hash[String, Whop_sdk::Types::AccountFeeRegionalRate] }, optional: false, nullable: false

      field :reset, -> { Whop_sdk::Types::AccountFeeRate }, optional: false, nullable: false

      field :source, -> { Whop_sdk::Types::AccountFeeSource }, optional: false, nullable: false

      field :unadjustable_reason, -> { Whop_sdk::Types::AccountFeeUnadjustableReason }, optional: false, nullable: true
    end
  end
end
