# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      # How many of the matching cases are in each status. Every status is present, including those with a count of
      # zero.
      class SummaryResolutionCenterCasesResponseGroupsStatus < Internal::Types::Model
        field :awaiting_customer, -> { Integer }, optional: false, nullable: false

        field :awaiting_merchant, -> { Integer }, optional: false, nullable: false

        field :closed, -> { Integer }, optional: false, nullable: false

        field :under_review, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
