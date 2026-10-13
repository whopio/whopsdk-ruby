# frozen_string_literal: true

module Whop_sdk
  module Members
    module Types
      class ListMembersRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :access_level, -> { Whop_sdk::Members::Types::ListMembersRequestAccessLevel }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Members::Types::ListMembersRequestStatus }, optional: true, nullable: false

        field :user_ids, -> { String }, optional: true, nullable: false

        field :most_recent_actions, -> { Whop_sdk::Members::Types::ListMembersRequestMostRecentActionsItem }, optional: true, nullable: false

        field :membership_status, -> { Whop_sdk::Members::Types::ListMembersRequestMembershipStatus }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false

        field :plan_ids, -> { String }, optional: true, nullable: false

        field :promo_code_ids, -> { String }, optional: true, nullable: false

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
