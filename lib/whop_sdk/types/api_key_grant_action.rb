# frozen_string_literal: true

module Whop_sdk
  module Types
    class APIKeyGrantAction < Internal::Types::Model
      field :action, -> { String }, optional: false, nullable: false

      field :granted, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
