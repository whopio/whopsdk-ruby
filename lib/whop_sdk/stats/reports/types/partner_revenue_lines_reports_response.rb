# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PartnerRevenueLinesReportsResponse < Internal::Types::Model
          field :data, -> { Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsResponseData }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
