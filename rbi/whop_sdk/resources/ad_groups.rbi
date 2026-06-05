# typed: strong

module WhopSDK
  module Resources
    # Ad groups
    class AdGroups
      # Retrieves a single ad group by its unique identifier.
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
        ).returns(WhopSDK::AdGroup)
      end
      def retrieve(
        # The unique identifier of the ad group.
        id,
        # Inclusive start of the window for the ad group's metric fields (spend,
        # impressions, …). Omit both statsFrom and statsTo for all-time stats.
        stats_from: nil,
        # Inclusive end of the window for the ad group's metric fields. Omit both
        # statsFrom and statsTo for all-time stats.
        stats_to: nil,
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
          budget_type: T.nilable(WhopSDK::AdBudgetType::OrSymbol),
          config: T.nilable(WhopSDK::AdGroupUpdateParams::Config::OrHash),
          daily_budget: T.nilable(Float),
          name: T.nilable(String),
          platform_config:
            T.nilable(WhopSDK::AdGroupUpdateParams::PlatformConfig::OrHash),
          status: T.nilable(WhopSDK::AdGroupStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
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
          ad_campaign_id: T.nilable(String),
          ad_campaign_ids: T.nilable(T::Array[String]),
          after: T.nilable(String),
          before: T.nilable(String),
          campaign_id: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          query: T.nilable(String),
          stats_from: T.nilable(Time),
          stats_to: T.nilable(Time),
          status: T.nilable(WhopSDK::AdGroupStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AdGroupListResponse]
        )
      end
      def list(
        # Filter by ad campaign. Provide exactly one of ad_campaign_id or company_id.
        ad_campaign_id: nil,
        # Only return ad groups belonging to these ad campaigns (max 100). Combine with
        # company_id.
        ad_campaign_ids: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter by campaign.
        campaign_id: nil,
        # Filter by company. Provide exactly one of ad_campaign_id or company_id.
        company_id: nil,
        # Only return ad groups created after this timestamp.
        created_after: nil,
        # Only return ad groups created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Case-insensitive substring match against the ad group name or ID.
        query: nil,
        # Inclusive start of the window for each ad group's metric fields (spend,
        # impressions, …). Omit both statsFrom and statsTo for all-time stats.
        stats_from: nil,
        # Inclusive end of the window for each ad group's metric fields. Omit both
        # statsFrom and statsTo for all-time stats.
        stats_to: nil,
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

      # Pauses an ad group.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `ad_campaign:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def pause(
        # The unique identifier of the ad group to pause.
        id,
        request_options: {}
      )
      end

      # Resumes a paused ad group.
      #
      # Required permissions:
      #
      # - `ad_campaign:update`
      # - `ad_campaign:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::AdGroup)
      end
      def unpause(
        # The unique identifier of the ad group to unpause.
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
