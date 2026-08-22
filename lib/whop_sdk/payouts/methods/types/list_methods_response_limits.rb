# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        # The live per-speed payout caps for the account in the requested currency — the numbers a payout request is
        # validated against at submit time, so clients can cap an amount input at a value the request will accept. Only
        # present when include_limits is true.
        class ListMethodsResponseLimits < Internal::Types::Model
          field :currency, -> { String }, optional: false, nullable: false

          field :instant, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseLimitsInstant }, optional: false, nullable: false

          field :object, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseLimitsObject }, optional: false, nullable: false

          field :standard, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsResponseLimitsStandard }, optional: false, nullable: false
        end
      end
    end
  end
end
