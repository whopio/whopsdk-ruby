# frozen_string_literal: true

module Whop_sdk
  module Types
    class TeamMember < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :authorized_role, -> { Whop_sdk::Types::TeamMemberAuthorizedRole }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :email, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :is_agent, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :role, -> { Whop_sdk::Types::TeamMemberRole }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::TeamMemberStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: true
    end
  end
end
