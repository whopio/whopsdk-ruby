# typed: strong

module WhopSDK
  module Resources
    # Ad campaigns
    class AdCampaigns
      # Retrieves a single ad campaign by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def retrieve(
        # The unique identifier of the ad campaign.
        id,
        request_options: {}
      )
      end

      # Updates an ad campaign synchronously.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      sig do
        params(
          id: String,
          budget: T.nilable(Float),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def update(
        # The unique identifier of the ad campaign to update.
        id,
        # The campaign budget in dollars. The interpretation (daily or lifetime) follows
        # the campaign's existing budget type.
        budget: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of ad campaigns for a company, with optional filtering
      # by status, and creation date.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          include_paused: T.nilable(T::Boolean),
          last: T.nilable(Integer),
          query: T.nilable(String),
          status: T.nilable(WhopSDK::AdCampaignStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AdCampaignListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to list ad campaigns for.
        company_id: nil,
        # Only return ad campaigns created after this timestamp.
        created_after: nil,
        # Only return ad campaigns created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # When false, excludes paused campaigns so pagination matches the dashboard's
        # hide-paused toggle.
        include_paused: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Case-insensitive substring match against the campaign title.
        query: nil,
        # The status of an ad campaign.
        status: nil,
        request_options: {}
      )
      end

      # Pauses an ad campaign, optionally until a specific date.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def pause(
        # The unique identifier of the ad campaign to pause.
        id,
        request_options: {}
      )
      end

      # Resumes a paused ad campaign.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdCampaign)
      end
      def unpause(
        # The unique identifier of the ad campaign to unpause.
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
