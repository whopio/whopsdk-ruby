# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountCoveredPayoutFees < Internal::Types::Model
      field :all, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :bank_wire, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :crypto, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :digital_wallet, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :next_day_bank, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :rtp, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
