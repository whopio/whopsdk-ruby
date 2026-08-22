# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class ExtendMembershipsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :days, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
