# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountSubaccountFeeMode < Internal::Types::Model
      field :adjustable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :available_modes, -> { Internal::Types::Array[Whop_sdk::Types::AccountSubaccountFeeModeAvailableModesItem] }, optional: false, nullable: false

      field :mode, -> { Whop_sdk::Types::AccountSubaccountFeeModeMode }, optional: false, nullable: false

      field :unadjustable_reason, -> { Whop_sdk::Types::AccountSubaccountFeeModeUnadjustableReason }, optional: false, nullable: true
    end
  end
end
