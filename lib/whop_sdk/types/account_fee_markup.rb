# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountFeeMarkup < Internal::Types::Model
      field :adjustable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :default, -> { Whop_sdk::Types::AccountFeeRate }, optional: false, nullable: false

      field :fixed, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :maximum, -> { Whop_sdk::Types::AccountFeeRate }, optional: false, nullable: false

      field :percentage, -> { Integer }, optional: false, nullable: false

      field :source, -> { Whop_sdk::Types::AccountFeeMarkupSource }, optional: false, nullable: false

      field :unadjustable_reason, -> { Whop_sdk::Types::AccountFeeMarkupUnadjustableReason }, optional: false, nullable: true
    end
  end
end
