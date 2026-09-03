# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        # Caps for standard-speed payouts, which draw on settled funds only.
        class ListMethodsResponseLimitsStandard < Internal::Types::Model
          field :error_code, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseLimitsStandardErrorCode }, optional: false, nullable: true

          field :error_message, -> { String }, optional: false, nullable: true

          field :max_amount, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
