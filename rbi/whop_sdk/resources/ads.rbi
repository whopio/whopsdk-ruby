# typed: strong

module WhopSDK
  module Resources
    # Ads
    class Ads
      # Create an ad within an ad group.
      #
      # Required permissions:
      #
      # - `ad_campaign:create`
      # - `ad_campaign:basic:read`
      sig do
        params(
          ad_group_id: String,
          creative_set_id: T.nilable(String),
          existing_instagram_media_id: T.nilable(String),
          existing_post_id: T.nilable(String),
          platform_config:
            T.nilable(WhopSDK::AdCreateParams::PlatformConfig::OrHash),
          status: T.nilable(WhopSDK::AdCreateParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdCreateResponse)
      end
      def create(
        # The unique identifier of the ad group to create this ad in.
        ad_group_id:,
        # The unique identifier of the creative set to use.
        creative_set_id: nil,
        # ID of an existing Instagram media item to use as the ad creative (instead of a
        # creative set or Facebook post).
        existing_instagram_media_id: nil,
        # ID of an existing Facebook post to use as the ad creative (instead of a creative
        # set).
        existing_post_id: nil,
        # Platform-specific configuration. Must match the campaign platform.
        platform_config: nil,
        # The status of an external ad.
        status: nil,
        request_options: {}
      )
      end

      # Retrieve an ad by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the ad.
        id,
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
          ad_group_id: T.nilable(String),
          after: T.nilable(String),
          before: T.nilable(String),
          campaign_id: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          status: T.nilable(WhopSDK::AdListParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AdListResponse]
        )
      end
      def list(
        # Filter by ad group. Provide exactly one of ad_group_id, campaign_id, or
        # company_id.
        ad_group_id: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter by campaign. Provide exactly one of ad_group_id, campaign_id, or
        # company_id.
        campaign_id: nil,
        # Filter by company. Provide exactly one of ad_group_id, campaign_id, or
        # company_id.
        company_id: nil,
        # Only return ads created after this timestamp.
        created_after: nil,
        # Only return ads created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The status of an external ad.
        status: nil,
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
