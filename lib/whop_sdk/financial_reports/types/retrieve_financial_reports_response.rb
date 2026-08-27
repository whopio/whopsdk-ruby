# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Types
      class RetrieveFinancialReportsResponse < Internal::Types::Model
        field :beginning_balance, -> { Integer }, optional: true, nullable: false

        field :currencies, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :ending_balance, -> { Integer }, optional: true, nullable: false

        field :fx_excluded_currencies, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :payment_fee_breakdown, -> { Internal::Types::Array[Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsResponsePaymentFeeBreakdownItem] }, optional: true, nullable: false

        field :report_type, -> { Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsResponseReportType }, optional: false, nullable: false

        field :rows, -> { Internal::Types::Array[Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsResponseRowsItem] }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
