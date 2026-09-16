# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentRuleMatch < Internal::Types::Model
      field :action, -> { Whop_sdk::Types::PaymentRuleMatchAction }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true
    end
  end
end
