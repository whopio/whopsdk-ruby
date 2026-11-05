# frozen_string_literal: true

module Whop_sdk
  module Types
    class TeamMemberManager < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false
    end
  end
end
