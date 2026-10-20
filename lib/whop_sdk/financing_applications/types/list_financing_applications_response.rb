# frozen_string_literal: true

module Whop_sdk
  module FinancingApplications
    module Types
      class ListFinancingApplicationsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::FinancingApplication] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::FinancingApplications::Types::ListFinancingApplicationsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
