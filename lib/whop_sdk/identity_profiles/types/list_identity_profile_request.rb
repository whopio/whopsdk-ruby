# frozen_string_literal: true

module Whop_sdk
  module IdentityProfiles
    module Types
      class ListIdentityProfileRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :company_id, -> { String }, optional: true, nullable: false

        field :profile_type, -> { Whop_sdk::Types::IdentityProfileKinds }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Types::IdentityProfileStatuses }, optional: true, nullable: false
      end
    end
  end
end
