# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionRedirectAction < Internal::Types::Model
      field :blocking, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :destination_url, -> { String }, optional: false, nullable: false
    end
  end
end
