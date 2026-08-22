# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      class UpdatePlansRequestCustomFieldsItem < Internal::Types::Model
        field :field_type, -> { Whop_sdk::Plans::Types::UpdatePlansRequestCustomFieldsItemFieldType }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :order, -> { Integer }, optional: true, nullable: false

        field :placeholder, -> { String }, optional: true, nullable: false

        field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
