# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionTaxID < Internal::Types::Model
      field :type, -> { Whop_sdk::Types::CheckoutSessionTaxIDType }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
