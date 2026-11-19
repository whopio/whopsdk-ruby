# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PartnerRevenueLinesReportsResponseDataReportsItem < Internal::Types::Model
          field :rows, -> { Internal::Types::Array[Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsResponseDataReportsItemRowsItem] }, optional: false, nullable: false

          field :window, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
        end
      end
    end
  end
end
