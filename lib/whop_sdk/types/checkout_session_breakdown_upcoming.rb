# frozen_string_literal: true

module Whop_sdk
  module Types
    # One amount owed after today. `type` picks the shape — `one_time` is a single later charge, `recurring` an
    # open-ended subscription, `installments` a fixed count of payments — and each variant carries only its own fields,
    # so switching on `type` gives you exactly that entry's payload.
    class CheckoutSessionBreakdownUpcoming < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :type

      member -> { Whop_sdk::Types::CheckoutSessionBreakdownUpcomingInstallments }, key: "INSTALLMENTS"

      member -> { Whop_sdk::Types::CheckoutSessionBreakdownUpcomingOneTime }, key: "ONE_TIME"

      member -> { Whop_sdk::Types::CheckoutSessionBreakdownUpcomingRecurring }, key: "RECURRING"
    end
  end
end
