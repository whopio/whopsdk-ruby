# frozen_string_literal: true

module Whop_sdk
  module Members
    module Types
      class UpdateMembersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
