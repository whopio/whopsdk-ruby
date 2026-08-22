# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentNextActionDisplayInstructions < Internal::Types::Model
      field :data, -> { Whop_sdk::Types::PaymentInstructions }, optional: false, nullable: false

      field :render, -> { Internal::Types::Array[Whop_sdk::Types::PaymentNextActionDisplayInstructionsRenderItem] }, optional: false, nullable: false
    end
  end
end
