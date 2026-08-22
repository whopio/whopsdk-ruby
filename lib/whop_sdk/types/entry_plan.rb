# frozen_string_literal: true

module Whop_sdk
  module Types
    # The waitlisted plan that this entry is a signup for.
    class EntryPlan < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
