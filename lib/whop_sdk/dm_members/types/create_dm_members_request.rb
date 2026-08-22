# frozen_string_literal: true

module Whop_sdk
  module DmMembers
    module Types
      class CreateDmMembersRequest < Internal::Types::Model
        field :channel_id, -> { String }, optional: false, nullable: false

        field :user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
