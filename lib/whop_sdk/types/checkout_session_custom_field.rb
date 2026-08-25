# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionCustomField < Internal::Types::Model
      field :description, -> { String }, optional: false, nullable: true

      field :field_type, -> { Whop_sdk::Types::CheckoutSessionCustomFieldFieldType }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :placeholder, -> { String }, optional: false, nullable: true

      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
