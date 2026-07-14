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
    # should stop running, and pause or resume delivery.
    class AdGroups
      # Creates an ad group (ad set) in a campaign.
      sig do
        params(
          ad_campaign_id: String,
          audiences: T.anything,
          bid_type: WhopSDK::AdGroupCreateParams::BidType::OrSymbol,
          budget_amount: Float,
          budget_type: WhopSDK::AdGroupCreateParams::BudgetType::OrSymbol,
          conversion_event:
            T.nilable(
              T.any(
                WhopSDK::AdGroupCreateParams::ConversionEvent::OrSymbol,
                String
              )
            ),
          conversion_location:
            WhopSDK::AdGroupCreateParams::ConversionLocation::OrSymbol,
          demographics: T.anything,
          desired_cost_per_result: Float,
          devices: T.anything,
          dynamic_creative: T::Boolean,
          ends_at: String,
          frequency_cap: T.anything,
          languages: T::Array[String],
          message_apps:
            T::Array[WhopSDK::AdGroupCreateParams::MessageApp::OrSymbol],
          minimum_daily_spend: Float,
          optimization_goal: String,
          placements: T.anything,
          regions: T.anything,
          starts_at: String,
          status: WhopSDK::AdGroupCreateParams::Status::OrSymbol,
          title: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def create(
        # The ad campaign to create the ad group in.
        ad_campaign_id:,
        # Saved-audience targeting: { include, exclude } arrays of audience IDs.
        # Incompatible with demographics.automatic (Advantage+).
        audiences: nil,
        # Bid strategy.
        bid_type: nil,
        # Ad-set budget in dollars (ABO only; omit under CBO).
        budget_amount: nil,
        # Whether the budget is daily or lifetime.
        budget_type: nil,
        # The pixel event optimized for. A standard event, or any custom pixel event name.
        conversion_event: nil,
        # Where results happen: website (conversions), profile (IG/FB engagement),
        # messaging (DM), on_ad (engagement on the ad, surface follows the optimization
        # goal), or the lead destinations (instant_forms, instant_forms_and_messenger,
        # website_and_instant_forms). The lead form itself is set on the ad.
        conversion_location: nil,
        # Demographic targeting: { automatic, minimum_age, maximum_age, gender }.
        demographics: nil,
        # Target/cap cost for average_target / maximum_target.
        desired_cost_per_result: nil,
        # Device targeting: { platforms, operating_systems: [{ os, minimum_version }] }.
        devices: nil,
        # Run Meta dynamic (Advantage+) creative for this ad set. Set at creation;
        # immutable afterward.
        dynamic_creative: nil,
        # Schedule end, ISO 8601.
        ends_at: nil,
        # { maximum_impressions, per_days } — only valid for reach optimization.
        frequency_cap: nil,
        # Languages to target as ISO 639 codes (e.g. en, es). Empty/omitted = all
        # languages.
        languages: nil,
        # Required when conversion_location is messaging: which apps to message on.
        # Combinations map to the matching Meta destination.
        message_apps: nil,
        # Daily spend floor within the budget.
        minimum_daily_spend: nil,
        # What the ad group optimizes for (e.g. conversions, link_clicks, reach).
        optimization_goal: nil,
        # 'automatic' (Advantage+) or a list of { platform, positions }. Omit positions to
        # target all of a platform's.
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
        # Geo targeting: { include / exclude: { countries (ISO 3166-1), regions
        # (states/provinces as ISO 3166-2, e.g. US-CA), cities (keyed), zips } }.
        regions: nil,
        # Schedule start, ISO 8601.
        starts_at: nil,
        # Initial status (default: active).
        status: nil,
        # The display name of the ad group.
        title: nil,
        request_options: {}
      )
      end

      # Retrieves a single ad group.
      sig do
        params(
          id: String,
          stats_from: String,
          stats_to: String,
          time_zone: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def retrieve(
        # The ad group ID.
        id,
        # Start of the stats window.
        stats_from: nil,
        # End of the stats window.
        stats_to: nil,
        # IANA timezone the stats window is interpreted in. Defaults to UTC.
        time_zone: nil,
        request_options: {}
      )
      end

      # Updates an ad group's editable fields. Only the keys you send are changed.
      sig do
        params(
          id: String,
          audiences: T.anything,
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
          demographics: T.anything,
          desired_cost_per_result: Float,
          devices: T.anything,
          ends_at: String,
          frequency_cap: T.anything,
          languages: T::Array[String],
          message_apps:
            T::Array[WhopSDK::AdGroupUpdateParams::MessageApp::OrSymbol],
          minimum_daily_spend: Float,
          optimization_goal: String,
          placements: T.anything,
          regions: T.anything,
          starts_at: String,
          status: WhopSDK::AdGroupUpdateParams::Status::OrSymbol,
          title: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def update(
        # The ad group ID.
        id,
        # Saved-audience targeting: { include, exclude } arrays of audience IDs.
        # Incompatible with demographics.automatic (Advantage+).
        audiences: nil,
        # Bid strategy.
        bid_type: nil,
        # Ad-set budget in dollars (ABO only; omit under CBO).
        budget_amount: nil,
        # Whether the budget is daily or lifetime.
        budget_type: nil,
        # The pixel event optimized for. A standard event, or any custom pixel event name.
        conversion_event: nil,
        # Where results happen: website (conversions), profile (IG/FB engagement),
        # messaging (DM), on_ad (engagement on the ad, surface follows the optimization
        # goal), or the lead destinations (instant_forms, instant_forms_and_messenger,
        # website_and_instant_forms). The lead form itself is set on the ad.
        conversion_location: nil,
        # Demographic targeting: { automatic, minimum_age, maximum_age, gender }.
        demographics: nil,
        # Target/cap cost for average_target / maximum_target.
        desired_cost_per_result: nil,
        # Device targeting: { platforms, operating_systems: [{ os, minimum_version }] }.
        devices: nil,
        # Schedule end, ISO 8601.
        ends_at: nil,
        # { maximum_impressions, per_days } — only valid for reach optimization.
        frequency_cap: nil,
        # Languages to target as ISO 639 codes (e.g. en, es). Empty/omitted = all
        # languages.
        languages: nil,
        # Required when conversion_location is messaging: which apps to message on.
        # Combinations map to the matching Meta destination.
        message_apps: nil,
        # Daily spend floor within the budget.
        minimum_daily_spend: nil,
        # What the ad group optimizes for (e.g. conversions, link_clicks, reach).
        optimization_goal: nil,
        # 'automatic' (Advantage+) or a list of { platform, positions }. Omit positions to
        # target all of a platform's.
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
        # Geo targeting: { include / exclude: { countries (ISO 3166-1), regions
        # (states/provinces as ISO 3166-2, e.g. US-CA), cities (keyed), zips } }.
        regions: nil,
        # Schedule start, ISO 8601.
        starts_at: nil,
        # Initial status (default: active).
        status: nil,
        # The display name of the ad group.
        title: nil,
        request_options: {}
      )
      end

      # Lists ad groups for the account, newest first.
      sig do
        params(
          account_id: String,
          ad_campaign_id: String,
          after: String,
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
          status: String,
          time_zone: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::AdGroup])
      end
      def list(
        # Account whose ad groups to list. Defaults to the authenticated account.
        account_id: nil,
        # Filter to ad groups in this campaign.
        ad_campaign_id: nil,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Only return ad groups created after this timestamp.
        created_after: nil,
        # Only return ad groups created before this timestamp.
        created_before: nil,
        # The sort direction. Defaults to desc.
        direction: nil,
        # The number of ad groups to return.
        first: nil,
        # The number of ad groups to return from the end of the range.
        last: nil,
        # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
        # …) rank over the stats_from/stats_to window across the whole list, not just the
        # current page. results, cost_per_result and return_on_ad_spend rank by the same
        # Whop pixel-attributed values the response reports.
        order: nil,
        # Filter ad groups by a title or ID substring.
        query: nil,
        # Start of the stats window. Defaults to all-time.
        stats_from: nil,
        # End of the stats window. Defaults to now.
        stats_to: nil,
        # Filter to a status (active, paused, in_review, rejected).
        status: nil,
        # IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare
        # stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to
        # UTC.
        time_zone: nil,
        request_options: {}
      )
      end

      # Deletes an ad group. Returns true on success.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The ad group ID.
        id,
        request_options: {}
      )
      end

      # Pauses delivery of an ad group.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def pause(
        # The ad group ID.
        id,
        request_options: {}
      )
      end

      # Resumes delivery of a paused ad group.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def unpause(
        # The ad group ID.
        id,
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
