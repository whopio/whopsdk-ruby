# frozen_string_literal: true

module Whop_sdk
  module FinancingApplications
    module Types
      class ListFinancingApplicationsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::FinancingApplications::Types::ListFinancingApplicationsRequestStatus }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::FinancingApplications::Types::ListFinancingApplicationsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::FinancingApplications::Types::ListFinancingApplicationsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
