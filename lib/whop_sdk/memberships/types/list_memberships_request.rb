# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class ListMembershipsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Memberships::Types::ListMembershipsRequestStatus }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :plan_id, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Memberships::Types::ListMembershipsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Memberships::Types::ListMembershipsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
