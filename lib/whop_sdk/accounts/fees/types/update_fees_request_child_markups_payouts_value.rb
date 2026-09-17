# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      module Types
        # The new markup. Fields left out keep their current value; `null` clears the row so the markup returns to its
        # default.
        class UpdateFeesRequestChildMarkupsPayoutsValue < Internal::Types::Model
          field :fixed, -> { Integer }, optional: true, nullable: false

          field :percentage, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
