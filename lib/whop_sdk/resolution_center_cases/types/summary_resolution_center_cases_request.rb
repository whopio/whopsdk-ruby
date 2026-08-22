# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class SummaryResolutionCenterCasesRequest < Internal::Types::Model
        field :groups, -> { Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestGroupsItem }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestStatusItem }, optional: true, nullable: false

        field :reason, -> { Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestReasonItem }, optional: true, nullable: false

        field :outcome, -> { Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestOutcomeItem }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
