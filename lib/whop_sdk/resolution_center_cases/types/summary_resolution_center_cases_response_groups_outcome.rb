# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      # How many of the matching cases ended each way. Every outcome is present, including those with a count of zero;
      # open cases are counted in none of them.
      class SummaryResolutionCenterCasesResponseGroupsOutcome < Internal::Types::Model
        field :customer_won, -> { Integer }, optional: false, nullable: false

        field :merchant_won, -> { Integer }, optional: false, nullable: false

        field :withdrawn, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
