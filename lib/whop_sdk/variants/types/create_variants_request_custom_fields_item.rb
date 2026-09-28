# frozen_string_literal: true

module Whop_sdk
  module Variants
    module Types
      class CreateVariantsRequestCustomFieldsItem < Internal::Types::Model
        field :field_type, -> { Whop_sdk::Variants::Types::CreateVariantsRequestCustomFieldsItemFieldType }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :order, -> { Integer }, optional: true, nullable: false

        field :placeholder, -> { String }, optional: true, nullable: false

        field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
