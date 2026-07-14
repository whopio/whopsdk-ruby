# frozen_string_literal: true

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
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdCreateParams} for more details.
      #
      # Creates an ad in an ad group.
      #
      # @overload create(ad_group: nil, ad_group_id: nil, call_to_action: nil, creatives: nil, descriptions: nil, headlines: nil, lead_form: nil, lead_form_id: nil, messaging_config: nil, multi_advertiser_ads: nil, post_id: nil, post_source: nil, primary_texts: nil, social_accounts: nil, title: nil, url: nil, url_parameters: nil, request_options: {})
      #
      # @param ad_group [Object] An inline ad group to create (same shape as POST /ad_groups, including ad_campai
      #
      # @param ad_group_id [String] The existing ad group to create the ad in. Provide this OR ad_group, not both.
      #
      # @param call_to_action [Symbol, WhopSDK::Models::AdCreateParams::CallToAction] The call-to-action button shown on the ad.
      #
      # @param creatives [Array<WhopSDK::Models::AdCreateParams::Creative>] The ad's creative assets. Each entry is an uploaded file id with an optional for
      #
      # @param descriptions [Array<String>] The description variants shown on the ad.
      #
      # @param headlines [Array<String>] The headline variants shown on the ad.
      #
      # @param lead_form [WhopSDK::Models::AdCreateParams::LeadForm] Instant lead form for the ad. Only allowed when the ad group's conversion_locati
      #
      # @param lead_form_id [String] Use an existing Meta instant form instead of creating one — the form's Meta id,
      #
      # @param messaging_config [WhopSDK::Models::AdCreateParams::MessagingConfig] Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt
      #
      # @param multi_advertiser_ads [Boolean] Whether the ad can appear alongside other advertisers' ads in the same unit. Def
      #
      # @param post_id [String] Promote an existing post instead of uploading creatives — a Facebook post or Ins
      #
      # @param post_source [Symbol, WhopSDK::Models::AdCreateParams::PostSource] Which network post_id refers to — facebook (a page post) or instagram (a media i
      #
      # @param primary_texts [Array<String>] The primary text variants shown in the ad body.
      #
      # @param social_accounts [Array<WhopSDK::Models::AdCreateParams::SocialAccount>] The social accounts (Facebook page, Instagram profile) the ad runs under.
      #
      # @param title [String] The display name of the ad.
      #
      # @param url [String] The URL the ad links to.
      #
      # @param url_parameters [Object] Query parameters appended to the destination URL, as a string-to-string map.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdCreateParams
      def create(params = {})
        parsed, options = WhopSDK::AdCreateParams.dump_request(params)
        @client.request(method: :post, path: "ads", body: parsed, model: WhopSDK::Ad, options: options)
      end

      # Retrieves a single ad with stats over the requested window.
      #
      # @overload retrieve(id, stats_from: nil, stats_to: nil, time_zone: nil, request_options: {})
      #
      # @param id [String] The ad ID.
      #
      # @param stats_from [String] Start of the stats window.
      #
      # @param stats_to [String] End of the stats window.
      #
      # @param time_zone [String] IANA timezone the stats window is interpreted in. Defaults to UTC.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::AdRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["ads/%1$s", id],
          query: query,
          model: WhopSDK::Ad,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdUpdateParams} for more details.
      #
      # Updates an ad's editable fields.
      #
      # @overload update(id, call_to_action: nil, creatives: nil, descriptions: nil, headlines: nil, lead_form: nil, lead_form_id: nil, messaging_config: nil, multi_advertiser_ads: nil, post_id: nil, post_source: nil, primary_texts: nil, social_accounts: nil, title: nil, url: nil, url_parameters: nil, request_options: {})
      #
      # @param id [String] The ad ID.
      #
      # @param call_to_action [Symbol, WhopSDK::Models::AdUpdateParams::CallToAction] The call-to-action button shown on the ad.
      #
      # @param creatives [Array<WhopSDK::Models::AdUpdateParams::Creative>] The ad's creative assets. Each entry is an uploaded file id with an optional for
      #
      # @param descriptions [Array<String>] The description variants shown on the ad.
      #
      # @param headlines [Array<String>] The headline variants shown on the ad.
      #
      # @param lead_form [WhopSDK::Models::AdUpdateParams::LeadForm] Instant lead form for the ad. Only allowed when the ad group's conversion_locati
      #
      # @param lead_form_id [String] Use an existing Meta instant form instead of creating one — the form's Meta id,
      #
      # @param messaging_config [WhopSDK::Models::AdUpdateParams::MessagingConfig] Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt
      #
      # @param multi_advertiser_ads [Boolean] Whether the ad can appear alongside other advertisers' ads in the same unit. Def
      #
      # @param post_id [String] Promote an existing post instead of uploading creatives — a Facebook post or Ins
      #
      # @param post_source [Symbol, WhopSDK::Models::AdUpdateParams::PostSource] Which network post_id refers to — facebook (a page post) or instagram (a media i
      #
      # @param primary_texts [Array<String>] The primary text variants shown in the ad body.
      #
      # @param social_accounts [Array<WhopSDK::Models::AdUpdateParams::SocialAccount>] The social accounts the ad runs under.
      #
      # @param title [String] The display name of the ad.
      #
      # @param url [String] The URL the ad links to.
      #
      # @param url_parameters [Object] Query parameters appended to the destination URL, as a string-to-string map.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AdUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["ads/%1$s", id],
          body: parsed,
          model: WhopSDK::Ad,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdListParams} for more details.
      #
      # Lists the ads for an account, with stats over the requested window.
      #
      # @overload list(account_id: nil, ad_campaign_id: nil, ad_group_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, stats_from: nil, stats_to: nil, status: nil, time_zone: nil, request_options: {})
      #
      # @param account_id [String] The account the ads belong to. Defaults to the account-scoped key's own account.
      #
      # @param ad_campaign_id [String] Only return ads in this ad campaign.
      #
      # @param ad_group_id [String] Only return ads in this ad group.
      #
      # @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param created_after [String] Only return ads created after this timestamp.
      #
      # @param created_before [String] Only return ads created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::AdListParams::Direction] The sort direction. Defaults to desc.
      #
      # @param first [Integer] The number of ads to return.
      #
      # @param last [Integer] The number of ads to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::AdListParams::Order] The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
      #
      # @param query [String] Filter ads by a title or ID substring.
      #
      # @param stats_from [String] Start of the stats window. Defaults to all-time.
      #
      # @param stats_to [String] End of the stats window. Defaults to now.
      #
      # @param status [Symbol, WhopSDK::Models::AdListParams::Status] Only return ads with this status.
      #
      # @param time_zone [String] IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare s
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Ad>]
      #
      # @see WhopSDK::Models::AdListParams
      def list(params = {})
        parsed, options = WhopSDK::AdListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ads",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Ad,
          options: options
        )
      end

      # Deletes an ad. Returns true on success.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ad ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::AdDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["ads/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Pauses an active ad.
      #
      # @overload pause(id, request_options: {})
      #
      # @param id [String] The ad ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdPauseParams
      def pause(id, params = {})
        @client.request(
          method: :post,
          path: ["ads/%1$s/pause", id],
          model: WhopSDK::Ad,
          options: params[:request_options]
        )
      end

      # Resumes a paused ad.
      #
      # @overload unpause(id, request_options: {})
      #
      # @param id [String] The ad ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Ad]
      #
      # @see WhopSDK::Models::AdUnpauseParams
      def unpause(id, params = {})
        @client.request(
          method: :post,
          path: ["ads/%1$s/unpause", id],
          model: WhopSDK::Ad,
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
