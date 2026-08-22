# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentNextActionAwaitConfirmationData < Internal::Types::Model
      field :expires_at, -> { String }, optional: false, nullable: false
    end
  end
end
