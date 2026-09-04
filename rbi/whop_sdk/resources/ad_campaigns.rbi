# typed: strong

module WhopSDK
  module Resources
    # An Ad Campaign is the top-level container for paid ads on an ad network. It sets
    # the platform, objective, and budget strategy shared by its
    # [ad groups](/api-reference/beta/ad-groups/ad-group) and ads.
    #
    # Use the Ad Campaigns API to create campaigns, list campaigns for an account,
    # retrieve or update campaign settings, and pause or resume campaign delivery.
    class AdCampaigns
      # Retrieves a single ad campaign with stats over the requested window.
      sig do
        params(
          id: String,
          attribution_model:
            WhopSDK::AdCampaignRetrieveParams::AttributionModel::OrSymbol,
          stats_from: String,
          stats_to: String,
          time_zone: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def retrieve(
        # Path param: The ad campaign ID.
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

      # Updates an ad campaign's editable fields (title, budget, schedule, bid strategy,
      # special ad categories, and, before launch, budget type and budget optimization),
      # and launches a draft campaign by setting status to active. Objective and desired
      # cost per result are fixed at creation and cannot be changed.
      sig do
        params(
          id: String,
          bid_type: WhopSDK::AdCampaignUpdateParams::BidType::OrSymbol,
          budget_amount: Float,
          budget_optimization:
            WhopSDK::AdCampaignUpdateParams::BudgetOptimization::OrSymbol,
          budget_type: WhopSDK::AdCampaignUpdateParams::BudgetType::OrSymbol,
          ends_at: String,
          special_ad_categories:
            T::Array[
              WhopSDK::AdCampaignUpdateParams::SpecialAdCategory::OrSymbol
            ],
          starts_at: String,
          status: WhopSDK::AdCampaignUpdateParams::Status::OrSymbol,
          title: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def update(
        # Path param: The ad campaign ID.
        id,
        # Body param: How delivery bids in the ad auction: `minimum_cost` gets the most
        # results for the budget, `average_target` holds an average cost per result,
        # `maximum_target` never bids above a cap. Switching to `minimum_cost` clears the
        # cap amounts stored on the campaign's ad groups. Only for campaigns that own the
        # budget.
        bid_type: nil,
        # Body param: The campaign budget, in the account's currency. Interpreted as daily
        # or lifetime per the campaign's budget type, including a budget_type sent in the
        # same request.
        budget_amount: nil,
        # Body param: Which level owns the budget: the whole campaign (`ad_campaign`) or
        # each ad group individually (`ad_group`). Only changeable before the campaign is
        # live on the ad network; switching to `ad_campaign` requires budget_amount in the
        # same request, and switching to `ad_group` clears the campaign budget.
        budget_optimization: nil,
        # Body param: Whether `budget_amount` is spent per day (`daily`) or over the
        # campaign's full run (`lifetime`). Only changeable while the campaign is a draft;
        # send budget_amount in the same request so the amount lands on the new type.
        budget_type: nil,
        # Body param: When the campaign stops delivering, as an ISO 8601 timestamp. Only
        # for campaigns that own the budget.
        ends_at: nil,
        # Body param: Regulated categories the campaign falls under. Editable on any
        # campaign, draft or launched; pass an empty array to clear.
        special_ad_categories: nil,
        # Body param: When the campaign starts delivering, as an ISO 8601 timestamp. Only
        # for campaigns that own the budget.
        starts_at: nil,
        # Body param: Set to active to launch a draft campaign (moderates and pushes it
        # live). Live-campaign pause and resume use the pause and unpause actions.
        status: nil,
        # Body param: The name of the campaign.
        title: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists the ad campaigns for an account, with stats over the requested window.
      sig do
        params(
          account_id: String,
          after: String,
          attribution_model:
            WhopSDK::AdCampaignListParams::AttributionModel::OrSymbol,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::AdCampaignListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AdCampaignListParams::Order::OrSymbol,
          query: String,
          stats_from: String,
          stats_to: String,
          status: WhopSDK::AdCampaignListParams::Status::OrSymbol,
          time_zone: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::AdCampaign])
      end
      def list(
        # Query param: The account the campaigns belong to. Defaults to the account-scoped
        # key's own account.
        account_id: nil,
        # Query param: Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Query param: Attribution model the conversion stats count under (defaults to
        # last_touch). Under both models a journey with any whop ad touch attributes to
        # whop; the model picks which whop touch credits the entity and which non-whop
        # source wins otherwise.
        attribution_model: nil,
        # Query param: Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Query param: Only return campaigns created after this timestamp.
        created_after: nil,
        # Query param: Only return campaigns created before this timestamp.
        created_before: nil,
        # Query param: The sort direction. Defaults to desc.
        direction: nil,
        # Query param: The number of campaigns to return.
        first: nil,
        # Query param: The number of campaigns to return from the end of the range.
        last: nil,
        # Query param: The field to sort by. Defaults to created_at. Stat columns (spend,
        # impressions, …) rank over the stats_from/stats_to window across the whole list,
        # not just the current page. results, cost_per_result and return_on_ad_spend rank
        # by the same Whop pixel-attributed values the response reports.
        order: nil,
        # Query param: Filter campaigns by a title or ID substring.
        query: nil,
        # Query param: Start of the stats window. Defaults to all-time.
        stats_from: nil,
        # Query param: End of the stats window. Defaults to now.
        stats_to: nil,
        # Query param: Only return campaigns with this status.
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

      # Pauses an active ad campaign.
      sig do
        params(
          id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def pause(
        # The ad campaign ID.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        # A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Resumes a paused ad campaign. Requires an ads payment method on the account.
      sig do
        params(
          id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def unpause(
        # The ad campaign ID.
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
