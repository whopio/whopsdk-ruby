# typed: strong

module WhopSDK
  module Models
    class AdListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::AdListResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for this ad.
      sig { returns(String) }
      attr_accessor :id

      # The ad campaign this ad belongs to.
      sig { returns(WhopSDK::Models::AdListResponse::AdCampaign) }
      attr_reader :ad_campaign

      sig do
        params(
          ad_campaign: WhopSDK::Models::AdListResponse::AdCampaign::OrHash
        ).void
      end
      attr_writer :ad_campaign

      # The parent ad group this ad belongs to.
      sig { returns(WhopSDK::Models::AdListResponse::AdGroup) }
      attr_reader :ad_group

      sig do
        params(ad_group: WhopSDK::Models::AdListResponse::AdGroup::OrHash).void
      end
      attr_writer :ad_group

      # Total clicks on this ad in the stats window.
      sig { returns(Integer) }
      attr_accessor :clicks

      # Cost in dollars per optimization result (spend / results). Null when there are
      # no results.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cost_per_result

      # Cost per click in dollars (spend / clicks). 0 when there are no clicks.
      sig { returns(Float) }
      attr_accessor :cpc

      # Cost per 1,000 impressions in dollars (spend / impressions × 1000).
      sig { returns(T.nilable(Float)) }
      attr_accessor :cpm

      # When the ad was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
      sig { returns(Float) }
      attr_accessor :ctr

      # Average number of times each person saw an ad (impressions / reach), as reported
      # by the platform.
      sig { returns(T.nilable(Float)) }
      attr_accessor :frequency

      # Total impressions (views) on this ad in the stats window.
      sig { returns(Integer) }
      attr_accessor :impressions

      # Open platform issues affecting this ad, deduplicated per object. Empty when
      # there are none.
      sig { returns(T::Array[WhopSDK::Models::AdListResponse::Issue]) }
      attr_accessor :issues

      # The external ad platform this ad is running on (e.g., meta, tiktok).
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

      # Total optimization results reported by the external ad platform in the stats
      # window. What counts as a result depends on the optimization goal — see
      # `stats.resultLabelKey`.
      sig { returns(Integer) }
      attr_accessor :results

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

      # Current delivery status of the ad.
      sig { returns(WhopSDK::ExternalAdStatus::TaggedSymbol) }
      attr_accessor :status

      # The display title of the ad. Falls back to the creative set caption when unset.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Unique click-through rate as a fraction of impressions (unique clicks /
      # impressions, 0–1).
      sig { returns(T.nilable(Float)) }
      attr_accessor :unique_ctr

      # When the ad was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An ad belonging to an ad group.
      sig do
        params(
          id: String,
          ad_campaign: WhopSDK::Models::AdListResponse::AdCampaign::OrHash,
          ad_group: WhopSDK::Models::AdListResponse::AdGroup::OrHash,
          clicks: Integer,
          cost_per_result: T.nilable(Float),
          cpc: Float,
          cpm: T.nilable(Float),
          created_at: Time,
          ctr: Float,
          frequency: T.nilable(Float),
          impressions: Integer,
          issues: T::Array[WhopSDK::Models::AdListResponse::Issue::OrHash],
          platform: WhopSDK::AdCampaignPlatform::OrSymbol,
          purchase_value: Float,
          purchases: Integer,
          reach: Integer,
          results: Integer,
          roas: Float,
          spend: Float,
          spend_currency: T.nilable(WhopSDK::Currency::OrSymbol),
          status: WhopSDK::ExternalAdStatus::OrSymbol,
          title: T.nilable(String),
          unique_ctr: T.nilable(Float),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for this ad.
        id:,
        # The ad campaign this ad belongs to.
        ad_campaign:,
        # The parent ad group this ad belongs to.
        ad_group:,
        # Total clicks on this ad in the stats window.
        clicks:,
        # Cost in dollars per optimization result (spend / results). Null when there are
        # no results.
        cost_per_result:,
        # Cost per click in dollars (spend / clicks). 0 when there are no clicks.
        cpc:,
        # Cost per 1,000 impressions in dollars (spend / impressions × 1000).
        cpm:,
        # When the ad was created.
        created_at:,
        # Click-through rate as a fraction of impressions (clicks / impressions, 0–1).
        ctr:,
        # Average number of times each person saw an ad (impressions / reach), as reported
        # by the platform.
        frequency:,
        # Total impressions (views) on this ad in the stats window.
        impressions:,
        # Open platform issues affecting this ad, deduplicated per object. Empty when
        # there are none.
        issues:,
        # The external ad platform this ad is running on (e.g., meta, tiktok).
        platform:,
        # Total USD value of Whop pixel-attributed purchases in the stats window.
        purchase_value:,
        # Number of Whop pixel-attributed purchases (last-click) in the stats window.
        purchases:,
        # Unique users reached in the stats window (deduplicated by the platform).
        reach:,
        # Total optimization results reported by the external ad platform in the stats
        # window. What counts as a result depends on the optimization goal — see
        # `stats.resultLabelKey`.
        results:,
        # Return on ad spend as a ratio (purchaseValue / spend) — 2.5 means $2.50 of
        # attributed purchase value per $1 spent. 0 when there is no spend.
        roas:,
        # Amount charged in dollars in the stats window.
        spend:,
        # The available currencies on the platform
        spend_currency:,
        # Current delivery status of the ad.
        status:,
        # The display title of the ad. Falls back to the creative set caption when unset.
        title:,
        # Unique click-through rate as a fraction of impressions (unique clicks /
        # impressions, 0–1).
        unique_ctr:,
        # When the ad was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ad_campaign: WhopSDK::Models::AdListResponse::AdCampaign,
            ad_group: WhopSDK::Models::AdListResponse::AdGroup,
            clicks: Integer,
            cost_per_result: T.nilable(Float),
            cpc: Float,
            cpm: T.nilable(Float),
            created_at: Time,
            ctr: Float,
            frequency: T.nilable(Float),
            impressions: Integer,
            issues: T::Array[WhopSDK::Models::AdListResponse::Issue],
            platform: WhopSDK::AdCampaignPlatform::TaggedSymbol,
            purchase_value: Float,
            purchases: Integer,
            reach: Integer,
            results: Integer,
            roas: Float,
            spend: Float,
            spend_currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
            status: WhopSDK::ExternalAdStatus::TaggedSymbol,
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
              WhopSDK::Models::AdListResponse::AdCampaign,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for this ad campaign.
        sig { returns(String) }
        attr_accessor :id

        # The ad campaign this ad belongs to.
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

      class AdGroup < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdListResponse::AdGroup,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for this ad group.
        sig { returns(String) }
        attr_accessor :id

        # The parent ad group this ad belongs to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for this ad group.
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
              WhopSDK::Models::AdListResponse::Issue,
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
            WhopSDK::Models::AdListResponse::Issue::ResolutionStatus::TaggedSymbol
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
              WhopSDK::Models::AdListResponse::Issue::ResolutionStatus::OrSymbol,
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
                WhopSDK::Models::AdListResponse::Issue::ResolutionStatus::TaggedSymbol,
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
                WhopSDK::Models::AdListResponse::Issue::ResolutionStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPEN =
            T.let(
              :open,
              WhopSDK::Models::AdListResponse::Issue::ResolutionStatus::TaggedSymbol
            )
          RESOLVED =
            T.let(
              :resolved,
              WhopSDK::Models::AdListResponse::Issue::ResolutionStatus::TaggedSymbol
            )
          ACKNOWLEDGED =
            T.let(
              :acknowledged,
              WhopSDK::Models::AdListResponse::Issue::ResolutionStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdListResponse::Issue::ResolutionStatus::TaggedSymbol
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
