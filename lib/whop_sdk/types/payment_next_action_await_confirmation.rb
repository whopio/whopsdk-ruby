# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentNextActionAwaitConfirmation < Internal::Types::Model
      field :data, -> { Whop_sdk::Types::PaymentNextActionAwaitConfirmationData }, optional: false, nullable: false

      field :render, -> { Internal::Types::Array[Whop_sdk::Types::PaymentNextActionAwaitConfirmationRenderItem] }, optional: false, nullable: false
    end
  end
end
