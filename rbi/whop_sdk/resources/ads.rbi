# typed: strong

module WhopSDK
  module Resources
    # An Ad is the individual creative unit delivered by an
    # [ad group](/api-reference/beta/ad-groups/ad-group). It holds the copy, creative
    # assets, and destination URL for one ad.
    #
    # Use the Ads API to list ads for an account, create ads inside ad groups,
    # retrieve or update creative details, delete ads that should stop running, and
    # pause or resume delivery.
    class Ads
      # Retrieves a single ad with stats over the requested window.
      sig do
        params(
          id: String,
          attribution_model:
            WhopSDK::AdRetrieveParams::AttributionModel::OrSymbol,
          stats_from: String,
          stats_to: String,
          time_zone: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def retrieve(
        # Path param: The ad ID.
        id,
        # Query param: Attribution model the conversion stats count under (defaults to
        # last_touch). Under both models a journey with any whop ad touch attributes to
        # whop; the model picks which whop touch credits the entity and which non-whop
        # source wins otherwise.
        attribution_model: nil,
        # Query param: Start of the stats window.
        stats_from: nil,
        # Query param: End of the stats window.
        stats_to: nil,
        # Query param: IANA timezone the stats window is interpreted in. Defaults to UTC.
        time_zone: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists the ads for an account, with stats over the requested window.
      sig do
        params(
          account_id: String,
          ad_campaign_id: String,
          ad_campaign_ids: T::Array[String],
          ad_group_id: String,
          ad_group_ids: T::Array[String],
          after: String,
          attribution_model: WhopSDK::AdListParams::AttributionModel::OrSymbol,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::AdListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AdListParams::Order::OrSymbol,
          query: String,
          stats_from: String,
          stats_to: String,
          status: WhopSDK::AdListParams::Status::OrSymbol,
          time_zone: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::Ad])
      end
      def list(
        # Query param: The account the ads belong to. Defaults to the account-scoped key's
        # own account.
        account_id: nil,
        # Query param: Only return ads in this ad campaign.
        ad_campaign_id: nil,
        # Query param: Only return ads in these ad campaigns (max 100). Repeat the
        # parameter for each id (ad_campaign_ids=a&ad_campaign_ids=b).
        ad_campaign_ids: nil,
        # Query param: Only return ads in this ad group.
        ad_group_id: nil,
        # Query param: Only return ads in these ad groups (max 100). Repeat the parameter
        # for each id (ad_group_ids=a&ad_group_ids=b).
        ad_group_ids: nil,
        # Query param: Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Query param: Attribution model the conversion stats count under (defaults to
        # last_touch). Under both models a journey with any whop ad touch attributes to
        # whop; the model picks which whop touch credits the entity and which non-whop
        # source wins otherwise.
        attribution_model: nil,
        # Query param: Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Query param: Only return ads created after this timestamp.
        created_after: nil,
        # Query param: Only return ads created before this timestamp.
        created_before: nil,
        # Query param: The sort direction. Defaults to desc.
        direction: nil,
        # Query param: The number of ads to return.
        first: nil,
        # Query param: The number of ads to return from the end of the range.
        last: nil,
        # Query param: The field to sort by. Defaults to created_at. Stat columns (spend,
        # impressions, …) rank over the stats_from/stats_to window across the whole list,
        # not just the current page. results, cost_per_result and return_on_ad_spend rank
        # by the same Whop pixel-attributed values the response reports.
        order: nil,
        # Query param: Filter ads by a title or ID substring.
        query: nil,
        # Query param: Start of the stats window. Defaults to all-time.
        stats_from: nil,
        # Query param: End of the stats window. Defaults to now.
        stats_to: nil,
        # Query param: Only return ads with this status.
        status: nil,
        # Query param: IANA timezone (e.g. America/New_York) the stats window is
        # interpreted in. Bare stats_from/stats_to dates resolve to day boundaries on this
        # clock. Defaults to UTC.
        time_zone: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Pauses an active ad.
      sig do
        params(
          id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def pause(
        # The ad ID.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        # A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Resumes a paused ad.
      sig do
        params(
          id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def unpause(
        # The ad ID.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        # A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
