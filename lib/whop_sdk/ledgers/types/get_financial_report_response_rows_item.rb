# frozen_string_literal: true

module Whop_sdk
  module Ledgers
    module Types
      class GetFinancialReportResponseRowsItem < Internal::Types::Model
        field :account_ik_path, -> { String }, optional: true, nullable: false

        field :account_name, -> { String }, optional: true, nullable: false

        field :account_type, -> { String }, optional: true, nullable: false

        field :amount, -> { Integer }, optional: false, nullable: false

        field :grouping, -> { Whop_sdk::Ledgers::Types::GetFinancialReportResponseRowsItemGrouping }, optional: false, nullable: false

        field :line_category, -> { Whop_sdk::Ledgers::Types::GetFinancialReportResponseRowsItemLineCategory }, optional: false, nullable: false

        field :line_count, -> { Integer }, optional: true, nullable: false

        field :period, -> { String }, optional: false, nullable: false

        field :profit_and_loss_section, -> { Whop_sdk::Ledgers::Types::GetFinancialReportResponseRowsItemProfitAndLossSection }, optional: true, nullable: false
      end
    end
  end
end
