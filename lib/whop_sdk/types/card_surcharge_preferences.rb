# frozen_string_literal: true

module Whop_sdk
  module Types
    class CardSurchargePreferences < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :maximum_percentage, -> { Integer }, optional: false, nullable: true

      field :percentage, -> { Integer }, optional: false, nullable: true
    end
  end
end
