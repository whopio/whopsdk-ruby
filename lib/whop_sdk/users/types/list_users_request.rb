# frozen_string_literal: true

module Whop_sdk
  module Users
    module Types
      class ListUsersRequest < Internal::Types::Model
        field :query, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
