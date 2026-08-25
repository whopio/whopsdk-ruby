# frozen_string_literal: true

module Whop_sdk
  module Types
    module CheckoutSessionPromoDuration
      extend Whop_sdk::Internal::Types::Enum

      FOREVER = "forever"
      ONCE = "once"
      REPEATING = "repeating"
    end
  end
end
