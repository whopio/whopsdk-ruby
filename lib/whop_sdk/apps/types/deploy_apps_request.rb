# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class DeployAppsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :draft, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
