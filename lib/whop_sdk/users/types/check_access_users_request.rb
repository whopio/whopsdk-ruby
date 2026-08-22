# frozen_string_literal: true

module Whop_sdk
  module Users
    module Types
      class CheckAccessUsersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :resource_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
