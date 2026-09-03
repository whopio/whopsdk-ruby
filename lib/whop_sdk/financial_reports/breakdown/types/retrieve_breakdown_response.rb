# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Breakdown
      module Types
        class RetrieveBreakdownResponse < Internal::Types::Model
          field :activity_filters, -> { Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownResponseActivityFilters }, optional: false, nullable: false

          field :bucket, -> { Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownResponseBucket }, optional: false, nullable: false

          field :currency, -> { String }, optional: false, nullable: false

          field :direction, -> { Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownResponseDirection }, optional: false, nullable: false

          field :items, -> { Internal::Types::Array[Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownResponseItemsItem] }, optional: false, nullable: false

          field :other_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

          field :other_name, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
