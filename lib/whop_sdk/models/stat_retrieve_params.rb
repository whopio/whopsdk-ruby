# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Stats#retrieve
    class StatRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute metric
      #
      #   @return [String]
      required :metric, String

      # @!attribute from
      #   Start of the date range (YYYY-MM-DD).
      #
      #   @return [Date]
      required :from, Date

      # @!attribute to
      #   End of the date range (YYYY-MM-DD).
      #
      #   @return [Date]
      required :to, Date

      # @!attribute access_level
      #   Filter to a single access level. Pair with breakdown_by=access_level. Available
      #   on metrics that list access_level.
      #
      #   @return [String, nil]
      optional :access_level, String

      # @!attribute account_id
      #   The account this query concerns, for example biz_AbC123.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute ad_campaign_ids
      #   Ad campaign ids (adcamp\_...) to scope the report to; stats are summed across
      #   them. Available on metrics that list ad_campaign_ids.
      #
      #   @return [Array<String>, nil]
      optional :ad_campaign_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute ad_group_ids
      #   Ad group ids (adgrp\_...) to scope the report to; stats are summed across them.
      #   Available on metrics that list ad_group_ids.
      #
      #   @return [Array<String>, nil]
      optional :ad_group_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute ad_ids
      #   Ad ids (ad\_...) to scope the report to; stats are summed across them. Available
      #   on metrics that list ad_ids.
      #
      #   @return [Array<String>, nil]
      optional :ad_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute breakdown_by
      #   Split the metric out by one of its properties — each point gets a breakdown
      #   array. For example breakdown_by=currency returns an entry for usd, an entry for
      #   eur, and so on.
      #
      #   @return [String, nil]
      optional :breakdown_by, String

      # @!attribute card_network
      #   Filter to a single card brand, for example visa. A refinement of
      #   payment_method=card. Available on metrics that list card_network.
      #
      #   @return [String, nil]
      optional :card_network, String

      # @!attribute category
      #   Filter to a single balance-activity category, for example payments. Pair with
      #   breakdown_by=category to split the activity. Available on metrics that list
      #   category.
      #
      #   @return [String, nil]
      optional :category, String

      # @!attribute convert_to
      #   Display currency for money metrics — every amount is converted into this ISO
      #   currency using the exchange rate on each period's date. Defaults to usd. For the
      #   ads metrics (ad_spend, ad_report), pass the account's ads reporting currency to
      #   match the ad entity endpoints. Ignored when you filter or break down by currency
      #   (those report the original transaction currency, unconverted).
      #
      #   @return [String, nil]
      optional :convert_to, String

      # @!attribute currency
      #   Filter to transactions made in this original ISO currency, for example eur —
      #   reported in that currency, not converted. Pair with breakdown_by=currency to
      #   split a metric by currency. Available on metrics that list currency.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute fee_type
      #   Filter to a single fee type. Pair with breakdown_by=fee_type to split fees by
      #   type. Available on metrics that list fee_type.
      #
      #   @return [String, nil]
      optional :fee_type, String

      # @!attribute interval
      #   How wide each point is. Defaults to day. Snapshot metrics are day-only.
      #
      #   @return [Symbol, WhopSDK::Models::StatRetrieveParams::Interval, nil]
      optional :interval, enum: -> { WhopSDK::StatRetrieveParams::Interval }

      # @!attribute most_recent_action
      #   Filter to a single most-recent member action. Pair with
      #   breakdown_by=most_recent_action. Available on metrics that list
      #   most_recent_action.
      #
      #   @return [String, nil]
      optional :most_recent_action, String

      # @!attribute payment_method
      #   Filter to a single payment method, for example card or crypto. Available on
      #   metrics that list payment_method.
      #
      #   @return [String, nil]
      optional :payment_method, String

      # @!attribute product
      #   Filter to a single product (access pass id), for example prod_AbC123. Pair with
      #   breakdown_by=product. Available on metrics that list product.
      #
      #   @return [String, nil]
      optional :product, String

      # @!attribute referred_user_id
      #   Filter a referral metric to the businesses attributed to one person you
      #   referred, for example user_AbC123. Available on metrics that list
      #   referred_user_id.
      #
      #   @return [String, nil]
      optional :referred_user_id, String

      # @!attribute segment
      #   Filter to a single wallet-balance segment, for example available. Pair with
      #   breakdown_by=segment to split the balance. Available on metrics that list
      #   segment.
      #
      #   @return [String, nil]
      optional :segment, String

      # @!attribute snapshot_window
      #   Trailing window for snapshot metrics. Only accepted by snapshot metrics (each
      #   lists its allowed windows in the catalog); defaults to the metric's first
      #   supported window. Only 30d today.
      #
      #   @return [Symbol, WhopSDK::Models::StatRetrieveParams::SnapshotWindow, nil]
      optional :snapshot_window, enum: -> { WhopSDK::StatRetrieveParams::SnapshotWindow }

      # @!attribute source
      #   Filter to a single GMV source, for example payments. Pair with
      #   breakdown_by=source to split by source. Available on metrics that list source.
      #
      #   @return [String, nil]
      optional :source, String

      # @!attribute status
      #   Filter to a single membership status. Pair with breakdown_by=status. Available
      #   on metrics that list status.
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute time_zone
      #   IANA time zone to bucket the series in, for example America/New_York. Defaults
      #   to UTC. Not accepted by snapshot metrics, which are UTC only.
      #
      #   @return [String, nil]
      optional :time_zone, String

      # @!method initialize(metric:, from:, to:, access_level: nil, account_id: nil, ad_campaign_ids: nil, ad_group_ids: nil, ad_ids: nil, breakdown_by: nil, card_network: nil, category: nil, convert_to: nil, currency: nil, fee_type: nil, interval: nil, most_recent_action: nil, payment_method: nil, product: nil, referred_user_id: nil, segment: nil, snapshot_window: nil, source: nil, status: nil, time_zone: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::StatRetrieveParams} for more details.
      #
      #   @param metric [String]
      #
      #   @param from [Date] Start of the date range (YYYY-MM-DD).
      #
      #   @param to [Date] End of the date range (YYYY-MM-DD).
      #
      #   @param access_level [String] Filter to a single access level. Pair with breakdown_by=access_level. Available
      #
      #   @param account_id [String] The account this query concerns, for example biz_AbC123.
      #
      #   @param ad_campaign_ids [Array<String>] Ad campaign ids (adcamp\_...) to scope the report to; stats are summed across
      #   the
      #
      #   @param ad_group_ids [Array<String>] Ad group ids (adgrp\_...) to scope the report to; stats are summed across them.
      #   A
      #
      #   @param ad_ids [Array<String>] Ad ids (ad\_...) to scope the report to; stats are summed across them. Available
      #
      #   @param breakdown_by [String] Split the metric out by one of its properties — each point gets a breakdown arra
      #
      #   @param card_network [String] Filter to a single card brand, for example visa. A refinement of payment_method=
      #
      #   @param category [String] Filter to a single balance-activity category, for example payments. Pair with br
      #
      #   @param convert_to [String] Display currency for money metrics — every amount is converted into this ISO cur
      #
      #   @param currency [String] Filter to transactions made in this original ISO currency, for example eur — rep
      #
      #   @param fee_type [String] Filter to a single fee type. Pair with breakdown_by=fee_type to split fees by ty
      #
      #   @param interval [Symbol, WhopSDK::Models::StatRetrieveParams::Interval] How wide each point is. Defaults to day. Snapshot metrics are day-only.
      #
      #   @param most_recent_action [String] Filter to a single most-recent member action. Pair with breakdown_by=most_recent
      #
      #   @param payment_method [String] Filter to a single payment method, for example card or crypto. Available on metr
      #
      #   @param product [String] Filter to a single product (access pass id), for example prod_AbC123. Pair with
      #
      #   @param referred_user_id [String] Filter a referral metric to the businesses attributed to one person you referred
      #
      #   @param segment [String] Filter to a single wallet-balance segment, for example available. Pair with brea
      #
      #   @param snapshot_window [Symbol, WhopSDK::Models::StatRetrieveParams::SnapshotWindow] Trailing window for snapshot metrics. Only accepted by snapshot metrics (each li
      #
      #   @param source [String] Filter to a single GMV source, for example payments. Pair with breakdown_by=sour
      #
      #   @param status [String] Filter to a single membership status. Pair with breakdown_by=status. Available o
      #
      #   @param time_zone [String] IANA time zone to bucket the series in, for example America/New_York. Defaults t
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # How wide each point is. Defaults to day. Snapshot metrics are day-only.
      module Interval
        extend WhopSDK::Internal::Type::Enum

        HOUR = :hour
        DAY = :day
        WEEK = :week
        MONTH = :month
        YEAR = :year

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Trailing window for snapshot metrics. Only accepted by snapshot metrics (each
      # lists its allowed windows in the catalog); defaults to the metric's first
      # supported window. Only 30d today.
      module SnapshotWindow
        extend WhopSDK::Internal::Type::Enum

        SNAPSHOT_WINDOW_30D = :"30d"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
