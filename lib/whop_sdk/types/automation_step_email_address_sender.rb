# frozen_string_literal: true

module Whop_sdk
  module Types
    class AutomationStepEmailAddressSender < Internal::Types::Model
      field :address, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
