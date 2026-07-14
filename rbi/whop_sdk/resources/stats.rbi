# typed: strong

module WhopSDK
  module Resources
    # Stats represent aggregated activity for an account over time. They help you
    # understand revenue, transactions, disputes, members, referrals, and advertising
    # performance across reporting periods like days, weeks, or months.
    #
    # Use the Stats API to list available metrics and their filterable properties,
    # then retrieve time-series values for a date range.
    class Stats
      # Retrieves a metric as a time series of points for an account over a date range.
      sig do
        params(
          metric: String,
          from: Date,
          to: Date,
          access_level: String,
          account_id: String,
          ad_campaign_ids: T::Array[String],
          ad_group_ids: T::Array[String],
          ad_ids: T::Array[String],
          breakdown_by: String,
          card_network: String,
          category: String,
          convert_to: String,
          currency: String,
          fee_type: String,
          interval: WhopSDK::StatRetrieveParams::Interval::OrSymbol,
          most_recent_action: String,
          payment_method: String,
          product: String,
          referred_user_id: String,
          segment: String,
          snapshot_window:
            WhopSDK::StatRetrieveParams::SnapshotWindow::OrSymbol,
          source: String,
          status: String,
          time_zone: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::StatRetrieveResponse)
      end
      def retrieve(
        # The metric to retrieve, for example net_revenue. Use GET /stats to see every
        # metric key. The metric sets the unit and the properties you can filter or break
        # down by.
        metric,
        # Start of the date range (YYYY-MM-DD).
        from:,
        # End of the date range (YYYY-MM-DD).
        to:,
        # Filter to a single access level. Pair with breakdown_by=access_level. Available
        # on metrics that list access_level.
        access_level: nil,
        # The account this query concerns, for example biz_AbC123.
        account_id: nil,
        # Ad campaign ids (adcamp\_...) to scope the report to; stats are summed across
        # them. Available on metrics that list ad_campaign_ids.
        ad_campaign_ids: nil,
        # Ad group ids (adgrp\_...) to scope the report to; stats are summed across them.
        # Available on metrics that list ad_group_ids.
        ad_group_ids: nil,
        # Ad ids (ad\_...) to scope the report to; stats are summed across them. Available
        # on metrics that list ad_ids.
        ad_ids: nil,
        # Split the metric out by one of its properties — each point gets a breakdown
        # array. For example breakdown_by=currency returns an entry for usd, an entry for
        # eur, and so on.
        breakdown_by: nil,
        # Filter to a single card brand, for example visa. A refinement of
        # payment_method=card. Available on metrics that list card_network.
        card_network: nil,
        # Filter to a single balance-activity category, for example payments. Pair with
        # breakdown_by=category to split the activity. Available on metrics that list
        # category.
        category: nil,
        # Display currency for money metrics — every amount is converted into this ISO
        # currency using the exchange rate on each period's date. Defaults to usd. For the
        # ads metrics (ad_spend, ad_report), pass the account's ads reporting currency to
        # match the ad entity endpoints. Ignored when you filter or break down by currency
        # (those report the original transaction currency, unconverted).
        convert_to: nil,
        # Filter to transactions made in this original ISO currency, for example eur —
        # reported in that currency, not converted. Pair with breakdown_by=currency to
        # split a metric by currency. Available on metrics that list currency.
        currency: nil,
        # Filter to a single fee type. Pair with breakdown_by=fee_type to split fees by
        # type. Available on metrics that list fee_type.
        fee_type: nil,
        # How wide each point is. Defaults to day. Snapshot metrics are day-only.
        interval: nil,
        # Filter to a single most-recent member action. Pair with
        # breakdown_by=most_recent_action. Available on metrics that list
        # most_recent_action.
        most_recent_action: nil,
        # Filter to a single payment method, for example card or crypto. Available on
        # metrics that list payment_method.
        payment_method: nil,
        # Filter to a single product (access pass id), for example prod_AbC123. Pair with
        # breakdown_by=product. Available on metrics that list product.
        product: nil,
        # Filter a referral metric to the businesses attributed to one person you
        # referred, for example user_AbC123. Available on metrics that list
        # referred_user_id.
        referred_user_id: nil,
        # Filter to a single wallet-balance segment, for example available. Pair with
        # breakdown_by=segment to split the balance. Available on metrics that list
        # segment.
        segment: nil,
        # Trailing window for snapshot metrics. Only accepted by snapshot metrics (each
        # lists its allowed windows in the catalog); defaults to the metric's first
        # supported window. Only 30d today.
        snapshot_window: nil,
        # Filter to a single GMV source, for example payments. Pair with
        # breakdown_by=source to split by source. Available on metrics that list source.
        source: nil,
        # Filter to a single membership status. Pair with breakdown_by=status. Available
        # on metrics that list status.
        status: nil,
        # IANA time zone to bucket the series in, for example America/New_York. Defaults
        # to UTC. Not accepted by snapshot metrics, which are UTC only.
        time_zone: nil,
        request_options: {}
      )
      end

      # Lists every metric you can query, with its unit and the properties you can
      # filter or break it down by.
      sig do
        params(request_options: WhopSDK::RequestOptions::OrHash).returns(
          WhopSDK::Models::StatListResponse
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
