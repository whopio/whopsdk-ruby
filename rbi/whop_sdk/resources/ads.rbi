# typed: strong

module WhopSDK
  module Resources
    # Ads
    class Ads
      # Retrieve an ad by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      sig do
        params(
          id: String,
          stats_from: T.nilable(Time),
          stats_to: T.nilable(Time),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def retrieve(
        # The unique identifier of the ad.
        id,
        # Inclusive start of the window for the ad's metric fields (spend, impressions,
        # …). Omit both statsFrom and statsTo for all-time stats.
        stats_from: nil,
        # Inclusive end of the window for the ad's metric fields. Omit both statsFrom and
        # statsTo for all-time stats.
        stats_to: nil,
        request_options: {}
      )
      end

      # List ads scoped by ad group, campaign, or company.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      sig do
        params(
          ad_campaign_id: T.nilable(String),
          ad_campaign_ids: T.nilable(T::Array[String]),
          ad_group_id: T.nilable(String),
          ad_group_ids: T.nilable(T::Array[String]),
          after: T.nilable(String),
          before: T.nilable(String),
          campaign_id: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::AdListParams::Order::OrSymbol),
          order_by: T.nilable(WhopSDK::AdListParams::OrderBy::OrSymbol),
          order_direction: T.nilable(WhopSDK::Direction::OrSymbol),
          query: T.nilable(String),
          stats_from: T.nilable(Time),
          stats_to: T.nilable(Time),
          status: T.nilable(WhopSDK::ExternalAdStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AdListResponse]
        )
      end
      def list(
        # Filter by ad campaign. Provide exactly one of ad_group_id, ad_campaign_id, or
        # company_id.
        ad_campaign_id: nil,
        # Only return ads belonging to these ad campaigns (max 100). Combine with
        # company_id.
        ad_campaign_ids: nil,
        # Filter by ad group. Provide exactly one of ad_group_id, ad_campaign_id, or
        # company_id.
        ad_group_id: nil,
        # Only return ads belonging to these ad groups (max 100). Combine with company_id.
        ad_group_ids: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter by campaign.
        campaign_id: nil,
        # Filter by company. Provide exactly one of ad_group_id, ad_campaign_id, or
        # company_id.
        company_id: nil,
        # Only return ads created after this timestamp.
        created_after: nil,
        # Only return ads created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The fields ad resources can be ordered by.
        order: nil,
        # Columns that the listAds query can sort by. Deprecated — use AdOrder.
        order_by: nil,
        # The direction of the sort.
        order_direction: nil,
        # Case-insensitive substring match against the ad title or ID.
        query: nil,
        # Inclusive start of the window for each ad's metric fields (spend, impressions,
        # …) and for stats-column sorting. Omit both statsFrom and statsTo for all-time
        # stats.
        stats_from: nil,
        # Inclusive end of the window for each ad's metric fields and for stats-column
        # sorting. Omit both statsFrom and statsTo for all-time stats.
        stats_to: nil,
        # The status of an external ad.
        status: nil,
        request_options: {}
      )
      end

      # Pauses an ad.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `ad_campaign:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def pause(
        # The unique identifier of the ad to pause.
        id,
        request_options: {}
      )
      end

      # Resumes a paused ad.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `ad_campaign:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
      end
      def unpause(
        # The unique identifier of the ad to unpause.
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
