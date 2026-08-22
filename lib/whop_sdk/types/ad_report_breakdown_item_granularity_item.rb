# frozen_string_literal: true

module Whop_sdk
  module Types
    # Per-bucket ad performance for an ad campaign, ad group, or ad. Bucket grain is set by the `ad_report` query's
    # `granularity` argument.
    class AdReportBreakdownItemGranularityItem < Internal::Types::Model
      field :bucket_start, -> { String }, optional: false, nullable: false

      field :clicks, -> { Integer }, optional: false, nullable: false

      field :granularity, -> { Whop_sdk::Types::Granularities }, optional: false, nullable: false

      field :impressions, -> { Integer }, optional: false, nullable: false

      field :reach, -> { Integer }, optional: false, nullable: false

      field :result_count, -> { Integer }, optional: false, nullable: true

      field :result_label_key, -> { Whop_sdk::Types::ResultLabelKeys }, optional: false, nullable: true

      field :result_label_override, -> { String }, optional: false, nullable: true

      field :spend, -> { Integer }, optional: false, nullable: false

      field :spend_currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :stat_date, -> { String }, optional: false, nullable: false

      field :stat_hour, -> { Integer }, optional: false, nullable: true
    end
  end
end
