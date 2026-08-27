# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Types
      class RetrieveFinancialReportsResponsePaymentFeeBreakdownItem < Internal::Types::Model
        field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

        field :category, -> { Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsResponsePaymentFeeBreakdownItemCategory }, optional: false, nullable: false

        field :payment_method, -> { String }, optional: false, nullable: false

        field :period, -> { String }, optional: false, nullable: false
      end
    end
  end
end
