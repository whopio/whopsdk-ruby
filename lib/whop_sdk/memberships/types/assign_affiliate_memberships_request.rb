# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class AssignAffiliateMembershipsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :commission_type, -> { Whop_sdk::Memberships::Types::AssignAffiliateMembershipsRequestCommissionType }, optional: false, nullable: false

        field :commission_value, -> { Integer }, optional: false, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :username, -> { String }, optional: true, nullable: false
      end
    end
  end
end
