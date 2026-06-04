# typed: strong

module WhopSDK
  module Models
    class AdGroupListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AdGroupListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for this ad group.
      sig { returns(String) }
      attr_accessor :id

      # The ad campaign this ad group belongs to.
      sig { returns(WhopSDK::Models::AdGroupListResponse::AdCampaign) }
      attr_reader :ad_campaign

      sig do
        params(
          ad_campaign: WhopSDK::Models::AdGroupListResponse::AdCampaign::OrHash
        ).void
      end
      attr_writer :ad_campaign

      # Budget amount in dollars.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      # The budget type for an ad campaign or ad group.
      sig { returns(T.nilable(WhopSDK::AdBudgetType::TaggedSymbol)) }
      attr_accessor :budget_type

      # Total clicks on this ad group's ads in the stats window.
      sig { returns(Integer) }
      attr_accessor :clicks

      # Cost in dollars per Whop pixel-attributed lead (spend / leads). 0 when leads are
      # tracked but none happened yet; null when leads are not a goal and none were
      # attributed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_lead

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

      # Cost per click in dollars (spend / clicks). 0 when there are no clicks.
      sig { returns(Float) }
      attr_accessor :cpc

      # Cost per 1,000 impressions in dollars (spend / impressions × 1000). 0 when there
      # are no impressions.
      sig { returns(Float) }
      attr_accessor :cpm

      # When the ad group was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
      sig { returns(Float) }
      attr_accessor :ctr

      # Average number of times each person saw an ad (impressions / reach), as reported
      # by the platform.
      sig { returns(T.nilable(Float)) }
      attr_accessor :frequency

      # Total impressions (views) on this ad group's ads in the stats window.
      sig { returns(Integer) }
      attr_accessor :impressions

      # Open platform issues affecting this ad group and its descendant ads,
      # deduplicated per object. Empty when there are none.
      sig { returns(T::Array[WhopSDK::Models::AdGroupListResponse::Issue]) }
      attr_accessor :issues

      # Number of Whop pixel-attributed leads (last-click) in the stats window.
      sig { returns(Integer) }
      attr_accessor :leads

      # The external ad platform this ad group is running on (e.g., meta, tiktok).
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
      attr_accessor :roas

      # Amount charged in dollars in the stats window.
      sig { returns(Float) }
      attr_accessor :spend

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
      attr_accessor :spend_currency

      # Current operational status of the ad group.
      sig { returns(WhopSDK::AdGroupStatus::TaggedSymbol) }
      attr_accessor :status

      # The ad group name shown in the Whop dashboard.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Unique click-through rate as a fraction of impressions (unique clicks /
      # impressions, 0–1).
      sig { returns(T.nilable(Float)) }
      attr_accessor :unique_ctr

      # When the ad group was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An ad group belonging to an ad campaign.
      sig do
        params(
          id: String,
          ad_campaign: WhopSDK::Models::AdGroupListResponse::AdCampaign::OrHash,
          budget: T.nilable(Float),
          budget_type: T.nilable(WhopSDK::AdBudgetType::OrSymbol),
          clicks: Integer,
          cost_per_lead: T.nilable(Float),
          cost_per_purchase: T.nilable(Float),
          cost_per_result: T.nilable(Float),
          cpc: Float,
          cpm: Float,
          created_at: Time,
          ctr: Float,
          frequency: T.nilable(Float),
          impressions: Integer,
          issues: T::Array[WhopSDK::Models::AdGroupListResponse::Issue::OrHash],
          leads: Integer,
          platform: WhopSDK::AdCampaignPlatform::OrSymbol,
          purchase_value: Float,
          purchases: Integer,
          reach: Integer,
          roas: Float,
          spend: Float,
          spend_currency: T.nilable(WhopSDK::Currency::OrSymbol),
          status: WhopSDK::AdGroupStatus::OrSymbol,
          title: T.nilable(String),
          unique_ctr: T.nilable(Float),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for this ad group.
        id:,
        # The ad campaign this ad group belongs to.
        ad_campaign:,
        # Budget amount in dollars.
        budget:,
        # The budget type for an ad campaign or ad group.
        budget_type:,
        # Total clicks on this ad group's ads in the stats window.
        clicks:,
        # Cost in dollars per Whop pixel-attributed lead (spend / leads). 0 when leads are
        # tracked but none happened yet; null when leads are not a goal and none were
        # attributed.
        cost_per_lead:,
        # Cost in dollars per Whop pixel-attributed purchase (spend / purchases). 0 when
        # purchases are tracked but none happened yet; null when purchases are not a goal
        # and none were attributed.
        cost_per_purchase:,
        # Cost in dollars per optimization result (spend / results). 0 when a result is
        # being optimized for but none happened yet; null when nothing is being optimized
        # for.
        cost_per_result:,
        # Cost per click in dollars (spend / clicks). 0 when there are no clicks.
        cpc:,
        # Cost per 1,000 impressions in dollars (spend / impressions × 1000). 0 when there
        # are no impressions.
        cpm:,
        # When the ad group was created.
        created_at:,
        # Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
        ctr:,
        # Average number of times each person saw an ad (impressions / reach), as reported
        # by the platform.
        frequency:,
        # Total impressions (views) on this ad group's ads in the stats window.
        impressions:,
        # Open platform issues affecting this ad group and its descendant ads,
        # deduplicated per object. Empty when there are none.
        issues:,
        # Number of Whop pixel-attributed leads (last-click) in the stats window.
        leads:,
        # The external ad platform this ad group is running on (e.g., meta, tiktok).
        platform:,
        # Total USD value of Whop pixel-attributed purchases in the stats window.
        purchase_value:,
        # Number of Whop pixel-attributed purchases (last-click) in the stats window.
        purchases:,
        # Unique users reached in the stats window (deduplicated by the platform).
        reach:,
        # Return on ad spend as a ratio (purchaseValue / spend) — 2.5 means $2.50 of
        # attributed purchase value per $1 spent. 0 when there is no spend.
        roas:,
        # Amount charged in dollars in the stats window.
        spend:,
        # The available currencies on the platform
        spend_currency:,
        # Current operational status of the ad group.
        status:,
        # The ad group name shown in the Whop dashboard.
        title:,
        # Unique click-through rate as a fraction of impressions (unique clicks /
        # impressions, 0–1).
        unique_ctr:,
        # When the ad group was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ad_campaign: WhopSDK::Models::AdGroupListResponse::AdCampaign,
            budget: T.nilable(Float),
            budget_type: T.nilable(WhopSDK::AdBudgetType::TaggedSymbol),
            clicks: Integer,
            cost_per_lead: T.nilable(Float),
            cost_per_purchase: T.nilable(Float),
            cost_per_result: T.nilable(Float),
            cpc: Float,
            cpm: Float,
            created_at: Time,
            ctr: Float,
            frequency: T.nilable(Float),
            impressions: Integer,
            issues: T::Array[WhopSDK::Models::AdGroupListResponse::Issue],
            leads: Integer,
            platform: WhopSDK::AdCampaignPlatform::TaggedSymbol,
            purchase_value: Float,
            purchases: Integer,
            reach: Integer,
            roas: Float,
            spend: Float,
            spend_currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
            status: WhopSDK::AdGroupStatus::TaggedSymbol,
            title: T.nilable(String),
            unique_ctr: T.nilable(Float),
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdGroupListResponse::AdCampaign,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for this ad campaign.
        sig { returns(String) }
        attr_accessor :id

        # The ad campaign this ad group belongs to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for this ad campaign.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Issue < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdGroupListResponse::Issue,
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
            WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus::TaggedSymbol
          )
        end
        attr_accessor :resolution_status

        # The Whop ID of the ad object this issue is on (the ad, ad group, or campaign).
        # Null when the issue isn't tied to a local object.
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        # The kind of ad object this issue is on: `ad`, `ad_group`, `campaign`, or
        # `asset_share`. Pairs with `resourceId`.
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
              WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus::OrSymbol,
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
          # The kind of ad object this issue is on: `ad`, `ad_group`, `campaign`, or
          # `asset_share`. Pairs with `resourceId`.
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
                WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus::TaggedSymbol,
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
                WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPEN =
            T.let(
              :open,
              WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus::TaggedSymbol
            )
          RESOLVED =
            T.let(
              :resolved,
              WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus::TaggedSymbol
            )
          ACKNOWLEDGED =
            T.let(
              :acknowledged,
              WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdGroupListResponse::Issue::ResolutionStatus::TaggedSymbol
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
