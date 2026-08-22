# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentNextActionRedirect < Internal::Types::Model
      field :data, -> { Whop_sdk::Types::PaymentNextActionRedirectData }, optional: false, nullable: false

      field :render, -> { Internal::Types::Array[Whop_sdk::Types::PaymentNextActionRedirectRenderItem] }, optional: false, nullable: false
    end
  end
end
