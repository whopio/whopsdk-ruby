# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionRequirement < Internal::Types::Model
      field :fields, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionCustomField] }, optional: false, nullable: true

      field :type, -> { Whop_sdk::Types::CheckoutSessionRequirementType }, optional: false, nullable: false
    end
  end
end
