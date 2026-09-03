# frozen_string_literal: true

module Whop_sdk
  module Types
    # The plan associated with the disputed payment. Null if the dispute is not linked to a specific plan.
    class DisputeLegacyPlan < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
