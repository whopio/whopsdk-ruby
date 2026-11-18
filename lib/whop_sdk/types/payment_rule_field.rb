# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentRuleField < Internal::Types::Model
      field :actions, -> { Internal::Types::Array[Whop_sdk::Types::PaymentRuleFieldActionsItem] }, optional: false, nullable: false

      field :field, -> { Whop_sdk::Types::PaymentRuleFieldField }, optional: false, nullable: false

      field :maximum, -> { Integer }, optional: false, nullable: true

      field :minimum, -> { Integer }, optional: false, nullable: true

      field :operators, -> { Internal::Types::Array[Whop_sdk::Types::PaymentRuleFieldOperatorsItem] }, optional: false, nullable: false

      field :options, -> { Internal::Types::Array[Whop_sdk::Types::PaymentRuleFieldOption] }, optional: false, nullable: true

      field :stage, -> { Whop_sdk::Types::PaymentRuleFieldStage }, optional: false, nullable: false

      field :type, -> { Whop_sdk::Types::PaymentRuleFieldType }, optional: false, nullable: false
    end
  end
end
