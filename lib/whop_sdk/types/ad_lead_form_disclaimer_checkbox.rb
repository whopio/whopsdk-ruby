# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdLeadFormDisclaimerCheckbox < Internal::Types::Model
      field :checked_by_default, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :key, -> { String }, optional: false, nullable: true

      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
