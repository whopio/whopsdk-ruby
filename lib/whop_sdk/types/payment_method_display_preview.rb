# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentMethodDisplayPreview < Internal::Types::Model
      field :brand, -> { String }, optional: true, nullable: false

      field :last4, -> { String }, optional: true, nullable: false
    end
  end
end
