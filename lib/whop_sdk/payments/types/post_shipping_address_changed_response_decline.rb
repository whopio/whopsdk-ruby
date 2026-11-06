# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class PostShippingAddressChangedResponseDecline < Internal::Types::Model
        field :decline, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
