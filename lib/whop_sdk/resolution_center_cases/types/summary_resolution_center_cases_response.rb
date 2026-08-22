# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class SummaryResolutionCenterCasesResponse < Internal::Types::Model
        field :groups, -> { Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesResponseGroups }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
