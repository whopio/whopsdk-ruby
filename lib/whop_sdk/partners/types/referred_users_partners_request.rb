# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class ReferredUsersPartnersRequest < Internal::Types::Model
        field :has_businesses, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :has_earning_businesses, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
