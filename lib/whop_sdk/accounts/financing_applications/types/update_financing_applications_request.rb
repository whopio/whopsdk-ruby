# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module FinancingApplications
      module Types
        class UpdateFinancingApplicationsRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false

          field :answers, -> { Internal::Types::Array[Whop_sdk::Accounts::FinancingApplications::Types::UpdateFinancingApplicationsRequestAnswersItem] }, optional: false, nullable: false
        end
      end
    end
  end
end
