# frozen_string_literal: true

module Whop_sdk
  module Types
    class MembershipMember < Internal::Types::Model
      field :access_level, -> { Whop_sdk::Types::MembershipMemberAccessLevel }, optional: false, nullable: false

      field :last_accessed_at, -> { String }, optional: false, nullable: true

      field :position, -> { Integer }, optional: false, nullable: true
    end
  end
end
