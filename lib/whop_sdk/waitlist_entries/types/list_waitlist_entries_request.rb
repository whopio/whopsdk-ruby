# frozen_string_literal: true

module Whop_sdk
  module WaitlistEntries
    module Types
      class ListWaitlistEntriesRequest < Internal::Types::Model
        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :plan_id, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::WaitlistEntries::Types::ListWaitlistEntriesRequestStatus }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::WaitlistEntries::Types::ListWaitlistEntriesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::WaitlistEntries::Types::ListWaitlistEntriesRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
