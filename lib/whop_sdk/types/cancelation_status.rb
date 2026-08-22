# frozen_string_literal: true

module Whop_sdk
  module Types
    module CancelationStatus
      extend Whop_sdk::Internal::Types::Enum

      WON_BACK = "won_back"
      LEFT = "left"
      CANCELING = "canceling"
    end
  end
end
