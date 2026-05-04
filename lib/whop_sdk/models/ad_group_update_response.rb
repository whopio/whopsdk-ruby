# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#update
    class AdGroupUpdateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the external ad group.
      #
      #   @return [String]
      required :id, String

      # @!attribute ad_campaign
      #   The parent ad campaign
      #
      #   @return [WhopSDK::Models::AdGroupUpdateResponse::AdCampaign]
      required :ad_campaign, -> { WhopSDK::Models::AdGroupUpdateResponse::AdCampaign }

      # @!attribute config
      #   Unified ad group configuration (platform-agnostic)
      #
      #   @return [WhopSDK::Models::AdGroupUpdateResponse::Config, nil]
      required :config, -> { WhopSDK::Models::AdGroupUpdateResponse::Config }, nil?: true

      # @!attribute created_at
      #   The datetime the external ad group was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute daily_budget
      #   Daily budget in dollars (nil for lifetime budgets)
      #
      #   @return [Float, nil]
      required :daily_budget, Float, nil?: true

      # @!attribute name
      #   Human-readable ad group name
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute platform_config
      #   Typed platform-specific configuration. Use inline fragments (... on
      #   MetaAdGroupPlatformConfigType).
      #
      #   @return [WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType, nil]
      required :platform_config, union: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig }

      # @!attribute status
      #   Current operational status of the ad group
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Status]
      required :status, enum: -> { WhopSDK::Models::AdGroupUpdateResponse::Status }

      # @!attribute updated_at
      #   The datetime the external ad group was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, ad_campaign:, config:, created_at:, daily_budget:, name:, platform_config:, status:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdGroupUpdateResponse} for more details.
      #
      #   An external ad group (ad set) belonging to an ad campaign
      #
      #   @param id [String] The unique identifier for the external ad group.
      #
      #   @param ad_campaign [WhopSDK::Models::AdGroupUpdateResponse::AdCampaign] The parent ad campaign
      #
      #   @param config [WhopSDK::Models::AdGroupUpdateResponse::Config, nil] Unified ad group configuration (platform-agnostic)
      #
      #   @param created_at [Time] The datetime the external ad group was created.
      #
      #   @param daily_budget [Float, nil] Daily budget in dollars (nil for lifetime budgets)
      #
      #   @param name [String, nil] Human-readable ad group name
      #
      #   @param platform_config [WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType, nil] Typed platform-specific configuration. Use inline fragments (... on MetaAdGroupP
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Status] Current operational status of the ad group
      #
      #   @param updated_at [Time] The datetime the external ad group was last updated.

      # @see WhopSDK::Models::AdGroupUpdateResponse#ad_campaign
      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the ad campaign.
        #
        #   @return [String]
        required :id, String

        # @!attribute platform
        #   The platforms where an ad campaign can run.
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::AdCampaign::Platform, nil]
        required :platform, enum: -> { WhopSDK::Models::AdGroupUpdateResponse::AdCampaign::Platform }, nil?: true

        # @!attribute status
        #   Current status of the campaign (active, paused, or inactive)
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::AdCampaign::Status]
        required :status, enum: -> { WhopSDK::Models::AdGroupUpdateResponse::AdCampaign::Status }

        # @!attribute title
        #   The title of the ad campaign
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, platform:, status:, title:)
        #   The parent ad campaign
        #
        #   @param id [String] The unique identifier for the ad campaign.
        #
        #   @param platform [Symbol, WhopSDK::Models::AdGroupUpdateResponse::AdCampaign::Platform, nil] The platforms where an ad campaign can run.
        #
        #   @param status [Symbol, WhopSDK::Models::AdGroupUpdateResponse::AdCampaign::Status] Current status of the campaign (active, paused, or inactive)
        #
        #   @param title [String] The title of the ad campaign

        # The platforms where an ad campaign can run.
        #
        # @see WhopSDK::Models::AdGroupUpdateResponse::AdCampaign#platform
        module Platform
          extend WhopSDK::Internal::Type::Enum

          META = :meta
          TIKTOK = :tiktok

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Current status of the campaign (active, paused, or inactive)
        #
        # @see WhopSDK::Models::AdGroupUpdateResponse::AdCampaign#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          PAUSED = :paused
          INACTIVE = :inactive
          STALE = :stale
          PENDING_REFUND = :pending_refund
          PAYMENT_FAILED = :payment_failed
          DRAFT = :draft
          IN_REVIEW = :in_review
          FLAGGED = :flagged

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::AdGroupUpdateResponse#config
      class Config < WhopSDK::Internal::Type::BaseModel
        # @!attribute bid_amount
        #   Bid cap amount in cents. Used when bid_strategy is bid_cap or cost_cap.
        #
        #   @return [Integer, nil]
        required :bid_amount, Integer, nil?: true

        # @!attribute bid_strategy
        #   Bid strategy: lowest_cost, bid_cap, or cost_cap.
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::BidStrategy, nil]
        required :bid_strategy,
                 enum: -> { WhopSDK::Models::AdGroupUpdateResponse::Config::BidStrategy },
                 nil?: true

        # @!attribute billing_event
        #   How you are billed (e.g., impressions, clicks).
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::BillingEvent, nil]
        required :billing_event,
                 enum: -> { WhopSDK::Models::AdGroupUpdateResponse::Config::BillingEvent },
                 nil?: true

        # @!attribute end_time
        #   Scheduled end time (ISO8601). Required for lifetime budgets.
        #
        #   @return [String, nil]
        required :end_time, String, nil?: true

        # @!attribute frequency_cap
        #   Maximum number of times to show ads to each person in the frequency interval.
        #
        #   @return [Integer, nil]
        required :frequency_cap, Integer, nil?: true

        # @!attribute frequency_cap_interval_days
        #   Number of days for the frequency cap interval.
        #
        #   @return [Integer, nil]
        required :frequency_cap_interval_days, Integer, nil?: true

        # @!attribute optimization_goal
        #   What the ad group optimizes for (e.g., conversions, link_clicks, reach).
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::OptimizationGoal, nil]
        required :optimization_goal,
                 enum: -> { WhopSDK::Models::AdGroupUpdateResponse::Config::OptimizationGoal },
                 nil?: true

        # @!attribute pacing
        #   Budget pacing: standard (even) or accelerated (fast).
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::Pacing, nil]
        required :pacing, enum: -> { WhopSDK::Models::AdGroupUpdateResponse::Config::Pacing }, nil?: true

        # @!attribute start_time
        #   Scheduled start time (ISO8601).
        #
        #   @return [String, nil]
        required :start_time, String, nil?: true

        # @!attribute targeting
        #   Audience targeting settings (demographics, geo, interests, audiences, devices).
        #
        #   @return [WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting, nil]
        required :targeting, -> { WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting }, nil?: true

        # @!method initialize(bid_amount:, bid_strategy:, billing_event:, end_time:, frequency_cap:, frequency_cap_interval_days:, optimization_goal:, pacing:, start_time:, targeting:)
        #   Unified ad group configuration (platform-agnostic)
        #
        #   @param bid_amount [Integer, nil] Bid cap amount in cents. Used when bid_strategy is bid_cap or cost_cap.
        #
        #   @param bid_strategy [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::BidStrategy, nil] Bid strategy: lowest_cost, bid_cap, or cost_cap.
        #
        #   @param billing_event [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::BillingEvent, nil] How you are billed (e.g., impressions, clicks).
        #
        #   @param end_time [String, nil] Scheduled end time (ISO8601). Required for lifetime budgets.
        #
        #   @param frequency_cap [Integer, nil] Maximum number of times to show ads to each person in the frequency interval.
        #
        #   @param frequency_cap_interval_days [Integer, nil] Number of days for the frequency cap interval.
        #
        #   @param optimization_goal [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::OptimizationGoal, nil] What the ad group optimizes for (e.g., conversions, link_clicks, reach).
        #
        #   @param pacing [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::Pacing, nil] Budget pacing: standard (even) or accelerated (fast).
        #
        #   @param start_time [String, nil] Scheduled start time (ISO8601).
        #
        #   @param targeting [WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting, nil] Audience targeting settings (demographics, geo, interests, audiences, devices).

        # Bid strategy: lowest_cost, bid_cap, or cost_cap.
        #
        # @see WhopSDK::Models::AdGroupUpdateResponse::Config#bid_strategy
        module BidStrategy
          extend WhopSDK::Internal::Type::Enum

          LOWEST_COST = :lowest_cost
          BID_CAP = :bid_cap
          COST_CAP = :cost_cap

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # How you are billed (e.g., impressions, clicks).
        #
        # @see WhopSDK::Models::AdGroupUpdateResponse::Config#billing_event
        module BillingEvent
          extend WhopSDK::Internal::Type::Enum

          IMPRESSIONS = :impressions
          CLICKS = :clicks
          OPTIMIZED_CPM = :optimized_cpm
          VIDEO_VIEWS = :video_views

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # What the ad group optimizes for (e.g., conversions, link_clicks, reach).
        #
        # @see WhopSDK::Models::AdGroupUpdateResponse::Config#optimization_goal
        module OptimizationGoal
          extend WhopSDK::Internal::Type::Enum

          CONVERSIONS = :conversions
          LINK_CLICKS = :link_clicks
          LANDING_PAGE_VIEWS = :landing_page_views
          REACH = :reach
          IMPRESSIONS = :impressions
          APP_INSTALLS = :app_installs
          VIDEO_VIEWS = :video_views
          LEAD_GENERATION = :lead_generation
          VALUE = :value
          PAGE_LIKES = :page_likes
          CONVERSATIONS = :conversations
          AD_RECALL_LIFT = :ad_recall_lift
          TWO_SECOND_CONTINUOUS_VIDEO_VIEWS = :two_second_continuous_video_views
          POST_ENGAGEMENT = :post_engagement
          EVENT_RESPONSES = :event_responses
          REMINDERS_SET = :reminders_set
          QUALITY_LEAD = :quality_lead

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Budget pacing: standard (even) or accelerated (fast).
        #
        # @see WhopSDK::Models::AdGroupUpdateResponse::Config#pacing
        module Pacing
          extend WhopSDK::Internal::Type::Enum

          STANDARD = :standard
          ACCELERATED = :accelerated

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AdGroupUpdateResponse::Config#targeting
        class Targeting < WhopSDK::Internal::Type::BaseModel
          # @!attribute age_max
          #   Maximum age for demographic targeting.
          #
          #   @return [Integer, nil]
          required :age_max, Integer, nil?: true

          # @!attribute age_min
          #   Minimum age for demographic targeting.
          #
          #   @return [Integer, nil]
          required :age_min, Integer, nil?: true

          # @!attribute countries
          #   ISO 3166-1 alpha-2 country codes targeted.
          #
          #   @return [Array<String>, nil]
          required :countries, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute device_platforms
          #   Device platforms targeted.
          #
          #   @return [Array<Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting::DevicePlatform>, nil]
          required :device_platforms,
                   -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting::DevicePlatform] },
                   nil?: true

          # @!attribute exclude_audience_ids
          #   Platform audience IDs excluded.
          #
          #   @return [Array<String>, nil]
          required :exclude_audience_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute genders
          #   Genders targeted.
          #
          #   @return [Array<Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting::Gender>, nil]
          required :genders,
                   -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting::Gender] },
                   nil?: true

          # @!attribute include_audience_ids
          #   Platform audience IDs included.
          #
          #   @return [Array<String>, nil]
          required :include_audience_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute interest_ids
          #   Platform-specific interest IDs targeted.
          #
          #   @return [Array<String>, nil]
          required :interest_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute languages
          #   Language codes targeted.
          #
          #   @return [Array<String>, nil]
          required :languages, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute placement_type
          #   Placement strategy for ad delivery.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting::PlacementType, nil]
          required :placement_type,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting::PlacementType },
                   nil?: true

          # @!method initialize(age_max:, age_min:, countries:, device_platforms:, exclude_audience_ids:, genders:, include_audience_ids:, interest_ids:, languages:, placement_type:)
          #   Audience targeting settings (demographics, geo, interests, audiences, devices).
          #
          #   @param age_max [Integer, nil] Maximum age for demographic targeting.
          #
          #   @param age_min [Integer, nil] Minimum age for demographic targeting.
          #
          #   @param countries [Array<String>, nil] ISO 3166-1 alpha-2 country codes targeted.
          #
          #   @param device_platforms [Array<Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting::DevicePlatform>, nil] Device platforms targeted.
          #
          #   @param exclude_audience_ids [Array<String>, nil] Platform audience IDs excluded.
          #
          #   @param genders [Array<Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting::Gender>, nil] Genders targeted.
          #
          #   @param include_audience_ids [Array<String>, nil] Platform audience IDs included.
          #
          #   @param interest_ids [Array<String>, nil] Platform-specific interest IDs targeted.
          #
          #   @param languages [Array<String>, nil] Language codes targeted.
          #
          #   @param placement_type [Symbol, WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting::PlacementType, nil] Placement strategy for ad delivery.

          # Device platform targeting options.
          module DevicePlatform
            extend WhopSDK::Internal::Type::Enum

            MOBILE = :mobile
            DESKTOP = :desktop

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Gender targeting options.
          module Gender
            extend WhopSDK::Internal::Type::Enum

            MALE = :male
            FEMALE = :female
            ALL = :all

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Placement strategy for ad delivery.
          #
          # @see WhopSDK::Models::AdGroupUpdateResponse::Config::Targeting#placement_type
          module PlacementType
            extend WhopSDK::Internal::Type::Enum

            AUTOMATIC = :automatic
            MANUAL = :manual

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # Typed platform-specific configuration. Use inline fragments (... on
      # MetaAdGroupPlatformConfigType).
      #
      # @see WhopSDK::Models::AdGroupUpdateResponse#platform_config
      module PlatformConfig
        extend WhopSDK::Internal::Type::Union

        discriminator :typename

        # Meta (Facebook/Instagram) ad set configuration.
        variant :MetaAdGroupPlatformConfigType,
                -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType }

        # TikTok ad group configuration.
        variant :TiktokAdGroupPlatformConfigType,
                -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType }

        class MetaAdGroupPlatformConfigType < WhopSDK::Internal::Type::BaseModel
          # @!attribute attribution_spec
          #
          #   @return [Array<Hash{Symbol=>Object}>, nil]
          required :attribution_spec,
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]],
                   nil?: true

          # @!attribute bid_amount
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          required :bid_amount, Integer, nil?: true

          # @!attribute bid_strategy
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy, nil]
          required :bid_strategy,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy },
                   nil?: true

          # @!attribute billing_event
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent, nil]
          required :billing_event,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent },
                   nil?: true

          # @!attribute daily_budget
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          required :daily_budget, Integer, nil?: true

          # @!attribute destination_type
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType, nil]
          required :destination_type,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType },
                   nil?: true

          # @!attribute end_time
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :end_time, String, nil?: true

          # @!attribute excluded_geo_locations
          #   Represents untyped JSON
          #
          #   @return [Hash{Symbol=>Object}, nil]
          required :excluded_geo_locations,
                   WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown],
                   nil?: true

          # @!attribute facebook_positions
          #
          #   @return [Array<String>, nil]
          required :facebook_positions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute geo_locations
          #   Represents untyped JSON
          #
          #   @return [Hash{Symbol=>Object}, nil]
          required :geo_locations,
                   WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown],
                   nil?: true

          # @!attribute instagram_actor_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :instagram_actor_id, String, nil?: true

          # @!attribute instagram_positions
          #
          #   @return [Array<String>, nil]
          required :instagram_positions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute lifetime_budget
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          required :lifetime_budget, Integer, nil?: true

          # @!attribute optimization_goal
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal, nil]
          required :optimization_goal,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal },
                   nil?: true

          # @!attribute page_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :page_id, String, nil?: true

          # @!attribute platform
          #   The ad platform (meta, tiktok).
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Platform]
          required :platform,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Platform }

          # @!attribute promoted_object
          #   Represents untyped JSON
          #
          #   @return [Hash{Symbol=>Object}, nil]
          required :promoted_object,
                   WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown],
                   nil?: true

          # @!attribute publisher_platforms
          #
          #   @return [Array<String>, nil]
          required :publisher_platforms, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute status
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Status, nil]
          required :status,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Status },
                   nil?: true

          # @!attribute targeting_automation
          #   Represents untyped JSON
          #
          #   @return [Hash{Symbol=>Object}, nil]
          required :targeting_automation,
                   WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown],
                   nil?: true

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :MetaAdGroupPlatformConfigType]
          required :typename, const: :MetaAdGroupPlatformConfigType

          # @!method initialize(attribution_spec:, bid_amount:, bid_strategy:, billing_event:, daily_budget:, destination_type:, end_time:, excluded_geo_locations:, facebook_positions:, geo_locations:, instagram_actor_id:, instagram_positions:, lifetime_budget:, optimization_goal:, page_id:, platform:, promoted_object:, publisher_platforms:, status:, targeting_automation:, typename: :MetaAdGroupPlatformConfigType)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType}
          #   for more details.
          #
          #   Meta (Facebook/Instagram) ad set configuration.
          #
          #   @param attribution_spec [Array<Hash{Symbol=>Object}>, nil]
          #
          #   @param bid_amount [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param bid_strategy [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy, nil]
          #
          #   @param billing_event [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent, nil]
          #
          #   @param daily_budget [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param destination_type [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType, nil]
          #
          #   @param end_time [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param excluded_geo_locations [Hash{Symbol=>Object}, nil] Represents untyped JSON
          #
          #   @param facebook_positions [Array<String>, nil]
          #
          #   @param geo_locations [Hash{Symbol=>Object}, nil] Represents untyped JSON
          #
          #   @param instagram_actor_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param instagram_positions [Array<String>, nil]
          #
          #   @param lifetime_budget [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param optimization_goal [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal, nil]
          #
          #   @param page_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param platform [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Platform] The ad platform (meta, tiktok).
          #
          #   @param promoted_object [Hash{Symbol=>Object}, nil] Represents untyped JSON
          #
          #   @param publisher_platforms [Array<String>, nil]
          #
          #   @param status [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Status, nil]
          #
          #   @param targeting_automation [Hash{Symbol=>Object}, nil] Represents untyped JSON
          #
          #   @param typename [Symbol, :MetaAdGroupPlatformConfigType] The typename of this object

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType#bid_strategy
          module BidStrategy
            extend WhopSDK::Internal::Type::Enum

            LOWEST_COST_WITHOUT_CAP = :LOWEST_COST_WITHOUT_CAP
            LOWEST_COST_WITH_BID_CAP = :LOWEST_COST_WITH_BID_CAP
            COST_CAP = :COST_CAP
            LOWEST_COST_WITH_MIN_ROAS = :LOWEST_COST_WITH_MIN_ROAS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType#billing_event
          module BillingEvent
            extend WhopSDK::Internal::Type::Enum

            APP_INSTALLS = :APP_INSTALLS
            CLICKS = :CLICKS
            IMPRESSIONS = :IMPRESSIONS
            LINK_CLICKS = :LINK_CLICKS
            NONE = :NONE
            OFFER_CLAIMS = :OFFER_CLAIMS
            PAGE_LIKES = :PAGE_LIKES
            POST_ENGAGEMENT = :POST_ENGAGEMENT
            THRUPLAY = :THRUPLAY
            PURCHASE = :PURCHASE
            LISTING_INTERACTION = :LISTING_INTERACTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType#destination_type
          module DestinationType
            extend WhopSDK::Internal::Type::Enum

            UNDEFINED = :UNDEFINED
            WEBSITE = :WEBSITE
            APP = :APP
            FACEBOOK = :FACEBOOK
            MESSENGER = :MESSENGER
            WHATSAPP = :WHATSAPP
            INSTAGRAM_DIRECT = :INSTAGRAM_DIRECT
            INSTAGRAM_PROFILE = :INSTAGRAM_PROFILE
            PHONE_CALL = :PHONE_CALL
            SHOP_AUTOMATIC = :SHOP_AUTOMATIC
            APPLINKS_AUTOMATIC = :APPLINKS_AUTOMATIC
            ON_AD = :ON_AD
            ON_POST = :ON_POST
            ON_VIDEO = :ON_VIDEO
            ON_PAGE = :ON_PAGE
            ON_EVENT = :ON_EVENT
            MESSAGING_MESSENGER_WHATSAPP = :MESSAGING_MESSENGER_WHATSAPP
            MESSAGING_INSTAGRAM_DIRECT_MESSENGER = :MESSAGING_INSTAGRAM_DIRECT_MESSENGER
            MESSAGING_INSTAGRAM_DIRECT_WHATSAPP = :MESSAGING_INSTAGRAM_DIRECT_WHATSAPP
            MESSAGING_INSTAGRAM_DIRECT_MESSENGER_WHATSAPP = :MESSAGING_INSTAGRAM_DIRECT_MESSENGER_WHATSAPP
            INSTAGRAM_PROFILE_AND_FACEBOOK_PAGE = :INSTAGRAM_PROFILE_AND_FACEBOOK_PAGE
            FACEBOOK_PAGE = :FACEBOOK_PAGE
            INSTAGRAM_LIVE = :INSTAGRAM_LIVE
            FACEBOOK_LIVE = :FACEBOOK_LIVE
            IMAGINE = :IMAGINE
            LEAD_FROM_IG_DIRECT = :LEAD_FROM_IG_DIRECT
            LEAD_FROM_MESSENGER = :LEAD_FROM_MESSENGER
            WEBSITE_AND_LEAD_FORM = :WEBSITE_AND_LEAD_FORM
            WEBSITE_AND_PHONE_CALL = :WEBSITE_AND_PHONE_CALL
            BROADCAST_CHANNEL = :BROADCAST_CHANNEL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType#optimization_goal
          module OptimizationGoal
            extend WhopSDK::Internal::Type::Enum

            NONE = :NONE
            APP_INSTALLS = :APP_INSTALLS
            AD_RECALL_LIFT = :AD_RECALL_LIFT
            ENGAGED_USERS = :ENGAGED_USERS
            EVENT_RESPONSES = :EVENT_RESPONSES
            IMPRESSIONS = :IMPRESSIONS
            LEAD_GENERATION = :LEAD_GENERATION
            QUALITY_LEAD = :QUALITY_LEAD
            LINK_CLICKS = :LINK_CLICKS
            OFFSITE_CONVERSIONS = :OFFSITE_CONVERSIONS
            PAGE_LIKES = :PAGE_LIKES
            POST_ENGAGEMENT = :POST_ENGAGEMENT
            QUALITY_CALL = :QUALITY_CALL
            REACH = :REACH
            LANDING_PAGE_VIEWS = :LANDING_PAGE_VIEWS
            VISIT_INSTAGRAM_PROFILE = :VISIT_INSTAGRAM_PROFILE
            VALUE = :VALUE
            THRUPLAY = :THRUPLAY
            DERIVED_EVENTS = :DERIVED_EVENTS
            APP_INSTALLS_AND_OFFSITE_CONVERSIONS = :APP_INSTALLS_AND_OFFSITE_CONVERSIONS
            CONVERSATIONS = :CONVERSATIONS
            IN_APP_VALUE = :IN_APP_VALUE
            MESSAGING_PURCHASE_CONVERSION = :MESSAGING_PURCHASE_CONVERSION
            SUBSCRIBERS = :SUBSCRIBERS
            REMINDERS_SET = :REMINDERS_SET
            MEANINGFUL_CALL_ATTEMPT = :MEANINGFUL_CALL_ATTEMPT
            PROFILE_VISIT = :PROFILE_VISIT
            PROFILE_AND_PAGE_ENGAGEMENT = :PROFILE_AND_PAGE_ENGAGEMENT
            TWO_SECOND_CONTINUOUS_VIDEO_VIEWS = :TWO_SECOND_CONTINUOUS_VIDEO_VIEWS
            ENGAGED_REACH = :ENGAGED_REACH
            ENGAGED_PAGE_VIEWS = :ENGAGED_PAGE_VIEWS
            MESSAGING_DEEP_CONVERSATION_AND_FOLLOW = :MESSAGING_DEEP_CONVERSATION_AND_FOLLOW
            ADVERTISER_SILOED_VALUE = :ADVERTISER_SILOED_VALUE
            AUTOMATIC_OBJECTIVE = :AUTOMATIC_OBJECTIVE
            MESSAGING_APPOINTMENT_CONVERSION = :MESSAGING_APPOINTMENT_CONVERSION

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The ad platform (meta, tiktok).
          #
          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType#platform
          module Platform
            extend WhopSDK::Internal::Type::Enum

            META = :meta
            TIKTOK = :tiktok

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType#status
          module Status
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :ACTIVE
            PAUSED = :PAUSED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class TiktokAdGroupPlatformConfigType < WhopSDK::Internal::Type::BaseModel
          # @!attribute bid_price
          #   Represents signed double-precision fractional values as specified by
          #   [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).
          #
          #   @return [Float, nil]
          required :bid_price, Float, nil?: true

          # @!attribute bid_type
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BidType, nil]
          required :bid_type,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BidType },
                   nil?: true

          # @!attribute billing_event
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent, nil]
          required :billing_event,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent },
                   nil?: true

          # @!attribute budget_mode
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode, nil]
          required :budget_mode,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode },
                   nil?: true

          # @!attribute conversion_bid_price
          #   Represents signed double-precision fractional values as specified by
          #   [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).
          #
          #   @return [Float, nil]
          required :conversion_bid_price, Float, nil?: true

          # @!attribute identity_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :identity_id, String, nil?: true

          # @!attribute identity_type
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :identity_type, String, nil?: true

          # @!attribute operation_status
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OperationStatus, nil]
          required :operation_status,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OperationStatus },
                   nil?: true

          # @!attribute optimization_event
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :optimization_event, String, nil?: true

          # @!attribute optimization_goal
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal, nil]
          required :optimization_goal,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal },
                   nil?: true

          # @!attribute pacing
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Pacing, nil]
          required :pacing,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Pacing },
                   nil?: true

          # @!attribute pixel_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :pixel_id, String, nil?: true

          # @!attribute placement_type
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::PlacementType, nil]
          required :placement_type,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::PlacementType },
                   nil?: true

          # @!attribute placements
          #
          #   @return [Array<String>, nil]
          required :placements, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute platform
          #   The ad platform (meta, tiktok).
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Platform]
          required :platform,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Platform }

          # @!attribute schedule_end_time
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :schedule_end_time, String, nil?: true

          # @!attribute schedule_start_time
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          required :schedule_start_time, String, nil?: true

          # @!attribute schedule_type
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::ScheduleType, nil]
          required :schedule_type,
                   enum: -> { WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::ScheduleType },
                   nil?: true

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :TiktokAdGroupPlatformConfigType]
          required :typename, const: :TiktokAdGroupPlatformConfigType

          # @!method initialize(bid_price:, bid_type:, billing_event:, budget_mode:, conversion_bid_price:, identity_id:, identity_type:, operation_status:, optimization_event:, optimization_goal:, pacing:, pixel_id:, placement_type:, placements:, platform:, schedule_end_time:, schedule_start_time:, schedule_type:, typename: :TiktokAdGroupPlatformConfigType)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType}
          #   for more details.
          #
          #   TikTok ad group configuration.
          #
          #   @param bid_price [Float, nil] Represents signed double-precision fractional values as specified by [IEEE 754](
          #
          #   @param bid_type [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BidType, nil]
          #
          #   @param billing_event [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent, nil]
          #
          #   @param budget_mode [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode, nil]
          #
          #   @param conversion_bid_price [Float, nil] Represents signed double-precision fractional values as specified by [IEEE 754](
          #
          #   @param identity_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param identity_type [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param operation_status [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OperationStatus, nil]
          #
          #   @param optimization_event [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param optimization_goal [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal, nil]
          #
          #   @param pacing [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Pacing, nil]
          #
          #   @param pixel_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param placement_type [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::PlacementType, nil]
          #
          #   @param placements [Array<String>, nil]
          #
          #   @param platform [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Platform] The ad platform (meta, tiktok).
          #
          #   @param schedule_end_time [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param schedule_start_time [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param schedule_type [Symbol, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::ScheduleType, nil]
          #
          #   @param typename [Symbol, :TiktokAdGroupPlatformConfigType] The typename of this object

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType#bid_type
          module BidType
            extend WhopSDK::Internal::Type::Enum

            BID_TYPE_NO_BID = :BID_TYPE_NO_BID
            BID_TYPE_CUSTOM = :BID_TYPE_CUSTOM

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType#billing_event
          module BillingEvent
            extend WhopSDK::Internal::Type::Enum

            CPC = :CPC
            CPM = :CPM
            OCPM = :OCPM
            CPV = :CPV

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType#budget_mode
          module BudgetMode
            extend WhopSDK::Internal::Type::Enum

            BUDGET_MODE_DAY = :BUDGET_MODE_DAY
            BUDGET_MODE_TOTAL = :BUDGET_MODE_TOTAL
            BUDGET_MODE_DYNAMIC_DAILY_BUDGET = :BUDGET_MODE_DYNAMIC_DAILY_BUDGET

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType#operation_status
          module OperationStatus
            extend WhopSDK::Internal::Type::Enum

            ENABLE = :ENABLE
            DISABLE = :DISABLE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType#optimization_goal
          module OptimizationGoal
            extend WhopSDK::Internal::Type::Enum

            CLICK = :CLICK
            CONVERT = :CONVERT
            INSTALL = :INSTALL
            IN_APP_EVENT = :IN_APP_EVENT
            REACH = :REACH
            SHOW = :SHOW
            VIDEO_VIEW = :VIDEO_VIEW
            ENGAGED_VIEW = :ENGAGED_VIEW
            ENGAGED_VIEW_FIFTEEN = :ENGAGED_VIEW_FIFTEEN
            LEAD_GENERATION = :LEAD_GENERATION
            PREFERRED_LEAD = :PREFERRED_LEAD
            CONVERSATION = :CONVERSATION
            FOLLOWERS = :FOLLOWERS
            PROFILE_VIEWS = :PROFILE_VIEWS
            PAGE_VISIT = :PAGE_VISIT
            VALUE = :VALUE
            AUTOMATIC_VALUE_OPTIMIZATION = :AUTOMATIC_VALUE_OPTIMIZATION
            TRAFFIC_LANDING_PAGE_VIEW = :TRAFFIC_LANDING_PAGE_VIEW
            DESTINATION_VISIT = :DESTINATION_VISIT
            MT_LIVE_ROOM = :MT_LIVE_ROOM
            PRODUCT_CLICK_IN_LIVE = :PRODUCT_CLICK_IN_LIVE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType#pacing
          module Pacing
            extend WhopSDK::Internal::Type::Enum

            PACING_MODE_SMOOTH = :PACING_MODE_SMOOTH
            PACING_MODE_FAST = :PACING_MODE_FAST

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType#placement_type
          module PlacementType
            extend WhopSDK::Internal::Type::Enum

            PLACEMENT_TYPE_AUTOMATIC = :PLACEMENT_TYPE_AUTOMATIC
            PLACEMENT_TYPE_NORMAL = :PLACEMENT_TYPE_NORMAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The ad platform (meta, tiktok).
          #
          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType#platform
          module Platform
            extend WhopSDK::Internal::Type::Enum

            META = :meta
            TIKTOK = :tiktok

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType#schedule_type
          module ScheduleType
            extend WhopSDK::Internal::Type::Enum

            SCHEDULE_START_END = :SCHEDULE_START_END
            SCHEDULE_FROM_NOW = :SCHEDULE_FROM_NOW

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::MetaAdGroupPlatformConfigType, WhopSDK::Models::AdGroupUpdateResponse::PlatformConfig::TiktokAdGroupPlatformConfigType)]
      end

      # Current operational status of the ad group
      #
      # @see WhopSDK::Models::AdGroupUpdateResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        INACTIVE = :inactive
        IN_REVIEW = :in_review
        REJECTED = :rejected
        FLAGGED = :flagged

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
