# frozen_string_literal: true

module Whop_sdk
  module Types
    # A resolution center case is a dispute or support case between a user and a company, tracking the issue, status,
    # and outcome.
    class ResolutionCenterCaseLegacy < Internal::Types::Model
      field :company, -> { Whop_sdk::Types::ResolutionCenterCaseLegacyCompany }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :customer_appealed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :customer_response_actions, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionCenterCaseCustomerResponses] }, optional: false, nullable: false

      field :due_date, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :issue, -> { Whop_sdk::Types::ResolutionCenterCaseIssueTypes }, optional: false, nullable: false

      field :member, -> { Whop_sdk::Types::ResolutionCenterCaseLegacyMember }, optional: false, nullable: true

      field :merchant_appealed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :merchant_response_actions, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionCenterCaseMerchantResponses] }, optional: false, nullable: false

      field :payment, -> { Whop_sdk::Types::ResolutionCenterCaseLegacyPayment }, optional: false, nullable: false

      field :platform_response_actions, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionCenterCasePlatformResponses] }, optional: false, nullable: false

      field :resolution_events, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionCenterCaseLegacyResolutionEventsItem] }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::ResolutionCenterCaseStatuses }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::ResolutionCenterCaseLegacyUser }, optional: false, nullable: false
    end
  end
end
