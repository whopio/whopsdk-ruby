# frozen_string_literal: true

module WhopSDK
  module Resources
    # An Ad Campaign is the top-level container for paid ads on an ad network. It sets
    # the platform, objective, and budget strategy shared by its
    # [ad groups](/api-reference/beta/ad-groups/ad-group) and ads.
    #
    # Use the Ad Campaigns API to create campaigns, list campaigns for an account,
    # retrieve or update campaign settings, and pause or resume campaign delivery.
    class AdCampaigns
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignCreateParams} for more details.
      #
      # Creates an ad campaign for an account.
      #
      # @overload create(objective:, platform:, title:, account_id: nil, bid_type: nil, budget_amount: nil, budget_optimization: nil, budget_type: nil, desired_cost_per_result: nil, ends_at: nil, special_ad_categories: nil, starts_at: nil, request_options: {})
      #
      # @param objective [Symbol, WhopSDK::Models::AdCampaignCreateParams::Objective] The goal the campaign optimizes toward.
      #
      # @param platform [Symbol, WhopSDK::Models::AdCampaignCreateParams::Platform] The ad network the campaign runs on.
      #
      # @param title [String] The title of the campaign.
      #
      # @param account_id [String] The account to create the campaign under. Defaults to the account-scoped key's o
      #
      # @param bid_type [Symbol, WhopSDK::Models::AdCampaignCreateParams::BidType] CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or maxi
      #
      # @param budget_amount [Float] The campaign budget, in USD. Required for CBO (budget_optimization: ad_campaign)
      #
      # @param budget_optimization [Symbol, WhopSDK::Models::AdCampaignCreateParams::BudgetOptimization] Which level owns the budget — the campaign (CBO) or each ad group (ABO). Default
      #
      # @param budget_type [Symbol, WhopSDK::Models::AdCampaignCreateParams::BudgetType] Whether the budget is spent per day or over the campaign's lifetime. Defaults to
      #
      # @param desired_cost_per_result [Float] Target/cap cost per result in USD for average_target / maximum_target bidding. C
      #
      # @param ends_at [String] Campaign schedule end (ISO 8601). CBO only.
      #
      # @param special_ad_categories [Array<Symbol, WhopSDK::Models::AdCampaignCreateParams::SpecialAdCategory>] Regulated categories the campaign falls under. Ads in these categories are subje
      #
      # @param starts_at [String] Campaign schedule start (ISO 8601). CBO only.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignCreateParams
      def create(params)
        parsed, options = WhopSDK::AdCampaignCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ad_campaigns",
          body: parsed,
          model: WhopSDK::AdCampaign,
          options: options
        )
      end

      # Retrieves a single ad campaign with stats over the requested window.
      #
      # @overload retrieve(id, stats_from: nil, stats_to: nil, time_zone: nil, request_options: {})
      #
      # @param id [String] The ad campaign ID.
      #
      # @param stats_from [String] Start of the stats window.
      #
      # @param stats_to [String] End of the stats window.
      #
      # @param time_zone [String] IANA timezone the stats window is interpreted in. Defaults to UTC.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::AdCampaignRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["ad_campaigns/%1$s", id],
          query: query,
          model: WhopSDK::AdCampaign,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignUpdateParams} for more details.
      #
      # Updates an ad campaign's editable fields (title, budget, schedule, bid strategy,
      # and — before launch — budget optimization), and launches a draft campaign by
      # setting status to active. Objective, budget type, special ad categories and
      # desired cost per result are fixed at creation and cannot be changed.
      #
      # @overload update(id, bid_type: nil, budget_amount: nil, budget_optimization: nil, ends_at: nil, starts_at: nil, status: nil, title: nil, request_options: {})
      #
      # @param id [String] The ad campaign ID.
      #
      # @param bid_type [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BidType] CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or maxi
      #
      # @param budget_amount [Float] The campaign budget, in the account's currency. Interpreted as daily or lifetime
      #
      # @param budget_optimization [Symbol, WhopSDK::Models::AdCampaignUpdateParams::BudgetOptimization] Which level owns the budget — the campaign (CBO) or each ad group (ABO). Only ch
      #
      # @param ends_at [String] Campaign schedule end (ISO 8601). CBO only.
      #
      # @param starts_at [String] Campaign schedule start (ISO 8601). CBO only.
      #
      # @param status [Symbol, WhopSDK::Models::AdCampaignUpdateParams::Status] Set to active to launch a draft campaign (moderates and pushes it live). Live-ca
      #
      # @param title [String] The name of the campaign.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AdCampaignUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["ad_campaigns/%1$s", id],
          body: parsed,
          model: WhopSDK::AdCampaign,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCampaignListParams} for more details.
      #
      # Lists the ad campaigns for an account, with stats over the requested window.
      #
      # @overload list(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, time_zone: nil, request_options: {})
      #
      # @param account_id [String] The account the campaigns belong to. Defaults to the account-scoped key's own ac
      #
      # @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param created_after [String] Only return campaigns created after this timestamp.
      #
      # @param created_before [String] Only return campaigns created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::AdCampaignListParams::Direction] The sort direction. Defaults to desc.
      #
      # @param first [Integer] The number of campaigns to return.
      #
      # @param last [Integer] The number of campaigns to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::AdCampaignListParams::Order] The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      #
      # @param query [String] Filter campaigns by a title or ID substring.
      #
      # @param stats_from [String] Start of the stats window. Defaults to all-time.
      #
      # @param stats_to [String] End of the stats window. Defaults to now.
      #
      # @param status [Symbol, WhopSDK::Models::AdCampaignListParams::Status] Only return campaigns with this status.
      #
      # @param time_zone [String] IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare s
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AdCampaign>]
      #
      # @see WhopSDK::Models::AdCampaignListParams
      def list(params = {})
        parsed, options = WhopSDK::AdCampaignListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ad_campaigns",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::AdCampaign,
          options: options
        )
      end

      # Deletes an ad campaign and archives it on the ad platform (cascades to ad groups
      # and ads). Returns true on success.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ad campaign ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::AdCampaignDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["ad_campaigns/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Pauses an active ad campaign.
      #
      # @overload pause(id, request_options: {})
      #
      # @param id [String] The ad campaign ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignPauseParams
      def pause(id, params = {})
        @client.request(
          method: :post,
          path: ["ad_campaigns/%1$s/pause", id],
          model: WhopSDK::AdCampaign,
          options: params[:request_options]
        )
      end

      # Resumes a paused ad campaign.
      #
      # @overload unpause(id, request_options: {})
      #
      # @param id [String] The ad campaign ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdCampaign]
      #
      # @see WhopSDK::Models::AdCampaignUnpauseParams
      def unpause(id, params = {})
        @client.request(
          method: :post,
          path: ["ad_campaigns/%1$s/unpause", id],
          model: WhopSDK::AdCampaign,
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
