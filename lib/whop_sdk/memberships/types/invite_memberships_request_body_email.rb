# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class InviteMembershipsRequestBodyEmail < Internal::Types::Model
        field :email, -> { String }, optional: false, nullable: false

        field :plan_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
