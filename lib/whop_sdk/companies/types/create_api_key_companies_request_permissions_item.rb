# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      # Input for a single permissions statement
      class CreateAPIKeyCompaniesRequestPermissionsItem < Internal::Types::Model
        field :actions, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :grant, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :resources, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
