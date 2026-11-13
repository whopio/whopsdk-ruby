# frozen_string_literal: true

module Whop_sdk
  module Members
    module Types
      class CreateMembersRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
