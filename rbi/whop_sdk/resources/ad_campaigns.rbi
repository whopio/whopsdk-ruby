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
      # Creates an ad campaign for an account.
      sig do
        params(
          objective: WhopSDK::AdCampaignCreateParams::Objective::OrSymbol,
          platform: WhopSDK::AdCampaignCreateParams::Platform::OrSymbol,
          title: String,
          account_id: String,
          bid_type: WhopSDK::AdCampaignCreateParams::BidType::OrSymbol,
          budget_amount: Float,
          budget_optimization:
            WhopSDK::AdCampaignCreateParams::BudgetOptimization::OrSymbol,
          budget_type: WhopSDK::AdCampaignCreateParams::BudgetType::OrSymbol,
          desired_cost_per_result: Float,
          ends_at: String,
          special_ad_categories:
            T::Array[
              WhopSDK::AdCampaignCreateParams::SpecialAdCategory::OrSymbol
            ],
          starts_at: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def create(
        # The goal the campaign optimizes toward.
        objective:,
        # The ad network the campaign runs on.
        platform:,
        # The title of the campaign.
        title:,
        # The account to create the campaign under. Defaults to the account-scoped key's
        # own account.
        account_id: nil,
        # CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
        # maximum_target (bid cap). CBO only.
        bid_type: nil,
        # The campaign budget, in USD. Required for CBO (budget_optimization:
        # ad_campaign); omit for ABO.
        budget_amount: nil,
        # Which level owns the budget — the campaign (CBO) or each ad group (ABO).
        # Defaults to ad_group.
        budget_optimization: nil,
        # Whether the budget is spent per day or over the campaign's lifetime. Defaults to
        # daily.
        budget_type: nil,
        # Target/cap cost per result in USD for average_target / maximum_target bidding.
        # CBO only.
        desired_cost_per_result: nil,
        # Campaign schedule end (ISO 8601). CBO only.
        ends_at: nil,
        # Regulated categories the campaign falls under. Ads in these categories are
        # subject to extra targeting restrictions.
        special_ad_categories: nil,
        # Campaign schedule start (ISO 8601). CBO only.
        starts_at: nil,
        request_options: {}
      )
      end

      # Retrieves a single ad campaign with stats over the requested window.
      sig do
        params(
          id: String,
          stats_from: String,
          stats_to: String,
          time_zone: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def retrieve(
        # The ad campaign ID.
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

      # Updates an ad campaign's editable fields (title, budget, schedule, bid strategy,
      # and — before launch — budget optimization), and launches a draft campaign by
      # setting status to active. Objective, budget type, special ad categories and
      # desired cost per result are fixed at creation and cannot be changed.
      sig do
        params(
          id: String,
          bid_type: WhopSDK::AdCampaignUpdateParams::BidType::OrSymbol,
          budget_amount: Float,
          budget_optimization:
            WhopSDK::AdCampaignUpdateParams::BudgetOptimization::OrSymbol,
          ends_at: String,
          starts_at: String,
          status: WhopSDK::AdCampaignUpdateParams::Status::OrSymbol,
          title: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def update(
        # The ad campaign ID.
        id,
        # CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
        # maximum_target (bid cap). Switching to minimum_cost clears the cap amounts
        # stored on the campaign's ad groups. CBO only.
        bid_type: nil,
        # The campaign budget, in the account's currency. Interpreted as daily or lifetime
        # per the campaign's existing budget type.
        budget_amount: nil,
        # Which level owns the budget — the campaign (CBO) or each ad group (ABO). Only
        # changeable before the campaign is live on Meta; switching to ad_campaign
        # requires budget_amount in the same request, and switching to ad_group clears the
        # campaign budget.
        budget_optimization: nil,
        # Campaign schedule end (ISO 8601). CBO only.
        ends_at: nil,
        # Campaign schedule start (ISO 8601). CBO only.
        starts_at: nil,
        # Set to active to launch a draft campaign (moderates and pushes it live).
        # Live-campaign pause and resume use the pause and unpause actions.
        status: nil,
        # The name of the campaign.
        title: nil,
        request_options: {}
      )
      end

      # Lists the ad campaigns for an account, with stats over the requested window.
      sig do
        params(
          account_id: String,
          after: String,
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
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::AdCampaign])
      end
      def list(
        # The account the campaigns belong to. Defaults to the account-scoped key's own
        # account.
        account_id: nil,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Only return campaigns created after this timestamp.
        created_after: nil,
        # Only return campaigns created before this timestamp.
        created_before: nil,
        # The sort direction. Defaults to desc.
        direction: nil,
        # The number of campaigns to return.
        first: nil,
        # The number of campaigns to return from the end of the range.
        last: nil,
        # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
        # …) rank over the stats_from/stats_to window across the whole list, not just the
        # current page. results, cost_per_result and return_on_ad_spend rank by the same
        # Whop pixel-attributed values the response reports.
        order: nil,
        # Filter campaigns by a title or ID substring.
        query: nil,
        # Start of the stats window. Defaults to all-time.
        stats_from: nil,
        # End of the stats window. Defaults to now.
        stats_to: nil,
        # Only return campaigns with this status.
        status: nil,
        # IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare
        # stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to
        # UTC.
        time_zone: nil,
        request_options: {}
      )
      end

      # Deletes an ad campaign and archives it on the ad platform (cascades to ad groups
      # and ads). Returns true on success.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The ad campaign ID.
        id,
        request_options: {}
      )
      end

      # Pauses an active ad campaign.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def pause(
        # The ad campaign ID.
        id,
        request_options: {}
      )
      end

      # Resumes a paused ad campaign.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def unpause(
        # The ad campaign ID.
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
