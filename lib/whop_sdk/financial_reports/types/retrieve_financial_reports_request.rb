# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Types
      class RetrieveFinancialReportsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :report_type, -> { Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestReportType }, optional: false, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :in_currency, -> { String }, optional: true, nullable: false

        field :from, -> { String }, optional: true, nullable: false

        field :to, -> { String }, optional: true, nullable: false

        field :group_by, -> { Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestGroupBy }, optional: true, nullable: false

        field :timezone, -> { String }, optional: true, nullable: false

        field :line_types, -> { Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestLineTypesItem }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestDirection }, optional: true, nullable: false

        field :cumulative, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :scope_account_id, -> { String }, optional: true, nullable: false

        field :include_payment_fee_breakdown, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
