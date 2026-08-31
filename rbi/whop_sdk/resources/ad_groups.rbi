# typed: strong

module WhopSDK
  module Resources
    # An Ad Group sits inside an
    # [ad campaign](/api-reference/beta/ad-campaigns/ad-campaign) and controls
    # delivery for [ads](/api-reference/beta/ads/ad). It sets the audience,
    # placements, schedule, budget, and optimization goal for its ads.
    #
    # Use the Ad Groups API to create ad groups in campaigns, list or retrieve
    # targeting and delivery settings, update budgets or targeting, delete groups that
    # should stop running, and pause or resume delivery. It can also search the ad
    # platform's targeting taxonomy for options to target and estimate how many people
    # a draft targeting spec can reach.
    class AdGroups
      # Retrieves a single ad group.
      sig do
        params(
          id: String,
          attribution_model:
            WhopSDK::AdGroupRetrieveParams::AttributionModel::OrSymbol,
          stats_from: String,
          stats_to: String,
          time_zone: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def retrieve(
        # Path param: The ad group ID.
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

      # Updates an ad group's editable fields. Only the keys you send are changed.
      sig do
        params(
          id: String,
          audiences: WhopSDK::AdGroupUpdateParams::Audiences::OrHash,
          bid_type: WhopSDK::AdGroupUpdateParams::BidType::OrSymbol,
          budget_amount: Float,
          budget_type: WhopSDK::AdGroupUpdateParams::BudgetType::OrSymbol,
          conversion_event:
            T.nilable(
              T.any(
                WhopSDK::AdGroupUpdateParams::ConversionEvent::OrSymbol,
                String
              )
            ),
          conversion_location:
            WhopSDK::AdGroupUpdateParams::ConversionLocation::OrSymbol,
          demographics: WhopSDK::AdGroupUpdateParams::Demographics::OrHash,
          desired_cost_per_result: Float,
          detailed_targeting:
            WhopSDK::AdGroupUpdateParams::DetailedTargeting::OrHash,
          devices: WhopSDK::AdGroupUpdateParams::Devices::OrHash,
          ends_at: String,
          frequency_cap: WhopSDK::AdGroupUpdateParams::FrequencyCap::OrHash,
          languages: T::Array[String],
          message_apps:
            T::Array[WhopSDK::AdGroupUpdateParams::MessageApp::OrSymbol],
          minimum_daily_spend: Float,
          optimization_goal:
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::OrSymbol,
          placements:
            T.any(
              WhopSDK::AdGroupUpdateParams::Placements::OrSymbol,
              T::Array[
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::OrHash
              ]
            ),
          regions: WhopSDK::AdGroupUpdateParams::Regions::OrHash,
          starts_at: String,
          status: WhopSDK::AdGroupUpdateParams::Status::OrSymbol,
          title: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def update(
        # Path param: The ad group ID.
        id,
        # Body param: Saved audiences to deliver to or exclude. Can't be combined with
        # demographics.automatic.
        audiences: nil,
        # Body param: How delivery bids are set in the ad auction. Target-based strategies
        # use `desired_cost_per_result`.
        bid_type: nil,
        # Body param: This ad group's budget, in the ad account's currency. Omit when the
        # budget is set on the campaign instead.
        budget_amount: nil,
        # Body param: Whether budget_amount is spent per day (`daily`) or over the ad
        # group's full run (`lifetime`).
        budget_type: nil,
        # Body param: The pixel event optimized for. A standard event, or any custom pixel
        # event name.
        conversion_event: nil,
        # Body param: Where the outcome being optimized for occurs, such as a website
        # visit, social-profile visit, messaging conversation, ad interaction, or
        # lead-form submission. The lead form itself is set on the ad.
        conversion_location: nil,
        # Body param: Age, gender, and automatic-audience targeting.
        demographics: nil,
        # Body param: Cost per result to aim for (`average_target`) or never exceed
        # (`maximum_target`).
        desired_cost_per_result: nil,
        # Body param: Interest, behavior, and demographic targeting, using categories from
        # the ad platform's targeting taxonomy. Entries across interests, behaviors, and
        # demographics are OR'd together (anyone matching any entry is reached), matching
        # Ads Manager's detailed-targeting box. At most 100 entries per section. Can't be
        # combined with demographics.automatic, and unavailable to campaigns with
        # special_ad_categories. Send the complete intended state — a section you omit is
        # cleared.
        detailed_targeting: nil,
        # Body param: Device platforms and operating systems to target.
        devices: nil,
        # Body param: When the ad group stops delivering, as an ISO 8601 timestamp. Omit
        # to run until paused.
        ends_at: nil,
        # Body param: Cap on how often one person sees ads from this ad group. Only
        # available on campaigns with the `awareness` objective.
        frequency_cap: nil,
        # Body param: Languages to target, as ISO 639 codes such as `en` or `es`. Empty or
        # omitted targets all languages.
        languages: nil,
        # Body param: Apps the conversation opens in. Required when setting
        # `conversion_location` to `messaging`, and rejected unless the ad group's
        # conversion location is `messaging`.
        message_apps: nil,
        # Body param: Minimum the ad group tries to spend each day.
        minimum_daily_spend: nil,
        # Body param: The result the ad group's delivery is optimized to get the most of.
        optimization_goal: nil,
        # Body param: `automatic` to let the ad platform choose placements, or the list of
        # platforms and positions to target. Omit a platform's positions to target all of
        # them.
        #
        # Valid positions per platform:
        #
        # - `facebook`: `feed`, `right_hand_column`, `marketplace`, `search`,
        #   `profile_feed`, `notification`, `story`, `instream_video`, `facebook_reels`,
        #   `facebook_reels_overlay`, `biz_disco_feed`
        # - `instagram`: `stream`, `story`, `explore`, `explore_home`, `reels`,
        #   `profile_feed`, `profile_reels`, `ig_search`
        # - `messenger`: `story`
        # - `audience_network`: `classic`, `rewarded_video`
        # - `threads`: `threads_stream`
        # - `whatsapp`: `status`
        placements: nil,
        # Body param: Locations to target and exclude.
        regions: nil,
        # Body param: When the ad group starts delivering, as an ISO 8601 timestamp. Omit
        # to start as soon as it's active.
        starts_at: nil,
        # Body param: Initial status (default: `active`).
        status: nil,
        # Body param: The display name of the ad group.
        title: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists ad groups for the account, newest first.
      sig do
        params(
          account_id: String,
          ad_campaign_id: String,
          ad_campaign_ids: T::Array[String],
          after: String,
          attribution_model:
            WhopSDK::AdGroupListParams::AttributionModel::OrSymbol,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::AdGroupListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AdGroupListParams::Order::OrSymbol,
          query: String,
          stats_from: String,
          stats_to: String,
          status: WhopSDK::AdGroupListParams::Status::OrSymbol,
          time_zone: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::AdGroup])
      end
      def list(
        # Query param: Account whose ad groups to list. Defaults to the authenticated
        # account.
        account_id: nil,
        # Query param: Filter to ad groups in this campaign.
        ad_campaign_id: nil,
        # Query param: Filter to ad groups in these campaigns (max 100). Repeat the
        # parameter for each id (ad_campaign_ids=a&ad_campaign_ids=b).
        ad_campaign_ids: nil,
        # Query param: Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Query param: Attribution model the conversion stats count under (defaults to
        # last_touch). Under both models a journey with any whop ad touch attributes to
        # whop; the model picks which whop touch credits the entity and which non-whop
        # source wins otherwise.
        attribution_model: nil,
        # Query param: Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Query param: Only return ad groups created after this timestamp.
        created_after: nil,
        # Query param: Only return ad groups created before this timestamp.
        created_before: nil,
        # Query param: The sort direction. Defaults to desc.
        direction: nil,
        # Query param: The number of ad groups to return.
        first: nil,
        # Query param: The number of ad groups to return from the end of the range.
        last: nil,
        # Query param: The field to sort by. Defaults to created_at. Stat columns (spend,
        # impressions, …) rank over the stats_from/stats_to window across the whole list,
        # not just the current page. results, cost_per_result and return_on_ad_spend rank
        # by the same Whop pixel-attributed values the response reports.
        order: nil,
        # Query param: Filter ad groups by a title or ID substring.
        query: nil,
        # Query param: Start of the stats window. Defaults to all-time.
        stats_from: nil,
        # Query param: End of the stats window. Defaults to now.
        stats_to: nil,
        # Query param: Filter to ad groups with this status.
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

      # Deletes an ad group.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdGroupDeleteResponse)
      end
      def delete(
        # The ad group ID.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Pauses delivery of an ad group.
      sig do
        params(
          id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def pause(
        # The ad group ID.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        # A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Resumes delivery of a paused ad group.
      sig do
        params(
          id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def unpause(
        # The ad group ID.
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
