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
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Ad)
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
          status: T.nilable(WhopSDK::ExternalAdStatus::OrSymbol),
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
