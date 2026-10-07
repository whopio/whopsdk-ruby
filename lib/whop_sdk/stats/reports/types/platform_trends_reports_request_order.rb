# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        module PlatformTrendsReportsRequestOrder
          extend Whop_sdk::Internal::Types::Enum

          GROSS_REVENUE = "gross_revenue"
          BUSINESSES = "businesses"
          PAYMENTS = "payments"
          CUSTOMERS = "customers"
          AOV = "aov"
          REPEAT_RATE = "repeat_rate"
          P99GROSS_REVENUE = "p99_gross_revenue"
          NEW_BUSINESSES = "new_businesses"
          AVG_BUSINESS_AGE = "avg_business_age"
          AVG_OWNER_AGE = "avg_owner_age"
          AVG_CUSTOMER_AGE = "avg_customer_age"
        end
      end
    end
  end
end
