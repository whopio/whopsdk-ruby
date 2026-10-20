# frozen_string_literal: true

module Whop_sdk
  module FinancingApplications
    module Types
      class UpdateFinancingApplicationsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :answers, -> { Internal::Types::Array[Whop_sdk::FinancingApplications::Types::UpdateFinancingApplicationsRequestAnswersItem] }, optional: false, nullable: false
      end
    end
  end
end
