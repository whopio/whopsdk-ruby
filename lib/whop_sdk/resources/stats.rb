# frozen_string_literal: true

module WhopSDK
  module Resources
    # Stats represent aggregated activity for an account over time. They help you
    # understand revenue, transactions, disputes, members, referrals, and advertising
    # performance across reporting periods like days, weeks, or months.
    #
    # Use the Stats API to list available metrics and their filterable properties,
    # then retrieve time-series values for a date range.
    class Stats
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::StatRetrieveParams} for more details.
      #
      # Retrieves a metric as a time series of points for an account over a date range.
      #
      # @overload retrieve(metric, from:, to:, access_level: nil, account_id: nil, ad_campaign_ids: nil, ad_group_ids: nil, ad_ids: nil, breakdown_by: nil, card_network: nil, category: nil, convert_to: nil, currency: nil, fee_type: nil, interval: nil, most_recent_action: nil, payment_method: nil, product: nil, referred_user_id: nil, segment: nil, snapshot_window: nil, source: nil, status: nil, time_zone: nil, request_options: {})
      #
      # @param metric [String] The metric to retrieve, for example net_revenue. Use GET /stats to see every met
      #
      # @param from [Date] Start of the date range (YYYY-MM-DD).
      #
      # @param to [Date] End of the date range (YYYY-MM-DD).
      #
      # @param access_level [String] Filter to a single access level. Pair with breakdown_by=access_level. Available
      #
      # @param account_id [String] The account this query concerns, for example biz_AbC123.
      #
      # @param ad_campaign_ids [Array<String>] Ad campaign ids (adcamp\_...) to scope the report to; stats are summed across
      # the
      #
      # @param ad_group_ids [Array<String>] Ad group ids (adgrp\_...) to scope the report to; stats are summed across them.
      # A
      #
      # @param ad_ids [Array<String>] Ad ids (ad\_...) to scope the report to; stats are summed across them. Available
      #
      # @param breakdown_by [String] Split the metric out by one of its properties — each point gets a breakdown arra
      #
      # @param card_network [String] Filter to a single card brand, for example visa. A refinement of payment_method=
      #
      # @param category [String] Filter to a single balance-activity category, for example payments. Pair with br
      #
      # @param convert_to [String] Display currency for money metrics — every amount is converted into this ISO cur
      #
      # @param currency [String] Filter to transactions made in this original ISO currency, for example eur — rep
      #
      # @param fee_type [String] Filter to a single fee type. Pair with breakdown_by=fee_type to split fees by ty
      #
      # @param interval [Symbol, WhopSDK::Models::StatRetrieveParams::Interval] How wide each point is. Defaults to day. Snapshot metrics are day-only.
      #
      # @param most_recent_action [String] Filter to a single most-recent member action. Pair with breakdown_by=most_recent
      #
      # @param payment_method [String] Filter to a single payment method, for example card or crypto. Available on metr
      #
      # @param product [String] Filter to a single product (access pass id), for example prod_AbC123. Pair with
      #
      # @param referred_user_id [String] Filter a referral metric to the businesses attributed to one person you referred
      #
      # @param segment [String] Filter to a single wallet-balance segment, for example available. Pair with brea
      #
      # @param snapshot_window [Symbol, WhopSDK::Models::StatRetrieveParams::SnapshotWindow] Trailing window for snapshot metrics. Only accepted by snapshot metrics (each li
      #
      # @param source [String] Filter to a single GMV source, for example payments. Pair with breakdown_by=sour
      #
      # @param status [String] Filter to a single membership status. Pair with breakdown_by=status. Available o
      #
      # @param time_zone [String] IANA time zone to bucket the series in, for example America/New_York. Defaults t
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::StatRetrieveResponse]
      #
      # @see WhopSDK::Models::StatRetrieveParams
      def retrieve(metric, params)
        parsed, options = WhopSDK::StatRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["stats/%1$s", metric],
          query: query,
          model: WhopSDK::Models::StatRetrieveResponse,
          options: options
        )
      end

      # Lists every metric you can query, with its unit and the properties you can
      # filter or break it down by.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::StatListResponse]
      #
      # @see WhopSDK::Models::StatListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "stats",
          model: WhopSDK::Models::StatListResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
