# frozen_string_literal: true

module Whop_sdk
  module Types
    class PasskeyCreationExtensions < Internal::Types::Model
      field :cred_props, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
