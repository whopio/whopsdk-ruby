# frozen_string_literal: true

module Whop_sdk
  module Types
    # An entry represents a user's signup for a waitlisted plan.
    class Entry < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: true

      field :custom_field_responses, -> { Internal::Types::Array[Whop_sdk::Types::EntryCustomFieldResponsesItem] }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :plan, -> { Whop_sdk::Types::EntryPlan }, optional: false, nullable: true

      field :product, -> { Whop_sdk::Types::EntryProduct }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::EntryStatus }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::EntryUser }, optional: false, nullable: false
    end
  end
end
