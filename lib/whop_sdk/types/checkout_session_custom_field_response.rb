# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionCustomFieldResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
