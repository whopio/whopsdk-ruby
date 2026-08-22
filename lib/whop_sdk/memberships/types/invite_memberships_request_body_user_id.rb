# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class InviteMembershipsRequestBodyUserID < Internal::Types::Model
        field :plan_id, -> { String }, optional: false, nullable: false

        field :user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
