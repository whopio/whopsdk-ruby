# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentRule < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :action, -> { Whop_sdk::Types::PaymentRuleAction }, optional: false, nullable: false

      field :conditions, -> { Whop_sdk::Types::PaymentRuleConditions }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :deleted_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::PaymentRuleStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
