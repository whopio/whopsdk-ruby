# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module FinancingApplications
      module Types
        class SubmitFinancingApplicationsRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false

          field :merchant_acceptance, -> { Whop_sdk::Accounts::FinancingApplications::Types::SubmitFinancingApplicationsRequestMerchantAcceptance }, optional: false, nullable: false
        end
      end
    end
  end
end
