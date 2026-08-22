# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        # Caps for standard-speed payouts, which draw on settled funds only.
        class ListMethodsResponseLimitsStandard < Internal::Types::Model
          field :max_amount, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
