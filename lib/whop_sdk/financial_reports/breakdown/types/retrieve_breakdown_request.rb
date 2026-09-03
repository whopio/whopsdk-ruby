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

          field :from, -> { String }, optional: false, nullable: false

          field :to, -> { String }, optional: false, nullable: false

          field :group_by, -> { Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownRequestGroupBy }, optional: true, nullable: false

          field :timezone, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
