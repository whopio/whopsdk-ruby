# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module FinancingApplications
      module Types
        class ListFinancingApplicationsRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false

          field :status, -> { Whop_sdk::Accounts::FinancingApplications::Types::ListFinancingApplicationsRequestStatus }, optional: true, nullable: false

          field :created_before, -> { String }, optional: true, nullable: false

          field :created_after, -> { String }, optional: true, nullable: false

          field :order, -> { Whop_sdk::Accounts::FinancingApplications::Types::ListFinancingApplicationsRequestOrder }, optional: true, nullable: false

          field :direction, -> { Whop_sdk::Accounts::FinancingApplications::Types::ListFinancingApplicationsRequestDirection }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
