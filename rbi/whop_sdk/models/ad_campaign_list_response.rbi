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

      # The unique identifier for the ad campaign.
      sig { returns(String) }
      attr_accessor :id

      # Available budget in dollars, capped at daily budget minus today's spend for
      # daily campaigns
      sig { returns(Float) }
      attr_accessor :available_budget

      # Number of clicks
      sig { returns(Integer) }
      attr_accessor :clicks_count

      # The datetime the ad campaign was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Effective daily budget in dollars — sum of ad group budgets when set, otherwise
      # campaign-level daily budget
      sig { returns(T.nilable(Float)) }
      attr_accessor :daily_budget

      # Number of impressions (views)
      sig { returns(Integer) }
      attr_accessor :impressions_count

      # If temporarily paused, the timestamp when the campaign will auto-resume
      sig { returns(T.nilable(Time)) }
      attr_accessor :paused_until

      # The platforms where an ad campaign can run.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::AdCampaignListResponse::Platform::TaggedSymbol
          )
        )
      end
      attr_accessor :platform

      # The access pass being promoted. Null for campaigns that don't target a specific
      # product.
      sig do
        returns(T.nilable(WhopSDK::Models::AdCampaignListResponse::Product))
      end
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(WhopSDK::Models::AdCampaignListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # Number of purchases
      sig { returns(Integer) }
      attr_accessor :purchases_count

      # Remaining balance in dollars
      sig { returns(Float) }
      attr_accessor :remaining_balance

      # Return on Ad Spend (ROAS) percentage - revenue generated divided by ad spend
      sig { returns(Float) }
      attr_accessor :return_on_ad_spend

      # Total revenue generated from users who converted through this campaign
      sig { returns(Float) }
      attr_accessor :revenue

      # Current status of the campaign (active, paused, or inactive)
      sig do
        returns(WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol)
      end
      attr_accessor :status

      # Array of ISO3166 country codes for territory targeting
      sig { returns(T::Array[String]) }
      attr_accessor :target_country_codes

      # The title of the ad campaign
      sig { returns(String) }
      attr_accessor :title

      # Amount spent today in dollars
      sig { returns(Float) }
      attr_accessor :todays_spend

      # Total credits added to the campaign in dollars
      sig { returns(Float) }
      attr_accessor :total_credits

      # Total amount spent on conversions in dollars
      sig { returns(Float) }
      attr_accessor :total_spend

      # The datetime the ad campaign was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An advertising campaign running on an external platform or within Whop.
      sig do
        params(
          id: String,
          available_budget: Float,
          clicks_count: Integer,
          created_at: Time,
          daily_budget: T.nilable(Float),
          impressions_count: Integer,
          paused_until: T.nilable(Time),
          platform:
            T.nilable(
              WhopSDK::Models::AdCampaignListResponse::Platform::OrSymbol
            ),
          product:
            T.nilable(WhopSDK::Models::AdCampaignListResponse::Product::OrHash),
          purchases_count: Integer,
          remaining_balance: Float,
          return_on_ad_spend: Float,
          revenue: Float,
          status: WhopSDK::Models::AdCampaignListResponse::Status::OrSymbol,
          target_country_codes: T::Array[String],
          title: String,
          todays_spend: Float,
          total_credits: Float,
          total_spend: Float,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the ad campaign.
        id:,
        # Available budget in dollars, capped at daily budget minus today's spend for
        # daily campaigns
        available_budget:,
        # Number of clicks
        clicks_count:,
        # The datetime the ad campaign was created.
        created_at:,
        # Effective daily budget in dollars — sum of ad group budgets when set, otherwise
        # campaign-level daily budget
        daily_budget:,
        # Number of impressions (views)
        impressions_count:,
        # If temporarily paused, the timestamp when the campaign will auto-resume
        paused_until:,
        # The platforms where an ad campaign can run.
        platform:,
        # The access pass being promoted. Null for campaigns that don't target a specific
        # product.
        product:,
        # Number of purchases
        purchases_count:,
        # Remaining balance in dollars
        remaining_balance:,
        # Return on Ad Spend (ROAS) percentage - revenue generated divided by ad spend
        return_on_ad_spend:,
        # Total revenue generated from users who converted through this campaign
        revenue:,
        # Current status of the campaign (active, paused, or inactive)
        status:,
        # Array of ISO3166 country codes for territory targeting
        target_country_codes:,
        # The title of the ad campaign
        title:,
        # Amount spent today in dollars
        todays_spend:,
        # Total credits added to the campaign in dollars
        total_credits:,
        # Total amount spent on conversions in dollars
        total_spend:,
        # The datetime the ad campaign was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            available_budget: Float,
            clicks_count: Integer,
            created_at: Time,
            daily_budget: T.nilable(Float),
            impressions_count: Integer,
            paused_until: T.nilable(Time),
            platform:
              T.nilable(
                WhopSDK::Models::AdCampaignListResponse::Platform::TaggedSymbol
              ),
            product:
              T.nilable(WhopSDK::Models::AdCampaignListResponse::Product),
            purchases_count: Integer,
            remaining_balance: Float,
            return_on_ad_spend: Float,
            revenue: Float,
            status:
              WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol,
            target_country_codes: T::Array[String],
            title: String,
            todays_spend: Float,
            total_credits: Float,
            total_spend: Float,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The platforms where an ad campaign can run.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdCampaignListResponse::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(
            :meta,
            WhopSDK::Models::AdCampaignListResponse::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::Models::AdCampaignListResponse::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignListResponse::Platform::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCampaignListResponse::Product,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The URL slug used in the product's public link (e.g., 'my-product' in
        # whop.com/company/my-product).
        sig { returns(String) }
        attr_accessor :route

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # The access pass being promoted. Null for campaigns that don't target a specific
        # product.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the product.
          id:,
          # The URL slug used in the product's public link (e.g., 'my-product' in
          # whop.com/company/my-product).
          route:,
          # The display name of the product shown to customers on the product page and in
          # search results.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
        def to_hash
        end
      end

      # Current status of the campaign (active, paused, or inactive)
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdCampaignListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        STALE =
          T.let(
            :stale,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        PENDING_REFUND =
          T.let(
            :pending_refund,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :payment_failed,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        DRAFT =
          T.let(
            :draft,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(
            :flagged,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
