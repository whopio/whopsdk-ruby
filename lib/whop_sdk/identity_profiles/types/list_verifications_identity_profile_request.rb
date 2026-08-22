# frozen_string_literal: true

module Whop_sdk
  module IdentityProfiles
    module Types
      class ListVerificationsIdentityProfileRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
