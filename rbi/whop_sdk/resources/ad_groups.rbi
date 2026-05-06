# typed: strong

module WhopSDK
  module Resources
    # Ad groups
    class AdGroups
      # Creates a new ad group within a campaign.
      #
      # Required permissions:
      #
      # - `ad_campaign:create`
      # - `ad_campaign:basic:read`
      sig do
        params(
          campaign_id: String,
          budget: T.nilable(Float),
          budget_type:
            T.nilable(WhopSDK::AdGroupCreateParams::BudgetType::OrSymbol),
          config: T.nilable(WhopSDK::AdGroupCreateParams::Config::OrHash),
          daily_budget: T.nilable(Float),
          name: T.nilable(String),
          platform_config:
            T.nilable(WhopSDK::AdGroupCreateParams::PlatformConfig::OrHash),
          status: T.nilable(WhopSDK::AdGroupCreateParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdGroupCreateResponse)
      end
      def create(
        # The ad campaign to create this ad group within.
        campaign_id:,
        # Budget amount in dollars.
        budget: nil,
        # The budget type for an ad campaign or ad group.
        budget_type: nil,
        # Unified ad group configuration (bidding, optimization, targeting).
        config: nil,
        # Daily budget in dollars.
        daily_budget: nil,
        # Human-readable ad group name.
        name: nil,
        # Platform-specific ad group configuration.
        platform_config: nil,
        # The status of an external ad group.
        status: nil,
        request_options: {}
      )
      end

      # Retrieves a single ad group by its unique identifier.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdGroupRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the ad group.
        id,
        request_options: {}
      )
      end

      # Updates an existing ad group.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `ad_campaign:basic:read`
      sig do
        params(
          id: String,
          budget: T.nilable(Float),
          budget_type:
            T.nilable(WhopSDK::AdGroupUpdateParams::BudgetType::OrSymbol),
          config: T.nilable(WhopSDK::AdGroupUpdateParams::Config::OrHash),
          daily_budget: T.nilable(Float),
          name: T.nilable(String),
          platform_config:
            T.nilable(WhopSDK::AdGroupUpdateParams::PlatformConfig::OrHash),
          status: T.nilable(WhopSDK::AdGroupUpdateParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdGroupUpdateResponse)
      end
      def update(
        # The unique identifier of the ad group to update.
        id,
        # Budget amount in dollars.
        budget: nil,
        # The budget type for an ad campaign or ad group.
        budget_type: nil,
        # Unified ad group configuration (bidding, optimization, targeting).
        config: nil,
        # Daily budget in dollars.
        daily_budget: nil,
        # Human-readable ad group name.
        name: nil,
        # Platform-specific ad group configuration.
        platform_config: nil,
        # The status of an external ad group.
        status: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of ad groups scoped by campaign or company, with
      # optional filtering by status and creation date.
      #
      # Required permissions:
      #
      # - `ad_campaign:basic:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          campaign_id: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          query: T.nilable(String),
          status: T.nilable(WhopSDK::AdGroupListParams::Status::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AdGroupListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter by campaign. Provide exactly one of campaign_id or company_id.
        campaign_id: nil,
        # Filter by company. Provide exactly one of campaign_id or company_id.
        company_id: nil,
        # Only return ad groups created after this timestamp.
        created_after: nil,
        # Only return ad groups created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Case-insensitive substring match against the ad group name.
        query: nil,
        # The status of an external ad group.
        status: nil,
        request_options: {}
      )
      end

      # Soft-deletes an ad group.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the ad group to delete.
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
