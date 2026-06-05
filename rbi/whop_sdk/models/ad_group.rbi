# typed: strong

module WhopSDK
  module Models
    class AdGroup < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::AdGroup, WhopSDK::Internal::AnyHash) }

      # The unique identifier for this ad group.
      sig { returns(String) }
      attr_accessor :id

      # The ad campaign this ad group belongs to.
      sig { returns(WhopSDK::AdGroup::AdCampaign) }
      attr_reader :ad_campaign

      sig { params(ad_campaign: WhopSDK::AdGroup::AdCampaign::OrHash).void }
      attr_writer :ad_campaign

      # Budget amount in dollars.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      # The budget type for an ad campaign or ad group.
      sig { returns(T.nilable(WhopSDK::AdBudgetType::TaggedSymbol)) }
      attr_accessor :budget_type

      # Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
      sig { returns(Float) }
      attr_accessor :click_through_rate

      # Total clicks on this ad group's ads in the stats window.
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

      # When the ad group was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Average number of times each person saw an ad (impressions / reach), as reported
      # by the platform.
      sig { returns(T.nilable(Float)) }
      attr_accessor :frequency

      # Total impressions (views) on this ad group's ads in the stats window.
      sig { returns(Integer) }
      attr_accessor :impressions

      # Open platform issues affecting this ad group and its descendant ads,
      # deduplicated per object. Empty when there are none.
      sig { returns(T::Array[WhopSDK::AdGroup::Issue]) }
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
      attr_accessor :return_on_ad_spend

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
      attr_accessor :unique_click_through_rate

      # Unique clicks (deduplicated by the platform) in the stats window.
      sig { returns(Integer) }
      attr_accessor :unique_clicks

      # When the ad group was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An ad group belonging to an ad campaign.
      sig do
        params(
          id: String,
          ad_campaign: WhopSDK::AdGroup::AdCampaign::OrHash,
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
          issues: T::Array[WhopSDK::AdGroup::Issue::OrHash],
          leads: Integer,
          platform: WhopSDK::AdCampaignPlatform::OrSymbol,
          purchase_value: Float,
          purchases: Integer,
          reach: Integer,
          return_on_ad_spend: Float,
          spend: Float,
          spend_currency: T.nilable(WhopSDK::Currency::OrSymbol),
          status: WhopSDK::AdGroupStatus::OrSymbol,
          title: T.nilable(String),
          unique_click_through_rate: T.nilable(Float),
          unique_clicks: Integer,
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
        # Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
        click_through_rate:,
        # Total clicks on this ad group's ads in the stats window.
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
        # When the ad group was created.
        created_at:,
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
        return_on_ad_spend:,
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
        unique_click_through_rate:,
        # Unique clicks (deduplicated by the platform) in the stats window.
        unique_clicks:,
        # When the ad group was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ad_campaign: WhopSDK::AdGroup::AdCampaign,
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
            issues: T::Array[WhopSDK::AdGroup::Issue],
            leads: Integer,
            platform: WhopSDK::AdCampaignPlatform::TaggedSymbol,
            purchase_value: Float,
            purchases: Integer,
            reach: Integer,
            return_on_ad_spend: Float,
            spend: Float,
            spend_currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
            status: WhopSDK::AdGroupStatus::TaggedSymbol,
            title: T.nilable(String),
            unique_click_through_rate: T.nilable(Float),
            unique_clicks: Integer,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AdGroup::AdCampaign, WhopSDK::Internal::AnyHash)
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
            T.any(WhopSDK::AdGroup::Issue, WhopSDK::Internal::AnyHash)
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
        sig { returns(WhopSDK::AdGroup::Issue::ResolutionStatus::TaggedSymbol) }
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
              WhopSDK::AdGroup::Issue::ResolutionStatus::OrSymbol,
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
                WhopSDK::AdGroup::Issue::ResolutionStatus::TaggedSymbol,
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
              T.all(Symbol, WhopSDK::AdGroup::Issue::ResolutionStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPEN =
            T.let(
              :open,
              WhopSDK::AdGroup::Issue::ResolutionStatus::TaggedSymbol
            )
          RESOLVED =
            T.let(
              :resolved,
              WhopSDK::AdGroup::Issue::ResolutionStatus::TaggedSymbol
            )
          ACKNOWLEDGED =
            T.let(
              :acknowledged,
              WhopSDK::AdGroup::Issue::ResolutionStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::AdGroup::Issue::ResolutionStatus::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
