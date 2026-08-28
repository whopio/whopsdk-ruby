# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Breakdown
      module Types
        class RetrieveBreakdownRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false

          field :bucket, -> { Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownRequestBucket }, optional: false, nullable: false

          field :direction, -> { Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownRequestDirection }, optional: false, nullable: false

          field :currency, -> { String }, optional: false, nullable: false

          field :from_date, -> { String }, optional: false, nullable: false

          field :to_date, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
