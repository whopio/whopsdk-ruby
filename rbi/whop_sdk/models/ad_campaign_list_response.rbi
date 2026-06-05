# typed: strong

module WhopSDK
  module Models
    class AdCampaignListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AdCampaignListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for this ad campaign.
      sig { returns(String) }
      attr_accessor :id

      # Total budget in dollars.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      # The budget type for an ad campaign or ad group.
      sig { returns(T.nilable(WhopSDK::AdBudgetType::TaggedSymbol)) }
      attr_accessor :budget_type

      # Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
      sig { returns(Float) }
      attr_accessor :click_through_rate

      # Total clicks on the campaign's ads in the stats window.
      sig { returns(Integer) }
      attr_accessor :clicks

      # Cost per click in dollars (spend / clicks). 0 when there are no clicks.
      sig { returns(Float) }
      attr_accessor :cost_per_click

      # Cost in dollars per Whop pixel-attributed lead (spend / leads). 0 when leads are
      # tracked but none happened yet; null when leads are not a goal and none were
      # attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_lead

      # Cost per 1,000 impressions in dollars (spend / impressions × 1000). 0 when there
      # are no impressions.
      sig { returns(Float) }
      attr_accessor :cost_per_mille

      # Cost in dollars per Whop pixel-attributed purchase (spend / purchases). 0 when
      # purchases are tracked but none happened yet; null when purchases are not a goal
      # and none were attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_purchase

      # Cost in dollars per optimization result (spend / results). 0 when a result is
      # being optimized for but none happened yet; null when nothing is being optimized
      # for.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_result

      # When the ad campaign was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Average number of times each person saw an ad (impressions / reach), as reported
      # by the platform.
      sig { returns(T.nilable(Float)) }
      attr_accessor :frequency

      # Total impressions (views) on the campaign's ads in the stats window.
      sig { returns(Integer) }
      attr_accessor :impressions

      # Open platform issues affecting this campaign and its descendant ad groups and
      # ads, deduplicated per object. Empty when there are none.
      sig { returns(T::Array[WhopSDK::Models::AdCampaignListResponse::Issue]) }
      attr_accessor :issues

      # Number of Whop pixel-attributed leads (last-click) in the stats window.
      sig { returns(Integer) }
      attr_accessor :leads

      # The external ad platform this campaign is running on (e.g., meta, tiktok).
      sig { returns(WhopSDK::AdCampaignPlatform::TaggedSymbol) }
      attr_accessor :platform

      # Total USD value of Whop pixel-attributed purchases in the stats window.
      sig { returns(Float) }
      attr_accessor :purchase_value

      # Number of Whop pixel-attributed purchases (last-click) in the stats window.
      sig { returns(Integer) }
      attr_accessor :purchases

      # Unique users reached in the stats window (deduplicated by the platform).
      sig { returns(Integer) }
      attr_accessor :reach

      # Return on ad spend as a ratio (purchaseValue / spend) — 2.5 means $2.50 of
      # attributed purchase value per $1 spent. 0 when there is no spend.
      sig { returns(Float) }
      attr_accessor :return_on_ad_spend

      # Amount charged in dollars in the stats window.
      sig { returns(Float) }
      attr_accessor :spend

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
      attr_accessor :spend_currency

      # Current status of the campaign.
      sig { returns(WhopSDK::AdCampaignStatus::TaggedSymbol) }
      attr_accessor :status

      # The campaign name shown in the Whop dashboard.
      sig { returns(String) }
      attr_accessor :title

      # Unique click-through rate as a fraction of impressions (unique clicks /
      # impressions, 0–1).
      sig { returns(T.nilable(Float)) }
      attr_accessor :unique_click_through_rate

      # Unique clicks (deduplicated by the platform) in the stats window.
      sig { returns(Integer) }
      attr_accessor :unique_clicks

      # When the ad campaign was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An advertising campaign running on an external platform or within Whop.
      sig do
        params(
          id: String,
          budget: T.nilable(Float),
          budget_type: T.nilable(WhopSDK::AdBudgetType::OrSymbol),
          click_through_rate: Float,
          clicks: Integer,
          cost_per_click: Float,
          cost_per_lead: T.nilable(Float),
          cost_per_mille: Float,
          cost_per_purchase: T.nilable(Float),
          cost_per_result: T.nilable(Float),
          created_at: Time,
          frequency: T.nilable(Float),
          impressions: Integer,
          issues:
            T::Array[WhopSDK::Models::AdCampaignListResponse::Issue::OrHash],
          leads: Integer,
          platform: WhopSDK::AdCampaignPlatform::OrSymbol,
          purchase_value: Float,
          purchases: Integer,
          reach: Integer,
          return_on_ad_spend: Float,
          spend: Float,
          spend_currency: T.nilable(WhopSDK::Currency::OrSymbol),
          status: WhopSDK::AdCampaignStatus::OrSymbol,
          title: String,
          unique_click_through_rate: T.nilable(Float),
          unique_clicks: Integer,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for this ad campaign.
        id:,
        # Total budget in dollars.
        budget:,
        # The budget type for an ad campaign or ad group.
        budget_type:,
        # Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
        click_through_rate:,
        # Total clicks on the campaign's ads in the stats window.
        clicks:,
        # Cost per click in dollars (spend / clicks). 0 when there are no clicks.
        cost_per_click:,
        # Cost in dollars per Whop pixel-attributed lead (spend / leads). 0 when leads are
        # tracked but none happened yet; null when leads are not a goal and none were
        # attributed.
        cost_per_lead:,
        # Cost per 1,000 impressions in dollars (spend / impressions × 1000). 0 when there
        # are no impressions.
        cost_per_mille:,
        # Cost in dollars per Whop pixel-attributed purchase (spend / purchases). 0 when
        # purchases are tracked but none happened yet; null when purchases are not a goal
        # and none were attributed.
        cost_per_purchase:,
        # Cost in dollars per optimization result (spend / results). 0 when a result is
        # being optimized for but none happened yet; null when nothing is being optimized
        # for.
        cost_per_result:,
        # When the ad campaign was created.
        created_at:,
        # Average number of times each person saw an ad (impressions / reach), as reported
        # by the platform.
        frequency:,
        # Total impressions (views) on the campaign's ads in the stats window.
        impressions:,
        # Open platform issues affecting this campaign and its descendant ad groups and
        # ads, deduplicated per object. Empty when there are none.
        issues:,
        # Number of Whop pixel-attributed leads (last-click) in the stats window.
        leads:,
        # The external ad platform this campaign is running on (e.g., meta, tiktok).
        platform:,
        # Total USD value of Whop pixel-attributed purchases in the stats window.
        purchase_value:,
        # Number of Whop pixel-attributed purchases (last-click) in the stats window.
        purchases:,
        # Unique users reached in the stats window (deduplicated by the platform).
        reach:,
        # Return on ad spend as a ratio (purchaseValue / spend) — 2.5 means $2.50 of
        # attributed purchase value per $1 spent. 0 when there is no spend.
        return_on_ad_spend:,
        # Amount charged in dollars in the stats window.
        spend:,
        # The available currencies on the platform
        spend_currency:,
        # Current status of the campaign.
        status:,
        # The campaign name shown in the Whop dashboard.
        title:,
        # Unique click-through rate as a fraction of impressions (unique clicks /
        # impressions, 0–1).
        unique_click_through_rate:,
        # Unique clicks (deduplicated by the platform) in the stats window.
        unique_clicks:,
        # When the ad campaign was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            budget: T.nilable(Float),
            budget_type: T.nilable(WhopSDK::AdBudgetType::TaggedSymbol),
            click_through_rate: Float,
            clicks: Integer,
            cost_per_click: Float,
            cost_per_lead: T.nilable(Float),
            cost_per_mille: Float,
            cost_per_purchase: T.nilable(Float),
            cost_per_result: T.nilable(Float),
            created_at: Time,
            frequency: T.nilable(Float),
            impressions: Integer,
            issues: T::Array[WhopSDK::Models::AdCampaignListResponse::Issue],
            leads: Integer,
            platform: WhopSDK::AdCampaignPlatform::TaggedSymbol,
            purchase_value: Float,
            purchases: Integer,
            reach: Integer,
            return_on_ad_spend: Float,
            spend: Float,
            spend_currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
            status: WhopSDK::AdCampaignStatus::TaggedSymbol,
            title: String,
            unique_click_through_rate: T.nilable(Float),
            unique_clicks: Integer,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Issue < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCampaignListResponse::Issue,
              WhopSDK::Internal::AnyHash
            )
          end

        # When the issue was first reported.
        sig { returns(Time) }
        attr_accessor :created_at

        # Platform-specific error code.
        sig { returns(T.nilable(String)) }
        attr_accessor :error_code

        # Full error detail from the platform.
        sig { returns(T.nilable(String)) }
        attr_accessor :error_message

        # Short description of the issue.
        sig { returns(String) }
        attr_accessor :error_summary

        # Current resolution status.
        sig do
          returns(
            WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus::TaggedSymbol
          )
        end
        attr_accessor :resolution_status

        # The Whop ID of the ad object this issue is on (the ad, ad group, or campaign).
        # Null when the issue isn't tied to a local object.
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        # The kind of ad object this issue is on: `ad`, `ad_group`, or `campaign`. Pairs
        # with `resourceId`.
        sig { returns(String) }
        attr_accessor :resource_type

        # A platform-reported issue on an ad object (rejection, policy flag, etc.).
        sig do
          params(
            created_at: Time,
            error_code: T.nilable(String),
            error_message: T.nilable(String),
            error_summary: String,
            resolution_status:
              WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus::OrSymbol,
            resource_id: T.nilable(String),
            resource_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # When the issue was first reported.
          created_at:,
          # Platform-specific error code.
          error_code:,
          # Full error detail from the platform.
          error_message:,
          # Short description of the issue.
          error_summary:,
          # Current resolution status.
          resolution_status:,
          # The Whop ID of the ad object this issue is on (the ad, ad group, or campaign).
          # Null when the issue isn't tied to a local object.
          resource_id:,
          # The kind of ad object this issue is on: `ad`, `ad_group`, or `campaign`. Pairs
          # with `resourceId`.
          resource_type:
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              error_code: T.nilable(String),
              error_message: T.nilable(String),
              error_summary: String,
              resolution_status:
                WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus::TaggedSymbol,
              resource_id: T.nilable(String),
              resource_type: String
            }
          )
        end
        def to_hash
        end

        # Current resolution status.
        module ResolutionStatus
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPEN =
            T.let(
              :open,
              WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus::TaggedSymbol
            )
          RESOLVED =
            T.let(
              :resolved,
              WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus::TaggedSymbol
            )
          ACKNOWLEDGED =
            T.let(
              :acknowledged,
              WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdCampaignListResponse::Issue::ResolutionStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
