# frozen_string_literal: true

module Whop_sdk
  module BountySubmissions
    module Types
      class ListBountySubmissionsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :bounty_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::BountySubmissions::Types::ListBountySubmissionsRequestStatus }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::BountySubmissions::Types::ListBountySubmissionsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::BountySubmissions::Types::ListBountySubmissionsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
