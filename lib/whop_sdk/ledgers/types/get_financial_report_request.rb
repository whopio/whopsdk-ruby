# frozen_string_literal: true

module Whop_sdk
  module Ledgers
    module Types
      class GetFinancialReportRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :report_type, -> { Whop_sdk::Ledgers::Types::GetFinancialReportRequestReportType }, optional: false, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :in_currency, -> { String }, optional: true, nullable: false

        field :from_date, -> { String }, optional: true, nullable: false

        field :to_date, -> { String }, optional: true, nullable: false

        field :group_by, -> { Whop_sdk::Ledgers::Types::GetFinancialReportRequestGroupBy }, optional: true, nullable: false

        field :timezone, -> { String }, optional: true, nullable: false

        field :cumulative, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :scope_account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
