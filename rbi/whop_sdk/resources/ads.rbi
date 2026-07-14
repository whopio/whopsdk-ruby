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
      # Creates an ad in an ad group.
      sig do
        params(
          ad_group: T.anything,
          ad_group_id: String,
          call_to_action: WhopSDK::AdCreateParams::CallToAction::OrSymbol,
          creatives: T::Array[WhopSDK::AdCreateParams::Creative::OrHash],
          descriptions: T::Array[String],
          headlines: T::Array[String],
          lead_form: WhopSDK::AdCreateParams::LeadForm::OrHash,
          lead_form_id: String,
          messaging_config: WhopSDK::AdCreateParams::MessagingConfig::OrHash,
          multi_advertiser_ads: T::Boolean,
          post_id: String,
          post_source: WhopSDK::AdCreateParams::PostSource::OrSymbol,
          primary_texts: T::Array[String],
          social_accounts:
            T::Array[WhopSDK::AdCreateParams::SocialAccount::OrHash],
          title: String,
          url: String,
          url_parameters: T.anything,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def create(
        # An inline ad group to create (same shape as POST /ad_groups, including
        # ad_campaign_id). Creates the ad group and the ad together. Provide this OR
        # ad_group_id.
        ad_group: nil,
        # The existing ad group to create the ad in. Provide this OR ad_group, not both.
        ad_group_id: nil,
        # The call-to-action button shown on the ad.
        call_to_action: nil,
        # The ad's creative assets. Each entry is an uploaded file id with an optional
        # format; omit format for the original asset.
        creatives: nil,
        # The description variants shown on the ad.
        descriptions: nil,
        # The headline variants shown on the ad.
        headlines: nil,
        # Instant lead form for the ad. Only allowed when the ad group's
        # conversion_location is an instant-form destination (instant_forms,
        # instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with
        # lead_form_id.
        lead_form: nil,
        # Use an existing Meta instant form instead of creating one — the form's Meta id,
        # from a form already on the ad's Facebook page. Only allowed when the ad group's
        # conversion_location is an instant-form destination. Mutually exclusive with
        # lead_form.
        lead_form_id: nil,
        # Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt
        # (keyword).
        messaging_config: nil,
        # Whether the ad can appear alongside other advertisers' ads in the same unit.
        # Defaults to true.
        multi_advertiser_ads: nil,
        # Promote an existing post instead of uploading creatives — a Facebook post or
        # Instagram media id. Mutually exclusive with creatives. Pair with post_source.
        post_id: nil,
        # Which network post_id refers to — facebook (a page post) or instagram (a media
        # id). Authoritative; when omitted the source is inferred from the id shape.
        post_source: nil,
        # The primary text variants shown in the ad body.
        primary_texts: nil,
        # The social accounts (Facebook page, Instagram profile) the ad runs under.
        social_accounts: nil,
        # The display name of the ad.
        title: nil,
        # The URL the ad links to.
        url: nil,
        # Query parameters appended to the destination URL, as a string-to-string map.
        url_parameters: nil,
        request_options: {}
      )
      end

      # Retrieves a single ad with stats over the requested window.
      sig do
        params(
          id: String,
          stats_from: String,
          stats_to: String,
          time_zone: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def retrieve(
        # The ad ID.
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

      # Updates an ad's editable fields.
      sig do
        params(
          id: String,
          call_to_action: WhopSDK::AdUpdateParams::CallToAction::OrSymbol,
          creatives: T::Array[WhopSDK::AdUpdateParams::Creative::OrHash],
          descriptions: T::Array[String],
          headlines: T::Array[String],
          lead_form: WhopSDK::AdUpdateParams::LeadForm::OrHash,
          lead_form_id: String,
          messaging_config: WhopSDK::AdUpdateParams::MessagingConfig::OrHash,
          multi_advertiser_ads: T::Boolean,
          post_id: String,
          post_source: WhopSDK::AdUpdateParams::PostSource::OrSymbol,
          primary_texts: T::Array[String],
          social_accounts:
            T::Array[WhopSDK::AdUpdateParams::SocialAccount::OrHash],
          title: String,
          url: String,
          url_parameters: T.anything,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def update(
        # The ad ID.
        id,
        # The call-to-action button shown on the ad.
        call_to_action: nil,
        # The ad's creative assets. Each entry is an uploaded file id with an optional
        # format; omit format for the original asset. Replaces a live ad's creative on the
        # platform.
        creatives: nil,
        # The description variants shown on the ad.
        descriptions: nil,
        # The headline variants shown on the ad.
        headlines: nil,
        # Instant lead form for the ad. Only allowed when the ad group's
        # conversion_location is an instant-form destination (instant_forms,
        # instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with
        # lead_form_id.
        lead_form: nil,
        # Use an existing Meta instant form instead of creating one — the form's Meta id,
        # from a form already on the ad's Facebook page. Only allowed when the ad group's
        # conversion_location is an instant-form destination. Mutually exclusive with
        # lead_form. Replaces a stored lead_form.
        lead_form_id: nil,
        # Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt
        # (keyword).
        messaging_config: nil,
        # Whether the ad can appear alongside other advertisers' ads in the same unit.
        # Defaults to true.
        multi_advertiser_ads: nil,
        # Promote an existing post instead of uploading creatives — a Facebook post or
        # Instagram media id. Mutually exclusive with creatives. Pair with post_source.
        post_id: nil,
        # Which network post_id refers to — facebook (a page post) or instagram (a media
        # id). Authoritative; when omitted the source is inferred from the id shape.
        post_source: nil,
        # The primary text variants shown in the ad body.
        primary_texts: nil,
        # The social accounts the ad runs under.
        social_accounts: nil,
        # The display name of the ad.
        title: nil,
        # The URL the ad links to.
        url: nil,
        # Query parameters appended to the destination URL, as a string-to-string map.
        url_parameters: nil,
        request_options: {}
      )
      end

      # Lists the ads for an account, with stats over the requested window.
      sig do
        params(
          account_id: String,
          ad_campaign_id: String,
          ad_group_id: String,
          after: String,
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
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::Ad])
      end
      def list(
        # The account the ads belong to. Defaults to the account-scoped key's own account.
        account_id: nil,
        # Only return ads in this ad campaign.
        ad_campaign_id: nil,
        # Only return ads in this ad group.
        ad_group_id: nil,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Only return ads created after this timestamp.
        created_after: nil,
        # Only return ads created before this timestamp.
        created_before: nil,
        # The sort direction. Defaults to desc.
        direction: nil,
        # The number of ads to return.
        first: nil,
        # The number of ads to return from the end of the range.
        last: nil,
        # The field to sort by. Defaults to created_at. Stat columns (spend, impressions,
        # …) rank over the stats_from/stats_to window across the whole list, not just the
        # current page. results, cost_per_result and return_on_ad_spend rank by the same
        # Whop pixel-attributed values the response reports.
        order: nil,
        # Filter ads by a title or ID substring.
        query: nil,
        # Start of the stats window. Defaults to all-time.
        stats_from: nil,
        # End of the stats window. Defaults to now.
        stats_to: nil,
        # Only return ads with this status.
        status: nil,
        # IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare
        # stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to
        # UTC.
        time_zone: nil,
        request_options: {}
      )
      end

      # Deletes an ad. Returns true on success.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The ad ID.
        id,
        request_options: {}
      )
      end

      # Pauses an active ad.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def pause(
        # The ad ID.
        id,
        request_options: {}
      )
      end

      # Resumes a paused ad.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def unpause(
        # The ad ID.
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
