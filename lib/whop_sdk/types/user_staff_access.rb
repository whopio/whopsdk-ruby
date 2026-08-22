# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserStaffAccess < Internal::Types::Model
      field :admin, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :investigation_access, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :manager, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :support, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
