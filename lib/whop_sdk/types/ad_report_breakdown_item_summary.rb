# frozen_string_literal: true

module Whop_sdk
  module Types
    # Aggregate totals and rates for this entity over the date range.
    class AdReportBreakdownItemSummary < Internal::Types::Model
      field :click_through_rate, -> { Integer }, optional: false, nullable: false

      field :clicks, -> { Integer }, optional: false, nullable: false

      field :cost_per_click, -> { Integer }, optional: false, nullable: false

      field :cost_per_mille, -> { Integer }, optional: false, nullable: true

      field :cost_per_result, -> { Integer }, optional: false, nullable: true

      field :frequency, -> { Integer }, optional: false, nullable: true

      field :impressions, -> { Integer }, optional: false, nullable: false

      field :reach, -> { Integer }, optional: false, nullable: false

      field :result_count, -> { Integer }, optional: false, nullable: true

      field :result_label_key, -> { Whop_sdk::Types::ResultLabelKeys }, optional: false, nullable: true

      field :result_label_override, -> { String }, optional: false, nullable: true

      field :return_on_ad_spend, -> { Integer }, optional: false, nullable: true

      field :spend, -> { Integer }, optional: false, nullable: false

      field :spend_currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: true
    end
  end
end
