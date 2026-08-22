# frozen_string_literal: true

module Whop_sdk
  module Types
    # An entry represents a user's signup for a waitlisted plan.
    class EntryListItem < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :plan, -> { Whop_sdk::Types::EntryListItemPlan }, optional: false, nullable: true

      field :product, -> { Whop_sdk::Types::EntryListItemProduct }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::EntryStatus }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::EntryListItemUser }, optional: false, nullable: false
    end
  end
end
