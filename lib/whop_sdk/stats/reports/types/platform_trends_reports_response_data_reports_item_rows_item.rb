# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PlatformTrendsReportsResponseDataReportsItemRowsItem < Internal::Types::Model
          field :account_country, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataReportsItemRowsItemAccountCountry }, optional: true, nullable: false

          field :aov, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

          field :avg_business_age, -> { Integer }, optional: true, nullable: false

          field :avg_customer_age, -> { Integer }, optional: true, nullable: false

          field :avg_owner_age, -> { Integer }, optional: true, nullable: false

          field :business_type, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataReportsItemRowsItemBusinessType }, optional: true, nullable: false

          field :businesses, -> { Integer }, optional: true, nullable: false

          field :customer_country, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataReportsItemRowsItemCustomerCountry }, optional: true, nullable: false

          field :customers, -> { Integer }, optional: true, nullable: false

          field :gross_revenue, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

          field :industry_type, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataReportsItemRowsItemIndustryType }, optional: true, nullable: false

          field :median_gross_revenue, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

          field :new_businesses, -> { Integer }, optional: true, nullable: false

          field :payments, -> { Integer }, optional: true, nullable: false

          field :repeat_rate, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
