# frozen_string_literal: true

module Whop_sdk
  module Members
    module Types
      class ListMembersRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :access_level, -> { Whop_sdk::Members::Types::ListMembersRequestAccessLevel }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Members::Types::ListMembersRequestStatus }, optional: true, nullable: false

        field :user_ids, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Members::Types::ListMembersRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Members::Types::ListMembersRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
