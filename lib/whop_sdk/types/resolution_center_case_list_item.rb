# frozen_string_literal: true

module Whop_sdk
  module Types
    # A resolution center case is a dispute or support case between a user and a company, tracking the issue, status,
    # and outcome.
    class ResolutionCenterCaseListItem < Internal::Types::Model
      field :company, -> { Whop_sdk::Types::ResolutionCenterCaseListItemCompany }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :customer_appealed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :customer_response_actions, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionCenterCaseCustomerResponses] }, optional: false, nullable: false

      field :due_date, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :issue, -> { Whop_sdk::Types::ResolutionCenterCaseIssueTypes }, optional: false, nullable: false

      field :merchant_appealed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :merchant_response_actions, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionCenterCaseMerchantResponses] }, optional: false, nullable: false

      field :payment, -> { Whop_sdk::Types::ResolutionCenterCaseListItemPayment }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::ResolutionCenterCaseStatuses }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::ResolutionCenterCaseListItemUser }, optional: false, nullable: false
    end
  end
end
