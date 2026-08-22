# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module SupportedMethods
      module Types
        class ListSupportedMethodsResponseDataItem < Internal::Types::Model
          field :delivery_type, -> { Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponseDataItemDeliveryType }, optional: false, nullable: false

          field :icon_url, -> { String }, optional: false, nullable: true

          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: true

          field :object, -> { Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponseDataItemObject }, optional: false, nullable: false

          field :quotes, -> { Internal::Types::Array[Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponseDataItemQuotesItem] }, optional: false, nullable: true

          field :required_fields, -> { Internal::Types::Array[Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponseDataItemRequiredFieldsItem] }, optional: false, nullable: true

          field :supports_instant_delivery, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :supports_standard_delivery, -> { Internal::Types::Boolean }, optional: false, nullable: false
        end
      end
    end
  end
end
