# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class InviteMembershipsRequest < Internal::Types::Model
        field :email, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :variant_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
