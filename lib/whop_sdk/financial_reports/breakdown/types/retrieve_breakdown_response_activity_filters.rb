# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Breakdown
      module Types
        class RetrieveBreakdownResponseActivityFilters < Internal::Types::Model
          field :direction, -> { Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownResponseActivityFiltersDirection }, optional: false, nullable: false

          field :line_types, -> { Internal::Types::Array[String] }, optional: false, nullable: false
        end
      end
    end
  end
end
