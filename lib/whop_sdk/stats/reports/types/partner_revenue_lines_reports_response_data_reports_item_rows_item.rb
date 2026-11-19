# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PartnerRevenueLinesReportsResponseDataReportsItemRowsItem < Internal::Types::Model
          field :commission, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

          field :income_source, -> { Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsResponseDataReportsItemRowsItemIncomeSource }, optional: true, nullable: false

          field :paid, -> { Integer }, optional: true, nullable: false

          field :revenue_line, -> { Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsResponseDataReportsItemRowsItemRevenueLine }, optional: true, nullable: false
        end
      end
    end
  end
end
