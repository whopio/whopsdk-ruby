# frozen_string_literal: true

module Whop_sdk
  module FinancingApplications
    module Types
      class SubmitFinancingApplicationsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :merchant_acceptance, -> { Whop_sdk::FinancingApplications::Types::SubmitFinancingApplicationsRequestMerchantAcceptance }, optional: false, nullable: false
      end
    end
  end
end
