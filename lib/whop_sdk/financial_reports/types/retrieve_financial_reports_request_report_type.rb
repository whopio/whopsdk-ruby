# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Types
      module RetrieveFinancialReportsRequestReportType
        extend Whop_sdk::Internal::Types::Enum

        BALANCE_SUMMARY = "balance_summary"
        INCOME_STATEMENT = "income_statement"
        BALANCE_ACTIVITY = "balance_activity"
      end
    end
  end
end
