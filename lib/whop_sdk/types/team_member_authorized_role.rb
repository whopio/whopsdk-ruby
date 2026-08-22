# frozen_string_literal: true

module Whop_sdk
  module Types
    class TeamMemberAuthorizedRole < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
