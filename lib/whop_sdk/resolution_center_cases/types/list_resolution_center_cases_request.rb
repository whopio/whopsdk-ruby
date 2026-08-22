# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class ListResolutionCenterCasesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestDirection }, optional: true, nullable: false

        field :status, -> { Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestStatusItem }, optional: true, nullable: false

        field :reason, -> { Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestReasonItem }, optional: true, nullable: false

        field :outcome, -> { Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestOutcomeItem }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
