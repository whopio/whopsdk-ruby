# frozen_string_literal: true

module Whop_sdk
  module AdReports
    module Types
      class RetrieveAdReportsRequest < Internal::Types::Model
        field :ad_campaign_ids, -> { String }, optional: true, nullable: false

        field :ad_group_ids, -> { String }, optional: true, nullable: false

        field :ad_ids, -> { String }, optional: true, nullable: false

        field :breakdown, -> { Whop_sdk::Types::AdReportBreakdownLevels }, optional: true, nullable: false

        field :company_id, -> { String }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :from, -> { String }, optional: false, nullable: false

        field :granularity, -> { Whop_sdk::Types::Granularities }, optional: true, nullable: false

        field :to, -> { String }, optional: false, nullable: false
      end
    end
  end
end
