# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentRuleFieldOption < Internal::Types::Model
      field :label, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
