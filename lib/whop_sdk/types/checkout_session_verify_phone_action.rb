# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionVerifyPhoneAction < Internal::Types::Model
      field :blocking, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
