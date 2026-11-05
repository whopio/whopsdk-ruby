# frozen_string_literal: true

module Whop_sdk
  module Types
    module TradeStep
      extend Whop_sdk::Internal::Types::Enum

      DEPOSITING = "depositing"
      LANDING = "landing"
      PLACING = "placing"
      WITHDRAWING = "withdrawing"
      RETURNING = "returning"
      QUOTING = "quoting"
      SWAPPING = "swapping"
      CREDITING = "crediting"
    end
  end
end
