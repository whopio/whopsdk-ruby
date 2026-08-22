# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        # Caps for instant-speed payouts, which additionally draw on pending funds.
        class ListMethodsResponseLimitsInstant < Internal::Types::Model
          field :daily_amount_remaining, -> { Integer }, optional: false, nullable: true

          field :error_code, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseLimitsInstantErrorCode }, optional: false, nullable: true

          field :error_message, -> { String }, optional: false, nullable: true

          field :max_amount, -> { Integer }, optional: false, nullable: false

          field :resets_at, -> { String }, optional: false, nullable: true
        end
      end
    end
  end
end
