# frozen_string_literal: true

module Whop_sdk
  module Ledgers
    module Types
      class GetFinancialReportResponse < Internal::Types::Model
        field :beginning_balance, -> { Integer }, optional: true, nullable: false

        field :ending_balance, -> { Integer }, optional: true, nullable: false

        field :fx_excluded_currencies, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :report_type, -> { Whop_sdk::Ledgers::Types::GetFinancialReportResponseReportType }, optional: false, nullable: false

        field :rows, -> { Internal::Types::Array[Whop_sdk::Ledgers::Types::GetFinancialReportResponseRowsItem] }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
