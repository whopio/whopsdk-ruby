# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Types
      class ListBountiesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Bounties::Types::ListBountiesRequestStatus }, optional: true, nullable: false

        field :business_goal_type, -> { Whop_sdk::Bounties::Types::ListBountiesRequestBusinessGoalType }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :experience_id, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Bounties::Types::ListBountiesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Bounties::Types::ListBountiesRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
