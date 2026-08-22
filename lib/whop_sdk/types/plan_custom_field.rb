# frozen_string_literal: true

module Whop_sdk
  module Types
    class PlanCustomField < Internal::Types::Model
      field :field_type, -> { Whop_sdk::Types::PlanCustomFieldFieldType }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :order, -> { Integer }, optional: false, nullable: false

      field :placeholder, -> { String }, optional: false, nullable: true

      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
