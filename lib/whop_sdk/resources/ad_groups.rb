# frozen_string_literal: true

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
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdGroupCreateParams} for more details.
      #
      # Creates an ad group (ad set) in a campaign.
      #
      # @overload create(ad_campaign_id:, audiences: nil, bid_type: nil, budget_amount: nil, budget_type: nil, conversion_event: nil, conversion_location: nil, demographics: nil, desired_cost_per_result: nil, detailed_targeting: nil, devices: nil, dynamic_creative: nil, ends_at: nil, frequency_cap: nil, languages: nil, message_apps: nil, minimum_daily_spend: nil, optimization_goal: nil, placements: nil, regions: nil, starts_at: nil, status: nil, title: nil, request_options: {})
      #
      # @param ad_campaign_id [String] The ad campaign to create the ad group in.
      #
      # @param audiences [Object] Saved-audience targeting: { include, exclude } arrays of audience IDs. Incompati
      #
      # @param bid_type [Symbol, WhopSDK::Models::AdGroupCreateParams::BidType] Bid strategy.
      #
      # @param budget_amount [Float] Ad-set budget in dollars (ABO only; omit under CBO).
      #
      # @param budget_type [Symbol, WhopSDK::Models::AdGroupCreateParams::BudgetType] Whether the budget is daily or lifetime.
      #
      # @param conversion_event [Symbol, String, WhopSDK::Models::AdGroupCreateParams::ConversionEvent, nil] The pixel event optimized for. A standard event, or any custom pixel event name.
      #
      # @param conversion_location [Symbol, WhopSDK::Models::AdGroupCreateParams::ConversionLocation] Where results happen: website (conversions), profile (IG/FB engagement), messagi
      #
      # @param demographics [Object] Demographic targeting: { automatic, minimum_age, maximum_age, gender }.
      #
      # @param desired_cost_per_result [Float] Target/cap cost for average_target / maximum_target.
      #
      # @param detailed_targeting [Object] Detailed targeting: { interests: [{id, name}], behaviors: [{id, name}], demograp
      #
      # @param devices [Object] Device targeting: { platforms, operating_systems: [{ os, minimum_version }] }.
      #
      # @param dynamic_creative [Boolean] Run Meta dynamic (Advantage+) creative for this ad set. Set at creation; immutab
      #
      # @param ends_at [String] Schedule end, ISO 8601.
      #
      # @param frequency_cap [Object] { maximum_impressions, per_days } — only valid for reach optimization.
      #
      # @param languages [Array<String>] Languages to target as ISO 639 codes (e.g. en, es). Empty/omitted = all language
      #
      # @param message_apps [Array<Symbol, WhopSDK::Models::AdGroupCreateParams::MessageApp>] Required when conversion_location is messaging: which apps to message on. Combin
      #
      # @param minimum_daily_spend [Float] Daily spend floor within the budget.
      #
      # @param optimization_goal [String] What the ad group optimizes for (e.g. conversions, link_clicks, reach).
      #
      # @param placements [Object] 'automatic' (Advantage+) or a list of { platform, positions }. Omit positions to
      #
      # @param regions [Object] Geo targeting: { include / exclude: { countries (ISO 3166-1), country_groups (in
      #
      # @param starts_at [String] Schedule start, ISO 8601.
      #
      # @param status [Symbol, WhopSDK::Models::AdGroupCreateParams::Status] Initial status (default: active).
      #
      # @param title [String] The display name of the ad group.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupCreateParams
      def create(params)
        parsed, options = WhopSDK::AdGroupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ad_groups",
          body: parsed,
          model: WhopSDK::AdGroup,
          options: options
        )
      end

      # Retrieves a single ad group.
      #
      # @overload retrieve(id, stats_from: nil, stats_to: nil, time_zone: nil, request_options: {})
      #
      # @param id [String] The ad group ID.
      #
      # @param stats_from [String] Start of the stats window.
      #
      # @param stats_to [String] End of the stats window.
      #
      # @param time_zone [String] IANA timezone the stats window is interpreted in. Defaults to UTC.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::AdGroupRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["ad_groups/%1$s", id],
          query: query,
          model: WhopSDK::AdGroup,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdGroupUpdateParams} for more details.
      #
      # Updates an ad group's editable fields. Only the keys you send are changed.
      #
      # @overload update(id, audiences: nil, bid_type: nil, budget_amount: nil, budget_type: nil, conversion_event: nil, conversion_location: nil, demographics: nil, desired_cost_per_result: nil, detailed_targeting: nil, devices: nil, ends_at: nil, frequency_cap: nil, languages: nil, message_apps: nil, minimum_daily_spend: nil, optimization_goal: nil, placements: nil, regions: nil, starts_at: nil, status: nil, title: nil, request_options: {})
      #
      # @param id [String] The ad group ID.
      #
      # @param audiences [Object] Saved-audience targeting: { include, exclude } arrays of audience IDs. Incompati
      #
      # @param bid_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::BidType] Bid strategy.
      #
      # @param budget_amount [Float] Ad-set budget in dollars (ABO only; omit under CBO).
      #
      # @param budget_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::BudgetType] Whether the budget is daily or lifetime.
      #
      # @param conversion_event [Symbol, String, WhopSDK::Models::AdGroupUpdateParams::ConversionEvent, nil] The pixel event optimized for. A standard event, or any custom pixel event name.
      #
      # @param conversion_location [Symbol, WhopSDK::Models::AdGroupUpdateParams::ConversionLocation] Where results happen: website (conversions), profile (IG/FB engagement), messagi
      #
      # @param demographics [Object] Demographic targeting: { automatic, minimum_age, maximum_age, gender }.
      #
      # @param desired_cost_per_result [Float] Target/cap cost for average_target / maximum_target.
      #
      # @param detailed_targeting [Object] Detailed targeting: { interests: [{id, name}], behaviors: [{id, name}], demograp
      #
      # @param devices [Object] Device targeting: { platforms, operating_systems: [{ os, minimum_version }] }.
      #
      # @param ends_at [String] Schedule end, ISO 8601.
      #
      # @param frequency_cap [Object] { maximum_impressions, per_days } — only valid for reach optimization.
      #
      # @param languages [Array<String>] Languages to target as ISO 639 codes (e.g. en, es). Empty/omitted = all language
      #
      # @param message_apps [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::MessageApp>] Required when conversion_location is messaging: which apps to message on. Combin
      #
      # @param minimum_daily_spend [Float] Daily spend floor within the budget.
      #
      # @param optimization_goal [String] What the ad group optimizes for (e.g. conversions, link_clicks, reach).
      #
      # @param placements [Object] 'automatic' (Advantage+) or a list of { platform, positions }. Omit positions to
      #
      # @param regions [Object] Geo targeting: { include / exclude: { countries (ISO 3166-1), country_groups (in
      #
      # @param starts_at [String] Schedule start, ISO 8601.
      #
      # @param status [Symbol, WhopSDK::Models::AdGroupUpdateParams::Status] Initial status (default: active).
      #
      # @param title [String] The display name of the ad group.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AdGroupUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["ad_groups/%1$s", id],
          body: parsed,
          model: WhopSDK::AdGroup,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdGroupListParams} for more details.
      #
      # Lists ad groups for the account, newest first.
      #
      # @overload list(account_id: nil, ad_campaign_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, time_zone: nil, request_options: {})
      #
      # @param account_id [String] Account whose ad groups to list. Defaults to the authenticated account.
      #
      # @param ad_campaign_id [String] Filter to ad groups in this campaign.
      #
      # @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param created_after [String] Only return ad groups created after this timestamp.
      #
      # @param created_before [String] Only return ad groups created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::AdGroupListParams::Direction] The sort direction. Defaults to desc.
      #
      # @param first [Integer] The number of ad groups to return.
      #
      # @param last [Integer] The number of ad groups to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::AdGroupListParams::Order] The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      #
      # @param query [String] Filter ad groups by a title or ID substring.
      #
      # @param stats_from [String] Start of the stats window. Defaults to all-time.
      #
      # @param stats_to [String] End of the stats window. Defaults to now.
      #
      # @param status [String] Filter to a status (active, paused, in_review, rejected).
      #
      # @param time_zone [String] IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare s
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AdGroup>]
      #
      # @see WhopSDK::Models::AdGroupListParams
      def list(params = {})
        parsed, options = WhopSDK::AdGroupListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ad_groups",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::AdGroup,
          options: options
        )
      end

      # Deletes an ad group. Returns true on success.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ad group ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::AdGroupDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["ad_groups/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Pauses delivery of an ad group.
      #
      # @overload pause(id, request_options: {})
      #
      # @param id [String] The ad group ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupPauseParams
      def pause(id, params = {})
        @client.request(
          method: :post,
          path: ["ad_groups/%1$s/pause", id],
          model: WhopSDK::AdGroup,
          options: params[:request_options]
        )
      end

      # Resumes delivery of a paused ad group.
      #
      # @overload unpause(id, request_options: {})
      #
      # @param id [String] The ad group ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdGroup]
      #
      # @see WhopSDK::Models::AdGroupUnpauseParams
      def unpause(id, params = {})
        @client.request(
          method: :post,
          path: ["ad_groups/%1$s/unpause", id],
          model: WhopSDK::AdGroup,
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
