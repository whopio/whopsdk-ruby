# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class PauseMembershipsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :until_, -> { String }, optional: true, nullable: false, api_name: "until"
      end
    end
  end
end
