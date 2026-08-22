# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      # One entry per requested breakdown, keyed by the field it groups on. A field you did not ask for is absent.
      class SummaryResolutionCenterCasesResponseGroups < Internal::Types::Model
        field :outcome, -> { Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesResponseGroupsOutcome }, optional: true, nullable: false

        field :reason, -> { Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesResponseGroupsReason }, optional: true, nullable: false

        field :status, -> { Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesResponseGroupsStatus }, optional: true, nullable: false
      end
    end
  end
end
