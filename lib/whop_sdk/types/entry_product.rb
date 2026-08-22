# frozen_string_literal: true

module Whop_sdk
  module Types
    # The product associated with this entry's waitlisted plan. Null if the plan is not tied to a product.
    class EntryProduct < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
