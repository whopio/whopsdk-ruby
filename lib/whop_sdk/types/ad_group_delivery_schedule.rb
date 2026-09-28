# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupDeliverySchedule < Internal::Types::Model
      field :friday, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDeliveryWindow] }, optional: true, nullable: false

      field :monday, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDeliveryWindow] }, optional: true, nullable: false

      field :saturday, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDeliveryWindow] }, optional: true, nullable: false

      field :sunday, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDeliveryWindow] }, optional: true, nullable: false

      field :thursday, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDeliveryWindow] }, optional: true, nullable: false

      field :tuesday, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDeliveryWindow] }, optional: true, nullable: false

      field :wednesday, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDeliveryWindow] }, optional: true, nullable: false
    end
  end
end
