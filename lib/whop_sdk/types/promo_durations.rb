# frozen_string_literal: true

module Whop_sdk
  module Types
    module PromoDurations
      extend Whop_sdk::Internal::Types::Enum

      FOREVER = "forever"
      ONCE = "once"
      REPEATING = "repeating"
    end
  end
end
