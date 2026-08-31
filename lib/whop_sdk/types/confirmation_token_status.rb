# frozen_string_literal: true

module Whop_sdk
  module Types
    module ConfirmationTokenStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      CONSUMED = "consumed"
      EXPIRED = "expired"
    end
  end
end
