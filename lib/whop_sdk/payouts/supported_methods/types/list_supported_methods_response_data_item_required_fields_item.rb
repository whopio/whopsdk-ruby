# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module SupportedMethods
      module Types
        class ListSupportedMethodsResponseDataItemRequiredFieldsItem < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :input_type, -> { String }, optional: false, nullable: false

          field :label, -> { String }, optional: false, nullable: false

          field :object, -> { Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponseDataItemRequiredFieldsItemObject }, optional: false, nullable: false

          field :options, -> { Internal::Types::Array[String] }, optional: false, nullable: true

          field :placeholder, -> { String }, optional: false, nullable: true

          field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :sensitive, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :type, -> { String }, optional: false, nullable: false

          field :validation, -> { String }, optional: false, nullable: true
        end
      end
    end
  end
end
