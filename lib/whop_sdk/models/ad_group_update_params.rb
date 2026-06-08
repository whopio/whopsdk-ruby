# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#update
    class AdGroupUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute budget
      #   Budget amount in dollars.
      #
      #   @return [Float, nil]
      optional :budget, Float, nil?: true

      # @!attribute budget_type
      #   The budget type for an ad campaign or ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdBudgetType, nil]
      optional :budget_type, enum: -> { WhopSDK::AdBudgetType }, nil?: true

      # @!attribute config
      #   Unified ad group configuration (bidding, optimization, targeting).
      #
      #   @return [WhopSDK::Models::AdGroupUpdateParams::Config, nil]
      optional :config, -> { WhopSDK::AdGroupUpdateParams::Config }, nil?: true

      # @!attribute daily_budget
      #   Daily budget in dollars.
      #
      #   @return [Float, nil]
      optional :daily_budget, Float, nil?: true

      # @!attribute name
      #   Human-readable ad group name.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute platform_config
      #   Platform-specific ad group configuration.
      #
      #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig, nil]
      optional :platform_config, -> { WhopSDK::AdGroupUpdateParams::PlatformConfig }, nil?: true

      # @!attribute status
      #   The status of an external ad group.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupStatus, nil]
      optional :status, enum: -> { WhopSDK::AdGroupStatus }, nil?: true

      # @!attribute title
      #   Human-readable ad group title.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(id:, budget: nil, budget_type: nil, config: nil, daily_budget: nil, name: nil, platform_config: nil, status: nil, title: nil, request_options: {})
      #   @param id [String]
      #
      #   @param budget [Float, nil] Budget amount in dollars.
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdBudgetType, nil] The budget type for an ad campaign or ad group.
      #
      #   @param config [WhopSDK::Models::AdGroupUpdateParams::Config, nil] Unified ad group configuration (bidding, optimization, targeting).
      #
      #   @param daily_budget [Float, nil] Daily budget in dollars.
      #
      #   @param name [String, nil] Human-readable ad group name.
      #
      #   @param platform_config [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig, nil] Platform-specific ad group configuration.
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroupStatus, nil] The status of an external ad group.
      #
      #   @param title [String, nil] Human-readable ad group title.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Config < WhopSDK::Internal::Type::BaseModel
        # @!attribute bid_amount
        #   Bid cap amount in cents. Used when bid_strategy is bid_cap or cost_cap.
        #
        #   @return [Integer, nil]
        optional :bid_amount, Integer, nil?: true

        # @!attribute bid_strategy
        #   Bid strategy: lowest_cost, bid_cap, or cost_cap.
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::BidStrategy, nil]
        optional :bid_strategy, enum: -> { WhopSDK::AdGroupUpdateParams::Config::BidStrategy }, nil?: true

        # @!attribute billing_event
        #   How you are billed (e.g., impressions, clicks).
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::BillingEvent, nil]
        optional :billing_event, enum: -> { WhopSDK::AdGroupUpdateParams::Config::BillingEvent }, nil?: true

        # @!attribute end_time
        #   Scheduled end time (ISO8601). Required for lifetime budgets.
        #
        #   @return [String, nil]
        optional :end_time, String, nil?: true

        # @!attribute frequency_cap
        #   Maximum number of times to show ads to each person in the frequency interval.
        #
        #   @return [Integer, nil]
        optional :frequency_cap, Integer, nil?: true

        # @!attribute frequency_cap_interval_days
        #   Number of days for the frequency cap interval.
        #
        #   @return [Integer, nil]
        optional :frequency_cap_interval_days, Integer, nil?: true

        # @!attribute optimization_goal
        #   What the ad group optimizes for (e.g., conversions, link_clicks, reach).
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::OptimizationGoal, nil]
        optional :optimization_goal,
                 enum: -> { WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal },
                 nil?: true

        # @!attribute pacing
        #   Budget pacing: standard (even) or accelerated (fast).
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::Pacing, nil]
        optional :pacing, enum: -> { WhopSDK::AdGroupUpdateParams::Config::Pacing }, nil?: true

        # @!attribute start_time
        #   Scheduled start time (ISO8601).
        #
        #   @return [String, nil]
        optional :start_time, String, nil?: true

        # @!attribute targeting
        #   Audience targeting settings (demographics, geo, interests, audiences, devices).
        #
        #   @return [WhopSDK::Models::AdGroupUpdateParams::Config::Targeting, nil]
        optional :targeting, -> { WhopSDK::AdGroupUpdateParams::Config::Targeting }, nil?: true

        # @!method initialize(bid_amount: nil, bid_strategy: nil, billing_event: nil, end_time: nil, frequency_cap: nil, frequency_cap_interval_days: nil, optimization_goal: nil, pacing: nil, start_time: nil, targeting: nil)
        #   Unified ad group configuration (bidding, optimization, targeting).
        #
        #   @param bid_amount [Integer, nil] Bid cap amount in cents. Used when bid_strategy is bid_cap or cost_cap.
        #
        #   @param bid_strategy [Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::BidStrategy, nil] Bid strategy: lowest_cost, bid_cap, or cost_cap.
        #
        #   @param billing_event [Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::BillingEvent, nil] How you are billed (e.g., impressions, clicks).
        #
        #   @param end_time [String, nil] Scheduled end time (ISO8601). Required for lifetime budgets.
        #
        #   @param frequency_cap [Integer, nil] Maximum number of times to show ads to each person in the frequency interval.
        #
        #   @param frequency_cap_interval_days [Integer, nil] Number of days for the frequency cap interval.
        #
        #   @param optimization_goal [Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::OptimizationGoal, nil] What the ad group optimizes for (e.g., conversions, link_clicks, reach).
        #
        #   @param pacing [Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::Pacing, nil] Budget pacing: standard (even) or accelerated (fast).
        #
        #   @param start_time [String, nil] Scheduled start time (ISO8601).
        #
        #   @param targeting [WhopSDK::Models::AdGroupUpdateParams::Config::Targeting, nil] Audience targeting settings (demographics, geo, interests, audiences, devices).

        # Bid strategy: lowest_cost, bid_cap, or cost_cap.
        #
        # @see WhopSDK::Models::AdGroupUpdateParams::Config#bid_strategy
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
        # @see WhopSDK::Models::AdGroupUpdateParams::Config#billing_event
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
        # @see WhopSDK::Models::AdGroupUpdateParams::Config#optimization_goal
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
        # @see WhopSDK::Models::AdGroupUpdateParams::Config#pacing
        module Pacing
          extend WhopSDK::Internal::Type::Enum

          STANDARD = :standard
          ACCELERATED = :accelerated

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AdGroupUpdateParams::Config#targeting
        class Targeting < WhopSDK::Internal::Type::BaseModel
          # @!attribute age_max
          #   Maximum age for demographic targeting.
          #
          #   @return [Integer, nil]
          optional :age_max, Integer, nil?: true

          # @!attribute age_min
          #   Minimum age for demographic targeting.
          #
          #   @return [Integer, nil]
          optional :age_min, Integer, nil?: true

          # @!attribute countries
          #   ISO 3166-1 alpha-2 country codes to target.
          #
          #   @return [Array<String>, nil]
          optional :countries, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute device_platforms
          #   Device platforms to target.
          #
          #   @return [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::Targeting::DevicePlatform>, nil]
          optional :device_platforms,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroupUpdateParams::Config::Targeting::DevicePlatform]
                   },
                   nil?: true

          # @!attribute exclude_audience_ids
          #   Platform audience IDs to exclude.
          #
          #   @return [Array<String>, nil]
          optional :exclude_audience_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute genders
          #   Genders to target.
          #
          #   @return [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::Targeting::Gender>, nil]
          optional :genders,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroupUpdateParams::Config::Targeting::Gender]
                   },
                   nil?: true

          # @!attribute include_audience_ids
          #   Platform audience IDs to include.
          #
          #   @return [Array<String>, nil]
          optional :include_audience_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute interest_ids
          #   Platform-specific interest IDs to target.
          #
          #   @return [Array<String>, nil]
          optional :interest_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute languages
          #   Language codes to target.
          #
          #   @return [Array<String>, nil]
          optional :languages, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute placement_type
          #   Placement strategy for ad delivery.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::Targeting::PlacementType, nil]
          optional :placement_type,
                   enum: -> { WhopSDK::AdGroupUpdateParams::Config::Targeting::PlacementType },
                   nil?: true

          # @!method initialize(age_max: nil, age_min: nil, countries: nil, device_platforms: nil, exclude_audience_ids: nil, genders: nil, include_audience_ids: nil, interest_ids: nil, languages: nil, placement_type: nil)
          #   Audience targeting settings (demographics, geo, interests, audiences, devices).
          #
          #   @param age_max [Integer, nil] Maximum age for demographic targeting.
          #
          #   @param age_min [Integer, nil] Minimum age for demographic targeting.
          #
          #   @param countries [Array<String>, nil] ISO 3166-1 alpha-2 country codes to target.
          #
          #   @param device_platforms [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::Targeting::DevicePlatform>, nil] Device platforms to target.
          #
          #   @param exclude_audience_ids [Array<String>, nil] Platform audience IDs to exclude.
          #
          #   @param genders [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::Targeting::Gender>, nil] Genders to target.
          #
          #   @param include_audience_ids [Array<String>, nil] Platform audience IDs to include.
          #
          #   @param interest_ids [Array<String>, nil] Platform-specific interest IDs to target.
          #
          #   @param languages [Array<String>, nil] Language codes to target.
          #
          #   @param placement_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::Config::Targeting::PlacementType, nil] Placement strategy for ad delivery.

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
          # @see WhopSDK::Models::AdGroupUpdateParams::Config::Targeting#placement_type
          module PlacementType
            extend WhopSDK::Internal::Type::Enum

            AUTOMATIC = :automatic
            MANUAL = :manual

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class PlatformConfig < WhopSDK::Internal::Type::BaseModel
        # @!attribute meta
        #   Meta (Facebook/Instagram) ad set configuration.
        #
        #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta, nil]
        optional :meta, -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta }, nil?: true

        # @!attribute tiktok
        #   TikTok ad group configuration.
        #
        #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok, nil]
        optional :tiktok, -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok }, nil?: true

        # @!method initialize(meta: nil, tiktok: nil)
        #   Platform-specific ad group configuration.
        #
        #   @param meta [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta, nil] Meta (Facebook/Instagram) ad set configuration.
        #
        #   @param tiktok [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok, nil] TikTok ad group configuration.

        # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig#meta
        class Meta < WhopSDK::Internal::Type::BaseModel
          # @!attribute android_devices
          #
          #   @return [Array<String>, nil]
          optional :android_devices, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute attribution_setting
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :attribution_setting, String, nil?: true

          # @!attribute attribution_spec
          #   Conversion attribution windows.
          #
          #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::AttributionSpec>, nil]
          optional :attribution_spec,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::AttributionSpec]
                   },
                   nil?: true

          # @!attribute audience_network_positions
          #
          #   @return [Array<String>, nil]
          optional :audience_network_positions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute audience_type
          #   Audience type for retargeting.
          #
          #   @return [String, nil]
          optional :audience_type, String, nil?: true

          # @!attribute bid_amount
          #   Bid amount in cents.
          #
          #   @return [Integer, nil]
          optional :bid_amount, Integer, nil?: true

          # @!attribute bid_strategy
          #   Meta bid strategy.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy, nil]
          optional :bid_strategy,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy },
                   nil?: true

          # @!attribute billing_event
          #   How you are billed on Meta.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent, nil]
          optional :billing_event,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent },
                   nil?: true

          # @!attribute brand_safety_content_filter_levels
          #
          #   @return [Array<String>, nil]
          optional :brand_safety_content_filter_levels, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute budget_remaining
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :budget_remaining, String, nil?: true

          # @!attribute cost_per_result_goal
          #   Represents signed double-precision fractional values as specified by
          #   [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).
          #
          #   @return [Float, nil]
          optional :cost_per_result_goal, Float, nil?: true

          # @!attribute created_time
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :created_time, String, nil?: true

          # @!attribute daily_budget
          #   Daily budget in cents.
          #
          #   @return [Integer, nil]
          optional :daily_budget, Integer, nil?: true

          # @!attribute daily_min_spend_target
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :daily_min_spend_target, String, nil?: true

          # @!attribute daily_spend_cap
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :daily_spend_cap, String, nil?: true

          # @!attribute destination_type
          #   Where ads in this ad set direct people.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType, nil]
          optional :destination_type,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType },
                   nil?: true

          # @!attribute dsa_beneficiary
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :dsa_beneficiary, String, nil?: true

          # @!attribute dsa_payor
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :dsa_payor, String, nil?: true

          # @!attribute end_time
          #   End time (ISO8601). Required for lifetime budgets.
          #
          #   @return [String, nil]
          optional :end_time, String, nil?: true

          # @!attribute excluded_geo_locations
          #   Geo locations to exclude.
          #
          #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations, nil]
          optional :excluded_geo_locations,
                   -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations },
                   nil?: true

          # @!attribute facebook_positions
          #   Facebook ad placements (feed, reels, stories, etc.).
          #
          #   @return [Array<String>, nil]
          optional :facebook_positions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute frequency_control_count
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          optional :frequency_control_count, Integer, nil?: true

          # @!attribute frequency_control_days
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          optional :frequency_control_days, Integer, nil?: true

          # @!attribute frequency_control_type
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :frequency_control_type, String, nil?: true

          # @!attribute geo_cities
          #
          #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoCity>, nil]
          optional :geo_cities,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoCity]
                   },
                   nil?: true

          # @!attribute geo_locations
          #   Geo targeting (countries, regions, cities, zips).
          #
          #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations, nil]
          optional :geo_locations,
                   -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations },
                   nil?: true

          # @!attribute geo_regions
          #
          #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoRegion>, nil]
          optional :geo_regions,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoRegion]
                   },
                   nil?: true

          # @!attribute geo_zips
          #
          #   @return [Array<String>, nil]
          optional :geo_zips, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute instagram_actor_id
          #   Instagram account ID for this ad set.
          #
          #   @return [String, nil]
          optional :instagram_actor_id, String, nil?: true

          # @!attribute instagram_positions
          #   Instagram ad placements (stream, story, reels, etc.).
          #
          #   @return [Array<String>, nil]
          optional :instagram_positions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute ios_devices
          #
          #   @return [Array<String>, nil]
          optional :ios_devices, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute is_dynamic_creative
          #   Represents `true` or `false` values.
          #
          #   @return [Boolean, nil]
          optional :is_dynamic_creative, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute lead_conversion_location
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation, nil]
          optional :lead_conversion_location,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation },
                   nil?: true

          # @!attribute lead_form_config
          #   Configuration for a Meta lead gen instant form.
          #
          #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig, nil]
          optional :lead_form_config,
                   -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig },
                   nil?: true

          # @!attribute lead_gen_form_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :lead_gen_form_id, String, nil?: true

          # @!attribute lifetime_budget
          #   Lifetime budget in cents.
          #
          #   @return [Integer, nil]
          optional :lifetime_budget, Integer, nil?: true

          # @!attribute lifetime_min_spend_target
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :lifetime_min_spend_target, String, nil?: true

          # @!attribute lifetime_spend_cap
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :lifetime_spend_cap, String, nil?: true

          # @!attribute location_types
          #
          #   @return [Array<String>, nil]
          optional :location_types, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute messenger_positions
          #
          #   @return [Array<String>, nil]
          optional :messenger_positions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute optimization_goal
          #   What this ad set optimizes for on Meta.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal, nil]
          optional :optimization_goal,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal },
                   nil?: true

          # @!attribute page_id
          #   Facebook Page ID for this ad set.
          #
          #   @return [String, nil]
          optional :page_id, String, nil?: true

          # @!attribute pixel_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :pixel_id, String, nil?: true

          # @!attribute promoted_object
          #   The object this ad set promotes (pixel, page, etc.).
          #
          #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::PromotedObject, nil]
          optional :promoted_object,
                   -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::PromotedObject },
                   nil?: true

          # @!attribute publisher_platforms
          #   Platforms to publish on (facebook, instagram, messenger, audience_network).
          #
          #   @return [Array<String>, nil]
          optional :publisher_platforms, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute source_adset_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :source_adset_id, String, nil?: true

          # @!attribute start_time
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :start_time, String, nil?: true

          # @!attribute status
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::Status, nil]
          optional :status,
                   enum: -> {
                     WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::Status
                   },
                   nil?: true

          # @!attribute targeting_automation
          #   Advantage+ audience expansion settings.
          #
          #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::TargetingAutomation, nil]
          optional :targeting_automation,
                   -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::TargetingAutomation },
                   nil?: true

          # @!attribute threads_positions
          #
          #   @return [Array<String>, nil]
          optional :threads_positions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute updated_time
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :updated_time, String, nil?: true

          # @!attribute user_device
          #
          #   @return [Array<String>, nil]
          optional :user_device, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute user_os
          #
          #   @return [Array<String>, nil]
          optional :user_os, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute whatsapp_phone_number
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :whatsapp_phone_number, String, nil?: true

          # @!attribute whatsapp_positions
          #
          #   @return [Array<String>, nil]
          optional :whatsapp_positions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!method initialize(android_devices: nil, attribution_setting: nil, attribution_spec: nil, audience_network_positions: nil, audience_type: nil, bid_amount: nil, bid_strategy: nil, billing_event: nil, brand_safety_content_filter_levels: nil, budget_remaining: nil, cost_per_result_goal: nil, created_time: nil, daily_budget: nil, daily_min_spend_target: nil, daily_spend_cap: nil, destination_type: nil, dsa_beneficiary: nil, dsa_payor: nil, end_time: nil, excluded_geo_locations: nil, facebook_positions: nil, frequency_control_count: nil, frequency_control_days: nil, frequency_control_type: nil, geo_cities: nil, geo_locations: nil, geo_regions: nil, geo_zips: nil, instagram_actor_id: nil, instagram_positions: nil, ios_devices: nil, is_dynamic_creative: nil, lead_conversion_location: nil, lead_form_config: nil, lead_gen_form_id: nil, lifetime_budget: nil, lifetime_min_spend_target: nil, lifetime_spend_cap: nil, location_types: nil, messenger_positions: nil, optimization_goal: nil, page_id: nil, pixel_id: nil, promoted_object: nil, publisher_platforms: nil, source_adset_id: nil, start_time: nil, status: nil, targeting_automation: nil, threads_positions: nil, updated_time: nil, user_device: nil, user_os: nil, whatsapp_phone_number: nil, whatsapp_positions: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta} for more details.
          #
          #   Meta (Facebook/Instagram) ad set configuration.
          #
          #   @param android_devices [Array<String>, nil]
          #
          #   @param attribution_setting [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param attribution_spec [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::AttributionSpec>, nil] Conversion attribution windows.
          #
          #   @param audience_network_positions [Array<String>, nil]
          #
          #   @param audience_type [String, nil] Audience type for retargeting.
          #
          #   @param bid_amount [Integer, nil] Bid amount in cents.
          #
          #   @param bid_strategy [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy, nil] Meta bid strategy.
          #
          #   @param billing_event [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent, nil] How you are billed on Meta.
          #
          #   @param brand_safety_content_filter_levels [Array<String>, nil]
          #
          #   @param budget_remaining [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param cost_per_result_goal [Float, nil] Represents signed double-precision fractional values as specified by [IEEE 754](
          #
          #   @param created_time [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param daily_budget [Integer, nil] Daily budget in cents.
          #
          #   @param daily_min_spend_target [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param daily_spend_cap [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param destination_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType, nil] Where ads in this ad set direct people.
          #
          #   @param dsa_beneficiary [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param dsa_payor [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param end_time [String, nil] End time (ISO8601). Required for lifetime budgets.
          #
          #   @param excluded_geo_locations [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations, nil] Geo locations to exclude.
          #
          #   @param facebook_positions [Array<String>, nil] Facebook ad placements (feed, reels, stories, etc.).
          #
          #   @param frequency_control_count [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param frequency_control_days [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param frequency_control_type [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param geo_cities [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoCity>, nil]
          #
          #   @param geo_locations [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations, nil] Geo targeting (countries, regions, cities, zips).
          #
          #   @param geo_regions [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoRegion>, nil]
          #
          #   @param geo_zips [Array<String>, nil]
          #
          #   @param instagram_actor_id [String, nil] Instagram account ID for this ad set.
          #
          #   @param instagram_positions [Array<String>, nil] Instagram ad placements (stream, story, reels, etc.).
          #
          #   @param ios_devices [Array<String>, nil]
          #
          #   @param is_dynamic_creative [Boolean, nil] Represents `true` or `false` values.
          #
          #   @param lead_conversion_location [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation, nil]
          #
          #   @param lead_form_config [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig, nil] Configuration for a Meta lead gen instant form.
          #
          #   @param lead_gen_form_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param lifetime_budget [Integer, nil] Lifetime budget in cents.
          #
          #   @param lifetime_min_spend_target [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param lifetime_spend_cap [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param location_types [Array<String>, nil]
          #
          #   @param messenger_positions [Array<String>, nil]
          #
          #   @param optimization_goal [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal, nil] What this ad set optimizes for on Meta.
          #
          #   @param page_id [String, nil] Facebook Page ID for this ad set.
          #
          #   @param pixel_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param promoted_object [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::PromotedObject, nil] The object this ad set promotes (pixel, page, etc.).
          #
          #   @param publisher_platforms [Array<String>, nil] Platforms to publish on (facebook, instagram, messenger, audience_network).
          #
          #   @param source_adset_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param start_time [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param status [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::Status, nil]
          #
          #   @param targeting_automation [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::TargetingAutomation, nil] Advantage+ audience expansion settings.
          #
          #   @param threads_positions [Array<String>, nil]
          #
          #   @param updated_time [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param user_device [Array<String>, nil]
          #
          #   @param user_os [Array<String>, nil]
          #
          #   @param whatsapp_phone_number [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param whatsapp_positions [Array<String>, nil]

          class AttributionSpec < WhopSDK::Internal::Type::BaseModel
            # @!attribute event_type
            #   Attribution event type (e.g., CLICK_THROUGH, VIEW_THROUGH).
            #
            #   @return [String]
            required :event_type, String

            # @!attribute window_days
            #   Attribution window in days (1, 7, 28).
            #
            #   @return [Integer]
            required :window_days, Integer

            # @!method initialize(event_type:, window_days:)
            #   Meta conversion attribution window.
            #
            #   @param event_type [String] Attribution event type (e.g., CLICK_THROUGH, VIEW_THROUGH).
            #
            #   @param window_days [Integer] Attribution window in days (1, 7, 28).
          end

          # Meta bid strategy.
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#bid_strategy
          module BidStrategy
            extend WhopSDK::Internal::Type::Enum

            LOWEST_COST_WITHOUT_CAP = :LOWEST_COST_WITHOUT_CAP
            LOWEST_COST_WITH_BID_CAP = :LOWEST_COST_WITH_BID_CAP
            COST_CAP = :COST_CAP
            LOWEST_COST_WITH_MIN_ROAS = :LOWEST_COST_WITH_MIN_ROAS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # How you are billed on Meta.
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#billing_event
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

          # Where ads in this ad set direct people.
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#destination_type
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
            LEAD_FORM_MESSENGER = :LEAD_FORM_MESSENGER
            WEBSITE_AND_LEAD_FORM = :WEBSITE_AND_LEAD_FORM
            WEBSITE_AND_PHONE_CALL = :WEBSITE_AND_PHONE_CALL
            BROADCAST_CHANNEL = :BROADCAST_CHANNEL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#excluded_geo_locations
          class ExcludedGeoLocations < WhopSDK::Internal::Type::BaseModel
            # @!attribute cities
            #   City targets.
            #
            #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::City>, nil]
            optional :cities,
                     -> {
                       WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::City]
                     },
                     nil?: true

            # @!attribute countries
            #   ISO 3166-1 alpha-2 country codes.
            #
            #   @return [Array<String>, nil]
            optional :countries, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute location_types
            #   Location types (home, recent, travel_in).
            #
            #   @return [Array<String>, nil]
            optional :location_types, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute regions
            #   Region/state targets.
            #
            #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Region>, nil]
            optional :regions,
                     -> {
                       WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Region]
                     },
                     nil?: true

            # @!attribute zips
            #   Zip/postal code targets.
            #
            #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Zip>, nil]
            optional :zips,
                     -> {
                       WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Zip]
                     },
                     nil?: true

            # @!method initialize(cities: nil, countries: nil, location_types: nil, regions: nil, zips: nil)
            #   Geo locations to exclude.
            #
            #   @param cities [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::City>, nil] City targets.
            #
            #   @param countries [Array<String>, nil] ISO 3166-1 alpha-2 country codes.
            #
            #   @param location_types [Array<String>, nil] Location types (home, recent, travel_in).
            #
            #   @param regions [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Region>, nil] Region/state targets.
            #
            #   @param zips [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Zip>, nil] Zip/postal code targets.

            class City < WhopSDK::Internal::Type::BaseModel
              # @!attribute key
              #   Meta geo target key/ID.
              #
              #   @return [String]
              required :key, String

              # @!attribute country
              #   Country code for this entry.
              #
              #   @return [String, nil]
              optional :country, String, nil?: true

              # @!attribute name
              #   Display name.
              #
              #   @return [String, nil]
              optional :name, String, nil?: true

              # @!attribute radius
              #   Radius in miles (cities only).
              #
              #   @return [Integer, nil]
              optional :radius, Integer, nil?: true

              # @!method initialize(key:, country: nil, name: nil, radius: nil)
              #   A Meta geo target entry (region, city, or zip).
              #
              #   @param key [String] Meta geo target key/ID.
              #
              #   @param country [String, nil] Country code for this entry.
              #
              #   @param name [String, nil] Display name.
              #
              #   @param radius [Integer, nil] Radius in miles (cities only).
            end

            class Region < WhopSDK::Internal::Type::BaseModel
              # @!attribute key
              #   Meta geo target key/ID.
              #
              #   @return [String]
              required :key, String

              # @!attribute country
              #   Country code for this entry.
              #
              #   @return [String, nil]
              optional :country, String, nil?: true

              # @!attribute name
              #   Display name.
              #
              #   @return [String, nil]
              optional :name, String, nil?: true

              # @!attribute radius
              #   Radius in miles (cities only).
              #
              #   @return [Integer, nil]
              optional :radius, Integer, nil?: true

              # @!method initialize(key:, country: nil, name: nil, radius: nil)
              #   A Meta geo target entry (region, city, or zip).
              #
              #   @param key [String] Meta geo target key/ID.
              #
              #   @param country [String, nil] Country code for this entry.
              #
              #   @param name [String, nil] Display name.
              #
              #   @param radius [Integer, nil] Radius in miles (cities only).
            end

            class Zip < WhopSDK::Internal::Type::BaseModel
              # @!attribute key
              #   Meta geo target key/ID.
              #
              #   @return [String]
              required :key, String

              # @!attribute country
              #   Country code for this entry.
              #
              #   @return [String, nil]
              optional :country, String, nil?: true

              # @!attribute name
              #   Display name.
              #
              #   @return [String, nil]
              optional :name, String, nil?: true

              # @!attribute radius
              #   Radius in miles (cities only).
              #
              #   @return [Integer, nil]
              optional :radius, Integer, nil?: true

              # @!method initialize(key:, country: nil, name: nil, radius: nil)
              #   A Meta geo target entry (region, city, or zip).
              #
              #   @param key [String] Meta geo target key/ID.
              #
              #   @param country [String, nil] Country code for this entry.
              #
              #   @param name [String, nil] Display name.
              #
              #   @param radius [Integer, nil] Radius in miles (cities only).
            end
          end

          class GeoCity < WhopSDK::Internal::Type::BaseModel
            # @!attribute key
            #   Meta geo target key/ID.
            #
            #   @return [String]
            required :key, String

            # @!attribute country
            #   Country code for this entry.
            #
            #   @return [String, nil]
            optional :country, String, nil?: true

            # @!attribute name
            #   Display name.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute radius
            #   Radius in miles (cities only).
            #
            #   @return [Integer, nil]
            optional :radius, Integer, nil?: true

            # @!method initialize(key:, country: nil, name: nil, radius: nil)
            #   A Meta geo target entry (region, city, or zip).
            #
            #   @param key [String] Meta geo target key/ID.
            #
            #   @param country [String, nil] Country code for this entry.
            #
            #   @param name [String, nil] Display name.
            #
            #   @param radius [Integer, nil] Radius in miles (cities only).
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#geo_locations
          class GeoLocations < WhopSDK::Internal::Type::BaseModel
            # @!attribute cities
            #   City targets.
            #
            #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::City>, nil]
            optional :cities,
                     -> {
                       WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::City]
                     },
                     nil?: true

            # @!attribute countries
            #   ISO 3166-1 alpha-2 country codes.
            #
            #   @return [Array<String>, nil]
            optional :countries, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute location_types
            #   Location types (home, recent, travel_in).
            #
            #   @return [Array<String>, nil]
            optional :location_types, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute regions
            #   Region/state targets.
            #
            #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Region>, nil]
            optional :regions,
                     -> {
                       WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Region]
                     },
                     nil?: true

            # @!attribute zips
            #   Zip/postal code targets.
            #
            #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Zip>, nil]
            optional :zips,
                     -> {
                       WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Zip]
                     },
                     nil?: true

            # @!method initialize(cities: nil, countries: nil, location_types: nil, regions: nil, zips: nil)
            #   Geo targeting (countries, regions, cities, zips).
            #
            #   @param cities [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::City>, nil] City targets.
            #
            #   @param countries [Array<String>, nil] ISO 3166-1 alpha-2 country codes.
            #
            #   @param location_types [Array<String>, nil] Location types (home, recent, travel_in).
            #
            #   @param regions [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Region>, nil] Region/state targets.
            #
            #   @param zips [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Zip>, nil] Zip/postal code targets.

            class City < WhopSDK::Internal::Type::BaseModel
              # @!attribute key
              #   Meta geo target key/ID.
              #
              #   @return [String]
              required :key, String

              # @!attribute country
              #   Country code for this entry.
              #
              #   @return [String, nil]
              optional :country, String, nil?: true

              # @!attribute name
              #   Display name.
              #
              #   @return [String, nil]
              optional :name, String, nil?: true

              # @!attribute radius
              #   Radius in miles (cities only).
              #
              #   @return [Integer, nil]
              optional :radius, Integer, nil?: true

              # @!method initialize(key:, country: nil, name: nil, radius: nil)
              #   A Meta geo target entry (region, city, or zip).
              #
              #   @param key [String] Meta geo target key/ID.
              #
              #   @param country [String, nil] Country code for this entry.
              #
              #   @param name [String, nil] Display name.
              #
              #   @param radius [Integer, nil] Radius in miles (cities only).
            end

            class Region < WhopSDK::Internal::Type::BaseModel
              # @!attribute key
              #   Meta geo target key/ID.
              #
              #   @return [String]
              required :key, String

              # @!attribute country
              #   Country code for this entry.
              #
              #   @return [String, nil]
              optional :country, String, nil?: true

              # @!attribute name
              #   Display name.
              #
              #   @return [String, nil]
              optional :name, String, nil?: true

              # @!attribute radius
              #   Radius in miles (cities only).
              #
              #   @return [Integer, nil]
              optional :radius, Integer, nil?: true

              # @!method initialize(key:, country: nil, name: nil, radius: nil)
              #   A Meta geo target entry (region, city, or zip).
              #
              #   @param key [String] Meta geo target key/ID.
              #
              #   @param country [String, nil] Country code for this entry.
              #
              #   @param name [String, nil] Display name.
              #
              #   @param radius [Integer, nil] Radius in miles (cities only).
            end

            class Zip < WhopSDK::Internal::Type::BaseModel
              # @!attribute key
              #   Meta geo target key/ID.
              #
              #   @return [String]
              required :key, String

              # @!attribute country
              #   Country code for this entry.
              #
              #   @return [String, nil]
              optional :country, String, nil?: true

              # @!attribute name
              #   Display name.
              #
              #   @return [String, nil]
              optional :name, String, nil?: true

              # @!attribute radius
              #   Radius in miles (cities only).
              #
              #   @return [Integer, nil]
              optional :radius, Integer, nil?: true

              # @!method initialize(key:, country: nil, name: nil, radius: nil)
              #   A Meta geo target entry (region, city, or zip).
              #
              #   @param key [String] Meta geo target key/ID.
              #
              #   @param country [String, nil] Country code for this entry.
              #
              #   @param name [String, nil] Display name.
              #
              #   @param radius [Integer, nil] Radius in miles (cities only).
            end
          end

          class GeoRegion < WhopSDK::Internal::Type::BaseModel
            # @!attribute key
            #   Meta geo target key/ID.
            #
            #   @return [String]
            required :key, String

            # @!attribute country
            #   Country code for this entry.
            #
            #   @return [String, nil]
            optional :country, String, nil?: true

            # @!attribute name
            #   Display name.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute radius
            #   Radius in miles (cities only).
            #
            #   @return [Integer, nil]
            optional :radius, Integer, nil?: true

            # @!method initialize(key:, country: nil, name: nil, radius: nil)
            #   A Meta geo target entry (region, city, or zip).
            #
            #   @param key [String] Meta geo target key/ID.
            #
            #   @param country [String, nil] Country code for this entry.
            #
            #   @param name [String, nil] Display name.
            #
            #   @param radius [Integer, nil] Radius in miles (cities only).
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#lead_conversion_location
          module LeadConversionLocation
            extend WhopSDK::Internal::Type::Enum

            WEBSITE = :website
            INSTANT_FORMS = :instant_forms
            WEBSITE_AND_INSTANT_FORMS = :website_and_instant_forms
            MESSENGER = :messenger
            INSTAGRAM = :instagram
            CALLS = :calls
            APP = :app

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#lead_form_config
          class LeadFormConfig < WhopSDK::Internal::Type::BaseModel
            # @!attribute name
            #   Name of the lead form.
            #
            #   @return [String]
            required :name, String

            # @!attribute privacy_policy_url
            #   URL to your privacy policy. Required by Meta.
            #
            #   @return [String]
            required :privacy_policy_url, String

            # @!attribute questions
            #   Questions to ask on the form.
            #
            #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question>]
            required :questions,
                     -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question] }

            # @!attribute background_image_source
            #   Background image source: from_ad or custom.
            #
            #   @return [String, nil]
            optional :background_image_source, String, nil?: true

            # @!attribute background_image_url
            #   URL of custom background image.
            #
            #   @return [String, nil]
            optional :background_image_url, String, nil?: true

            # @!attribute conditional_logic_enabled
            #   Whether conditional logic is enabled for questions.
            #
            #   @return [Boolean, nil]
            optional :conditional_logic_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

            # @!attribute context_card_button_text
            #   CTA button text on the greeting card.
            #
            #   @return [String, nil]
            optional :context_card_button_text, String, nil?: true

            # @!attribute context_card_content
            #   Optional greeting card bullet points.
            #
            #   @return [Array<String>, nil]
            optional :context_card_content, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute context_card_style
            #   Greeting layout: PARAGRAPH_STYLE or LIST_STYLE.
            #
            #   @return [String, nil]
            optional :context_card_style, String, nil?: true

            # @!attribute context_card_title
            #   Optional greeting card title.
            #
            #   @return [String, nil]
            optional :context_card_title, String, nil?: true

            # @!attribute custom_disclaimer_body
            #   Custom disclaimer body text.
            #
            #   @return [String, nil]
            optional :custom_disclaimer_body, String, nil?: true

            # @!attribute custom_disclaimer_checkboxes
            #   Consent checkboxes for the custom disclaimer.
            #
            #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::CustomDisclaimerCheckbox>, nil]
            optional :custom_disclaimer_checkboxes,
                     -> {
                       WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::CustomDisclaimerCheckbox]
                     },
                     nil?: true

            # @!attribute custom_disclaimer_title
            #   Custom disclaimer section title.
            #
            #   @return [String, nil]
            optional :custom_disclaimer_title, String, nil?: true

            # @!attribute form_type
            #   Form type: more_volume, higher_intent, or rich_creative.
            #
            #   @return [String, nil]
            optional :form_type, String, nil?: true

            # @!attribute messenger_enabled
            #   Enable Messenger follow-up after form submission.
            #
            #   @return [Boolean, nil]
            optional :messenger_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

            # @!attribute phone_verification_enabled
            #   Require phone number verification via OTP (higher_intent only).
            #
            #   @return [Boolean, nil]
            optional :phone_verification_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

            # @!attribute privacy_policy_link_text
            #   Custom link text for privacy policy (max 70 chars).
            #
            #   @return [String, nil]
            optional :privacy_policy_link_text, String, nil?: true

            # @!attribute question_page_custom_headline
            #   Custom headline for the questions page.
            #
            #   @return [String, nil]
            optional :question_page_custom_headline, String, nil?: true

            # @!attribute rich_creative_headline
            #   Headline for rich creative form intro.
            #
            #   @return [String, nil]
            optional :rich_creative_headline, String, nil?: true

            # @!attribute rich_creative_overview
            #   Overview description for rich creative form intro.
            #
            #   @return [String, nil]
            optional :rich_creative_overview, String, nil?: true

            # @!attribute rich_creative_url
            #   Uploaded image URL for rich creative form type.
            #
            #   @return [String, nil]
            optional :rich_creative_url, String, nil?: true

            # @!attribute thank_you_pages
            #   Thank you / ending pages (supports multiple for conditional routing).
            #
            #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::ThankYouPage>, nil]
            optional :thank_you_pages,
                     -> {
                       WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::ThankYouPage]
                     },
                     nil?: true

            # @!method initialize(name:, privacy_policy_url:, questions:, background_image_source: nil, background_image_url: nil, conditional_logic_enabled: nil, context_card_button_text: nil, context_card_content: nil, context_card_style: nil, context_card_title: nil, custom_disclaimer_body: nil, custom_disclaimer_checkboxes: nil, custom_disclaimer_title: nil, form_type: nil, messenger_enabled: nil, phone_verification_enabled: nil, privacy_policy_link_text: nil, question_page_custom_headline: nil, rich_creative_headline: nil, rich_creative_overview: nil, rich_creative_url: nil, thank_you_pages: nil)
            #   Configuration for a Meta lead gen instant form.
            #
            #   @param name [String] Name of the lead form.
            #
            #   @param privacy_policy_url [String] URL to your privacy policy. Required by Meta.
            #
            #   @param questions [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question>] Questions to ask on the form.
            #
            #   @param background_image_source [String, nil] Background image source: from_ad or custom.
            #
            #   @param background_image_url [String, nil] URL of custom background image.
            #
            #   @param conditional_logic_enabled [Boolean, nil] Whether conditional logic is enabled for questions.
            #
            #   @param context_card_button_text [String, nil] CTA button text on the greeting card.
            #
            #   @param context_card_content [Array<String>, nil] Optional greeting card bullet points.
            #
            #   @param context_card_style [String, nil] Greeting layout: PARAGRAPH_STYLE or LIST_STYLE.
            #
            #   @param context_card_title [String, nil] Optional greeting card title.
            #
            #   @param custom_disclaimer_body [String, nil] Custom disclaimer body text.
            #
            #   @param custom_disclaimer_checkboxes [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::CustomDisclaimerCheckbox>, nil] Consent checkboxes for the custom disclaimer.
            #
            #   @param custom_disclaimer_title [String, nil] Custom disclaimer section title.
            #
            #   @param form_type [String, nil] Form type: more_volume, higher_intent, or rich_creative.
            #
            #   @param messenger_enabled [Boolean, nil] Enable Messenger follow-up after form submission.
            #
            #   @param phone_verification_enabled [Boolean, nil] Require phone number verification via OTP (higher_intent only).
            #
            #   @param privacy_policy_link_text [String, nil] Custom link text for privacy policy (max 70 chars).
            #
            #   @param question_page_custom_headline [String, nil] Custom headline for the questions page.
            #
            #   @param rich_creative_headline [String, nil] Headline for rich creative form intro.
            #
            #   @param rich_creative_overview [String, nil] Overview description for rich creative form intro.
            #
            #   @param rich_creative_url [String, nil] Uploaded image URL for rich creative form type.
            #
            #   @param thank_you_pages [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::ThankYouPage>, nil] Thank you / ending pages (supports multiple for conditional routing).

            class Question < WhopSDK::Internal::Type::BaseModel
              # @!attribute type
              #   Question type (EMAIL, FULL_NAME, PHONE, CUSTOM, DATE_TIME, etc.).
              #
              #   @return [String]
              required :type, String

              # @!attribute conditional_questions_group_id
              #   Group ID for conditional question routing.
              #
              #   @return [String, nil]
              optional :conditional_questions_group_id, String, nil?: true

              # @!attribute dependent_conditional_questions
              #   Questions shown conditionally based on this question's answer.
              #
              #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion>, nil]
              optional :dependent_conditional_questions,
                       -> {
                         WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion]
                       },
                       nil?: true

              # @!attribute inline_context
              #   Helper text shown below the question.
              #
              #   @return [String, nil]
              optional :inline_context, String, nil?: true

              # @!attribute key
              #   Unique key for this question.
              #
              #   @return [String, nil]
              optional :key, String, nil?: true

              # @!attribute label
              #   Custom label for CUSTOM questions.
              #
              #   @return [String, nil]
              optional :label, String, nil?: true

              # @!attribute options
              #   Answer options for multiple choice CUSTOM questions.
              #
              #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option>, nil]
              optional :options,
                       -> {
                         WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option]
                       },
                       nil?: true

              # @!attribute question_format
              #   UI hint: short_answer, multiple_choice, or appointment.
              #
              #   @return [String, nil]
              optional :question_format, String, nil?: true

              # @!method initialize(type:, conditional_questions_group_id: nil, dependent_conditional_questions: nil, inline_context: nil, key: nil, label: nil, options: nil, question_format: nil)
              #   A question on a Meta lead gen form.
              #
              #   @param type [String] Question type (EMAIL, FULL_NAME, PHONE, CUSTOM, DATE_TIME, etc.).
              #
              #   @param conditional_questions_group_id [String, nil] Group ID for conditional question routing.
              #
              #   @param dependent_conditional_questions [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion>, nil] Questions shown conditionally based on this question's answer.
              #
              #   @param inline_context [String, nil] Helper text shown below the question.
              #
              #   @param key [String, nil] Unique key for this question.
              #
              #   @param label [String, nil] Custom label for CUSTOM questions.
              #
              #   @param options [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option>, nil] Answer options for multiple choice CUSTOM questions.
              #
              #   @param question_format [String, nil] UI hint: short_answer, multiple_choice, or appointment.

              class DependentConditionalQuestion < WhopSDK::Internal::Type::BaseModel
                # @!attribute type
                #   Question type (EMAIL, FULL_NAME, PHONE, CUSTOM, DATE_TIME, etc.).
                #
                #   @return [String]
                required :type, String

                # @!attribute inline_context
                #   Helper text shown below the question.
                #
                #   @return [String, nil]
                optional :inline_context, String, nil?: true

                # @!attribute key
                #   Unique key for this question.
                #
                #   @return [String, nil]
                optional :key, String, nil?: true

                # @!attribute label
                #   Custom label for CUSTOM questions.
                #
                #   @return [String, nil]
                optional :label, String, nil?: true

                # @!attribute options
                #   Answer options for multiple choice questions.
                #
                #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option>, nil]
                optional :options,
                         -> do
                           WhopSDK::Internal::Type::ArrayOf[
                             WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option
                           ]
                         end,
                         nil?: true

                # @!method initialize(type:, inline_context: nil, key: nil, label: nil, options: nil)
                #   A dependent conditional question (non-recursive to avoid schema recursion).
                #
                #   @param type [String] Question type (EMAIL, FULL_NAME, PHONE, CUSTOM, DATE_TIME, etc.).
                #
                #   @param inline_context [String, nil] Helper text shown below the question.
                #
                #   @param key [String, nil] Unique key for this question.
                #
                #   @param label [String, nil] Custom label for CUSTOM questions.
                #
                #   @param options [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option>, nil] Answer options for multiple choice questions.

                class Option < WhopSDK::Internal::Type::BaseModel
                  # @!attribute key
                  #   Unique key for this option.
                  #
                  #   @return [String]
                  required :key, String

                  # @!attribute value
                  #   Display text for this option.
                  #
                  #   @return [String]
                  required :value, String

                  # @!attribute logic
                  #   Conditional logic routing for this answer option.
                  #
                  #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option::Logic, nil]
                  optional :logic,
                           -> {
                             WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option::Logic
                           },
                           nil?: true

                  # @!method initialize(key:, value:, logic: nil)
                  #   An answer option for a multiple choice lead form question.
                  #
                  #   @param key [String] Unique key for this option.
                  #
                  #   @param value [String] Display text for this option.
                  #
                  #   @param logic [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option::Logic, nil] Conditional logic routing for this answer option.

                  # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option#logic
                  class Logic < WhopSDK::Internal::Type::BaseModel
                    # @!attribute type
                    #   Logic type: go_to_question, submit_form, or close_form.
                    #
                    #   @return [String]
                    required :type, String

                    # @!attribute target_end_page_index
                    #   Index of the end page to route to (for submit_form type).
                    #
                    #   @return [Integer, nil]
                    optional :target_end_page_index, Integer, nil?: true

                    # @!attribute target_question_index
                    #   Index of the question to route to (for go_to_question type).
                    #
                    #   @return [Integer, nil]
                    optional :target_question_index, Integer, nil?: true

                    # @!method initialize(type:, target_end_page_index: nil, target_question_index: nil)
                    #   Conditional logic routing for this answer option.
                    #
                    #   @param type [String] Logic type: go_to_question, submit_form, or close_form.
                    #
                    #   @param target_end_page_index [Integer, nil] Index of the end page to route to (for submit_form type).
                    #
                    #   @param target_question_index [Integer, nil] Index of the question to route to (for go_to_question type).
                  end
                end
              end

              class Option < WhopSDK::Internal::Type::BaseModel
                # @!attribute key
                #   Unique key for this option.
                #
                #   @return [String]
                required :key, String

                # @!attribute value
                #   Display text for this option.
                #
                #   @return [String]
                required :value, String

                # @!attribute logic
                #   Conditional logic routing for this answer option.
                #
                #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option::Logic, nil]
                optional :logic,
                         -> {
                           WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option::Logic
                         },
                         nil?: true

                # @!method initialize(key:, value:, logic: nil)
                #   An answer option for a multiple choice lead form question.
                #
                #   @param key [String] Unique key for this option.
                #
                #   @param value [String] Display text for this option.
                #
                #   @param logic [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option::Logic, nil] Conditional logic routing for this answer option.

                # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option#logic
                class Logic < WhopSDK::Internal::Type::BaseModel
                  # @!attribute type
                  #   Logic type: go_to_question, submit_form, or close_form.
                  #
                  #   @return [String]
                  required :type, String

                  # @!attribute target_end_page_index
                  #   Index of the end page to route to (for submit_form type).
                  #
                  #   @return [Integer, nil]
                  optional :target_end_page_index, Integer, nil?: true

                  # @!attribute target_question_index
                  #   Index of the question to route to (for go_to_question type).
                  #
                  #   @return [Integer, nil]
                  optional :target_question_index, Integer, nil?: true

                  # @!method initialize(type:, target_end_page_index: nil, target_question_index: nil)
                  #   Conditional logic routing for this answer option.
                  #
                  #   @param type [String] Logic type: go_to_question, submit_form, or close_form.
                  #
                  #   @param target_end_page_index [Integer, nil] Index of the end page to route to (for submit_form type).
                  #
                  #   @param target_question_index [Integer, nil] Index of the question to route to (for go_to_question type).
                end
              end
            end

            class CustomDisclaimerCheckbox < WhopSDK::Internal::Type::BaseModel
              # @!attribute key
              #   Unique key for this checkbox.
              #
              #   @return [String]
              required :key, String

              # @!attribute text
              #   Label text for the checkbox.
              #
              #   @return [String]
              required :text, String

              # @!attribute is_checked_by_default
              #   Whether the checkbox is checked by default.
              #
              #   @return [Boolean, nil]
              optional :is_checked_by_default, WhopSDK::Internal::Type::Boolean, nil?: true

              # @!attribute is_required
              #   Whether the checkbox must be checked to submit.
              #
              #   @return [Boolean, nil]
              optional :is_required, WhopSDK::Internal::Type::Boolean, nil?: true

              # @!method initialize(key:, text:, is_checked_by_default: nil, is_required: nil)
              #   A consent checkbox for the custom disclaimer section.
              #
              #   @param key [String] Unique key for this checkbox.
              #
              #   @param text [String] Label text for the checkbox.
              #
              #   @param is_checked_by_default [Boolean, nil] Whether the checkbox is checked by default.
              #
              #   @param is_required [Boolean, nil] Whether the checkbox must be checked to submit.
            end

            class ThankYouPage < WhopSDK::Internal::Type::BaseModel
              # @!attribute body
              #   Body text for this ending page.
              #
              #   @return [String, nil]
              optional :body, String, nil?: true

              # @!attribute business_phone
              #   Business phone number for call CTA.
              #
              #   @return [String, nil]
              optional :business_phone, String, nil?: true

              # @!attribute button_text
              #   Custom button text.
              #
              #   @return [String, nil]
              optional :button_text, String, nil?: true

              # @!attribute button_type
              #   CTA button type: VIEW_WEBSITE, CALL_BUSINESS, DOWNLOAD.
              #
              #   @return [String, nil]
              optional :button_type, String, nil?: true

              # @!attribute conditional_question_group_id
              #   Question group ID for conditional routing to this page.
              #
              #   @return [String, nil]
              optional :conditional_question_group_id, String, nil?: true

              # @!attribute enable_messenger
              #   Enable Messenger follow-up.
              #
              #   @return [Boolean, nil]
              optional :enable_messenger, WhopSDK::Internal::Type::Boolean, nil?: true

              # @!attribute gated_file_url
              #   Uploaded file URL for gated content download.
              #
              #   @return [String, nil]
              optional :gated_file_url, String, nil?: true

              # @!attribute link
              #   URL the button links to.
              #
              #   @return [String, nil]
              optional :link, String, nil?: true

              # @!attribute name
              #   Internal name for this ending page.
              #
              #   @return [String, nil]
              optional :name, String, nil?: true

              # @!attribute title
              #   Headline for this ending page.
              #
              #   @return [String, nil]
              optional :title, String, nil?: true

              # @!method initialize(body: nil, business_phone: nil, button_text: nil, button_type: nil, conditional_question_group_id: nil, enable_messenger: nil, gated_file_url: nil, link: nil, name: nil, title: nil)
              #   A thank-you / ending page for a Meta lead gen form.
              #
              #   @param body [String, nil] Body text for this ending page.
              #
              #   @param business_phone [String, nil] Business phone number for call CTA.
              #
              #   @param button_text [String, nil] Custom button text.
              #
              #   @param button_type [String, nil] CTA button type: VIEW_WEBSITE, CALL_BUSINESS, DOWNLOAD.
              #
              #   @param conditional_question_group_id [String, nil] Question group ID for conditional routing to this page.
              #
              #   @param enable_messenger [Boolean, nil] Enable Messenger follow-up.
              #
              #   @param gated_file_url [String, nil] Uploaded file URL for gated content download.
              #
              #   @param link [String, nil] URL the button links to.
              #
              #   @param name [String, nil] Internal name for this ending page.
              #
              #   @param title [String, nil] Headline for this ending page.
            end
          end

          # What this ad set optimizes for on Meta.
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#optimization_goal
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

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#promoted_object
          class PromotedObject < WhopSDK::Internal::Type::BaseModel
            # @!attribute custom_conversion_id
            #   Custom conversion rule ID (numeric, from Meta Events Manager).
            #
            #   @return [String, nil]
            optional :custom_conversion_id, String, nil?: true

            # @!attribute custom_event_str
            #   Pixel event name, used when custom_event_type is OTHER.
            #
            #   @return [String, nil]
            optional :custom_event_str, String, nil?: true

            # @!attribute custom_event_type
            #   Custom event type (e.g., PURCHASE, COMPLETE_REGISTRATION, OTHER).
            #
            #   @return [String, nil]
            optional :custom_event_type, String, nil?: true

            # @!attribute page_id
            #   Facebook Page ID.
            #
            #   @return [String, nil]
            optional :page_id, String, nil?: true

            # @!attribute pixel_id
            #   Meta Pixel ID for conversion tracking.
            #
            #   @return [String, nil]
            optional :pixel_id, String, nil?: true

            # @!attribute whatsapp_phone_number
            #   WhatsApp phone number for messaging campaigns.
            #
            #   @return [String, nil]
            optional :whatsapp_phone_number, String, nil?: true

            # @!method initialize(custom_conversion_id: nil, custom_event_str: nil, custom_event_type: nil, page_id: nil, pixel_id: nil, whatsapp_phone_number: nil)
            #   The object this ad set promotes (pixel, page, etc.).
            #
            #   @param custom_conversion_id [String, nil] Custom conversion rule ID (numeric, from Meta Events Manager).
            #
            #   @param custom_event_str [String, nil] Pixel event name, used when custom_event_type is OTHER.
            #
            #   @param custom_event_type [String, nil] Custom event type (e.g., PURCHASE, COMPLETE_REGISTRATION, OTHER).
            #
            #   @param page_id [String, nil] Facebook Page ID.
            #
            #   @param pixel_id [String, nil] Meta Pixel ID for conversion tracking.
            #
            #   @param whatsapp_phone_number [String, nil] WhatsApp phone number for messaging campaigns.
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#status
          module Status
            extend WhopSDK::Internal::Type::Enum

            ACTIVE = :ACTIVE
            PAUSED = :PAUSED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Meta#targeting_automation
          class TargetingAutomation < WhopSDK::Internal::Type::BaseModel
            # @!attribute advantage_audience
            #   0 = off (use exact targeting), 1 = on (let Meta expand audience).
            #
            #   @return [Integer, nil]
            optional :advantage_audience, Integer, nil?: true

            # @!method initialize(advantage_audience: nil)
            #   Advantage+ audience expansion settings.
            #
            #   @param advantage_audience [Integer, nil] 0 = off (use exact targeting), 1 = on (let Meta expand audience).
          end
        end

        # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig#tiktok
        class Tiktok < WhopSDK::Internal::Type::BaseModel
          # @!attribute actions
          #
          #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Action>, nil]
          optional :actions,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action]
                   },
                   nil?: true

          # @!attribute age_groups
          #
          #   @return [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup>, nil]
          optional :age_groups,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup]
                   },
                   nil?: true

          # @!attribute app_id
          #   App ID for app promotion campaigns.
          #
          #   @return [String, nil]
          optional :app_id, String, nil?: true

          # @!attribute attribution_event_count
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount, nil]
          optional :attribution_event_count,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount },
                   nil?: true

          # @!attribute audience_ids
          #
          #   @return [Array<String>, nil]
          optional :audience_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute audience_rule
          #   Represents untyped JSON
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :audience_rule,
                   WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown],
                   nil?: true

          # @!attribute audience_type
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::AudienceType, nil]
          optional :audience_type,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AudienceType },
                   nil?: true

          # @!attribute bid_price
          #   Bid price (cost per result for Cost Cap).
          #
          #   @return [Float, nil]
          optional :bid_price, Float, nil?: true

          # @!attribute bid_type
          #   Bidding strategy (BID_TYPE_NO_BID, BID_TYPE_CUSTOM).
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::BidType, nil]
          optional :bid_type,
                   enum: -> {
                     WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BidType
                   },
                   nil?: true

          # @!attribute billing_event
          #   How you are billed on TikTok (CPC, CPM, OCPM, CPV).
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent, nil]
          optional :billing_event,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent },
                   nil?: true

          # @!attribute brand_safety_type
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType, nil]
          optional :brand_safety_type,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType },
                   nil?: true

          # @!attribute budget_mode
          #   Budget mode (BUDGET_MODE_DAY, BUDGET_MODE_TOTAL,
          #   BUDGET_MODE_DYNAMIC_DAILY_BUDGET).
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode, nil]
          optional :budget_mode,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode },
                   nil?: true

          # @!attribute carrier_ids
          #
          #   @return [Array<String>, nil]
          optional :carrier_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute category_exclusion_ids
          #
          #   @return [Array<String>, nil]
          optional :category_exclusion_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute click_attribution_window
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow, nil]
          optional :click_attribution_window,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow },
                   nil?: true

          # @!attribute comment_disabled
          #   Represents `true` or `false` values.
          #
          #   @return [Boolean, nil]
          optional :comment_disabled, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute contextual_tag_ids
          #
          #   @return [Array<String>, nil]
          optional :contextual_tag_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute conversion_bid_price
          #   Target cost per conversion for oCPM.
          #
          #   @return [Float, nil]
          optional :conversion_bid_price, Float, nil?: true

          # @!attribute creative_material_mode
          #   Creative delivery strategy.
          #
          #   @return [String, nil]
          optional :creative_material_mode, String, nil?: true

          # @!attribute dayparting
          #   Ad delivery schedule (48x7 character string).
          #
          #   @return [String, nil]
          optional :dayparting, String, nil?: true

          # @!attribute deep_funnel_event_source
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :deep_funnel_event_source, String, nil?: true

          # @!attribute deep_funnel_event_source_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :deep_funnel_event_source_id, String, nil?: true

          # @!attribute deep_funnel_optimization_status
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::DeepFunnelOptimizationStatus, nil]
          optional :deep_funnel_optimization_status,
                   enum: -> {
                     WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::DeepFunnelOptimizationStatus
                   },
                   nil?: true

          # @!attribute device_model_ids
          #
          #   @return [Array<String>, nil]
          optional :device_model_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute device_price_ranges
          #
          #   @return [Array<String>, nil]
          optional :device_price_ranges, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute engaged_view_attribution_window
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow, nil]
          optional :engaged_view_attribution_window,
                   enum: -> {
                     WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow
                   },
                   nil?: true

          # @!attribute excluded_audience_ids
          #
          #   @return [Array<String>, nil]
          optional :excluded_audience_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute excluded_location_ids
          #   TikTok location/region IDs to exclude.
          #
          #   @return [Array<String>, nil]
          optional :excluded_location_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute frequency
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          optional :frequency, Integer, nil?: true

          # @!attribute frequency_schedule
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          optional :frequency_schedule, Integer, nil?: true

          # @!attribute gender
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender, nil]
          optional :gender,
                   enum: -> {
                     WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender
                   },
                   nil?: true

          # @!attribute identity_authorized_bc_id
          #   Business Center ID for BC_AUTH_TT identity.
          #
          #   @return [String, nil]
          optional :identity_authorized_bc_id, String, nil?: true

          # @!attribute identity_id
          #   TikTok identity ID for the ad group.
          #
          #   @return [String, nil]
          optional :identity_id, String, nil?: true

          # @!attribute identity_type
          #   Identity type (AUTH_CODE, TT_USER, BC_AUTH_TT).
          #
          #   @return [String, nil]
          optional :identity_type, String, nil?: true

          # @!attribute instant_form_config
          #   Instant form configuration for lead generation campaigns.
          #
          #   @return [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig, nil]
          optional :instant_form_config,
                   -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig },
                   nil?: true

          # @!attribute instant_form_id
          #   TikTok instant form ID (set automatically when instant_form_config is provided).
          #
          #   @return [String, nil]
          optional :instant_form_id, String, nil?: true

          # @!attribute interest_category_ids
          #
          #   @return [Array<String>, nil]
          optional :interest_category_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute interest_keyword_ids
          #
          #   @return [Array<String>, nil]
          optional :interest_keyword_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute inventory_filter_enabled
          #   Represents `true` or `false` values.
          #
          #   @return [Boolean, nil]
          optional :inventory_filter_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute ios14_targeting
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting, nil]
          optional :ios14_targeting,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting },
                   nil?: true

          # @!attribute isp_ids
          #
          #   @return [Array<String>, nil]
          optional :isp_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute languages
          #
          #   @return [Array<String>, nil]
          optional :languages, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute location_ids
          #   TikTok location/region IDs for geo targeting.
          #
          #   @return [Array<String>, nil]
          optional :location_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute min_android_version
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :min_android_version, String, nil?: true

          # @!attribute min_ios_version
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :min_ios_version, String, nil?: true

          # @!attribute network_types
          #
          #   @return [Array<String>, nil]
          optional :network_types, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute operating_systems
          #
          #   @return [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::OperatingSystem>, nil]
          optional :operating_systems,
                   -> {
                     WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperatingSystem]
                   },
                   nil?: true

          # @!attribute operation_status
          #   Initial status (ENABLE, DISABLE).
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::OperationStatus, nil]
          optional :operation_status,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperationStatus },
                   nil?: true

          # @!attribute optimization_event
          #   Conversion event (e.g., COMPLETE_PAYMENT).
          #
          #   @return [String, nil]
          optional :optimization_event, String, nil?: true

          # @!attribute optimization_goal
          #   What this ad group optimizes for on TikTok.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal, nil]
          optional :optimization_goal,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal },
                   nil?: true

          # @!attribute pacing
          #   Budget pacing (PACING_MODE_SMOOTH, PACING_MODE_FAST).
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Pacing, nil]
          optional :pacing,
                   enum: -> {
                     WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Pacing
                   },
                   nil?: true

          # @!attribute pangle_audience_package_exclude_ids
          #
          #   @return [Array<String>, nil]
          optional :pangle_audience_package_exclude_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute pangle_audience_package_include_ids
          #
          #   @return [Array<String>, nil]
          optional :pangle_audience_package_include_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute pangle_block_app_ids
          #
          #   @return [Array<String>, nil]
          optional :pangle_block_app_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute pixel_id
          #   TikTok Pixel ID for conversion tracking.
          #
          #   @return [String, nil]
          optional :pixel_id, String, nil?: true

          # @!attribute placement_type
          #   Placement strategy (PLACEMENT_TYPE_AUTOMATIC, PLACEMENT_TYPE_NORMAL).
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::PlacementType, nil]
          optional :placement_type,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::PlacementType },
                   nil?: true

          # @!attribute placements
          #   Placements (PLACEMENT_TIKTOK, PLACEMENT_PANGLE, etc.).
          #
          #   @return [Array<String>, nil]
          optional :placements, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute product_set_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :product_set_id, String, nil?: true

          # @!attribute product_source
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource, nil]
          optional :product_source,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource },
                   nil?: true

          # @!attribute promotion_type
          #   Promotion type (optimization location).
          #
          #   @return [String, nil]
          optional :promotion_type, String, nil?: true

          # @!attribute schedule_end_time
          #   Schedule end time (UTC, YYYY-MM-DD HH:MM:SS).
          #
          #   @return [String, nil]
          optional :schedule_end_time, String, nil?: true

          # @!attribute schedule_start_time
          #   Schedule start time (UTC, YYYY-MM-DD HH:MM:SS).
          #
          #   @return [String, nil]
          optional :schedule_start_time, String, nil?: true

          # @!attribute schedule_type
          #   Schedule type (SCHEDULE_START_END, SCHEDULE_FROM_NOW).
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::ScheduleType, nil]
          optional :schedule_type,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ScheduleType },
                   nil?: true

          # @!attribute secondary_optimization_event
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :secondary_optimization_event, String, nil?: true

          # @!attribute shopping_ads_retargeting_actions_days
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          optional :shopping_ads_retargeting_actions_days, Integer, nil?: true

          # @!attribute shopping_ads_retargeting_type
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType, nil]
          optional :shopping_ads_retargeting_type,
                   enum: -> {
                     WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType
                   },
                   nil?: true

          # @!attribute spending_power
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::SpendingPower, nil]
          optional :spending_power,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::SpendingPower },
                   nil?: true

          # @!attribute tiktok_subplacements
          #   TikTok subplacements (IN_FEED, SEARCH_FEED, etc.).
          #
          #   @return [Array<String>, nil]
          optional :tiktok_subplacements, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute vertical_sensitivity_id
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :vertical_sensitivity_id, String, nil?: true

          # @!attribute video_download_disabled
          #   Represents `true` or `false` values.
          #
          #   @return [Boolean, nil]
          optional :video_download_disabled, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute video_user_actions
          #
          #   @return [Array<String>, nil]
          optional :video_user_actions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute view_attribution_window
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow, nil]
          optional :view_attribution_window,
                   enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow },
                   nil?: true

          # @!method initialize(actions: nil, age_groups: nil, app_id: nil, attribution_event_count: nil, audience_ids: nil, audience_rule: nil, audience_type: nil, bid_price: nil, bid_type: nil, billing_event: nil, brand_safety_type: nil, budget_mode: nil, carrier_ids: nil, category_exclusion_ids: nil, click_attribution_window: nil, comment_disabled: nil, contextual_tag_ids: nil, conversion_bid_price: nil, creative_material_mode: nil, dayparting: nil, deep_funnel_event_source: nil, deep_funnel_event_source_id: nil, deep_funnel_optimization_status: nil, device_model_ids: nil, device_price_ranges: nil, engaged_view_attribution_window: nil, excluded_audience_ids: nil, excluded_location_ids: nil, frequency: nil, frequency_schedule: nil, gender: nil, identity_authorized_bc_id: nil, identity_id: nil, identity_type: nil, instant_form_config: nil, instant_form_id: nil, interest_category_ids: nil, interest_keyword_ids: nil, inventory_filter_enabled: nil, ios14_targeting: nil, isp_ids: nil, languages: nil, location_ids: nil, min_android_version: nil, min_ios_version: nil, network_types: nil, operating_systems: nil, operation_status: nil, optimization_event: nil, optimization_goal: nil, pacing: nil, pangle_audience_package_exclude_ids: nil, pangle_audience_package_include_ids: nil, pangle_block_app_ids: nil, pixel_id: nil, placement_type: nil, placements: nil, product_set_id: nil, product_source: nil, promotion_type: nil, schedule_end_time: nil, schedule_start_time: nil, schedule_type: nil, secondary_optimization_event: nil, shopping_ads_retargeting_actions_days: nil, shopping_ads_retargeting_type: nil, spending_power: nil, tiktok_subplacements: nil, vertical_sensitivity_id: nil, video_download_disabled: nil, video_user_actions: nil, view_attribution_window: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok} for more details.
          #
          #   TikTok ad group configuration.
          #
          #   @param actions [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Action>, nil]
          #
          #   @param age_groups [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup>, nil]
          #
          #   @param app_id [String, nil] App ID for app promotion campaigns.
          #
          #   @param attribution_event_count [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount, nil]
          #
          #   @param audience_ids [Array<String>, nil]
          #
          #   @param audience_rule [Hash{Symbol=>Object}, nil] Represents untyped JSON
          #
          #   @param audience_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::AudienceType, nil]
          #
          #   @param bid_price [Float, nil] Bid price (cost per result for Cost Cap).
          #
          #   @param bid_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::BidType, nil] Bidding strategy (BID_TYPE_NO_BID, BID_TYPE_CUSTOM).
          #
          #   @param billing_event [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent, nil] How you are billed on TikTok (CPC, CPM, OCPM, CPV).
          #
          #   @param brand_safety_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType, nil]
          #
          #   @param budget_mode [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode, nil] Budget mode (BUDGET_MODE_DAY, BUDGET_MODE_TOTAL, BUDGET_MODE_DYNAMIC_DAILY_BUDGE
          #
          #   @param carrier_ids [Array<String>, nil]
          #
          #   @param category_exclusion_ids [Array<String>, nil]
          #
          #   @param click_attribution_window [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow, nil]
          #
          #   @param comment_disabled [Boolean, nil] Represents `true` or `false` values.
          #
          #   @param contextual_tag_ids [Array<String>, nil]
          #
          #   @param conversion_bid_price [Float, nil] Target cost per conversion for oCPM.
          #
          #   @param creative_material_mode [String, nil] Creative delivery strategy.
          #
          #   @param dayparting [String, nil] Ad delivery schedule (48x7 character string).
          #
          #   @param deep_funnel_event_source [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param deep_funnel_event_source_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param deep_funnel_optimization_status [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::DeepFunnelOptimizationStatus, nil]
          #
          #   @param device_model_ids [Array<String>, nil]
          #
          #   @param device_price_ranges [Array<String>, nil]
          #
          #   @param engaged_view_attribution_window [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow, nil]
          #
          #   @param excluded_audience_ids [Array<String>, nil]
          #
          #   @param excluded_location_ids [Array<String>, nil] TikTok location/region IDs to exclude.
          #
          #   @param frequency [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param frequency_schedule [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param gender [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender, nil]
          #
          #   @param identity_authorized_bc_id [String, nil] Business Center ID for BC_AUTH_TT identity.
          #
          #   @param identity_id [String, nil] TikTok identity ID for the ad group.
          #
          #   @param identity_type [String, nil] Identity type (AUTH_CODE, TT_USER, BC_AUTH_TT).
          #
          #   @param instant_form_config [WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig, nil] Instant form configuration for lead generation campaigns.
          #
          #   @param instant_form_id [String, nil] TikTok instant form ID (set automatically when instant_form_config is provided).
          #
          #   @param interest_category_ids [Array<String>, nil]
          #
          #   @param interest_keyword_ids [Array<String>, nil]
          #
          #   @param inventory_filter_enabled [Boolean, nil] Represents `true` or `false` values.
          #
          #   @param ios14_targeting [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting, nil]
          #
          #   @param isp_ids [Array<String>, nil]
          #
          #   @param languages [Array<String>, nil]
          #
          #   @param location_ids [Array<String>, nil] TikTok location/region IDs for geo targeting.
          #
          #   @param min_android_version [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param min_ios_version [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param network_types [Array<String>, nil]
          #
          #   @param operating_systems [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::OperatingSystem>, nil]
          #
          #   @param operation_status [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::OperationStatus, nil] Initial status (ENABLE, DISABLE).
          #
          #   @param optimization_event [String, nil] Conversion event (e.g., COMPLETE_PAYMENT).
          #
          #   @param optimization_goal [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal, nil] What this ad group optimizes for on TikTok.
          #
          #   @param pacing [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Pacing, nil] Budget pacing (PACING_MODE_SMOOTH, PACING_MODE_FAST).
          #
          #   @param pangle_audience_package_exclude_ids [Array<String>, nil]
          #
          #   @param pangle_audience_package_include_ids [Array<String>, nil]
          #
          #   @param pangle_block_app_ids [Array<String>, nil]
          #
          #   @param pixel_id [String, nil] TikTok Pixel ID for conversion tracking.
          #
          #   @param placement_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::PlacementType, nil] Placement strategy (PLACEMENT_TYPE_AUTOMATIC, PLACEMENT_TYPE_NORMAL).
          #
          #   @param placements [Array<String>, nil] Placements (PLACEMENT_TIKTOK, PLACEMENT_PANGLE, etc.).
          #
          #   @param product_set_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param product_source [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource, nil]
          #
          #   @param promotion_type [String, nil] Promotion type (optimization location).
          #
          #   @param schedule_end_time [String, nil] Schedule end time (UTC, YYYY-MM-DD HH:MM:SS).
          #
          #   @param schedule_start_time [String, nil] Schedule start time (UTC, YYYY-MM-DD HH:MM:SS).
          #
          #   @param schedule_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::ScheduleType, nil] Schedule type (SCHEDULE_START_END, SCHEDULE_FROM_NOW).
          #
          #   @param secondary_optimization_event [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param shopping_ads_retargeting_actions_days [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param shopping_ads_retargeting_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType, nil]
          #
          #   @param spending_power [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::SpendingPower, nil]
          #
          #   @param tiktok_subplacements [Array<String>, nil] TikTok subplacements (IN_FEED, SEARCH_FEED, etc.).
          #
          #   @param vertical_sensitivity_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param video_download_disabled [Boolean, nil] Represents `true` or `false` values.
          #
          #   @param video_user_actions [Array<String>, nil]
          #
          #   @param view_attribution_window [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow, nil]

          class Action < WhopSDK::Internal::Type::BaseModel
            # @!attribute action_category_ids
            #   Behavioral category IDs. Use /tool/action_category/ to list them.
            #
            #   @return [Array<String>, nil]
            optional :action_category_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute action_period
            #   Lookback window in days. TikTok accepts 7, 15, 30, 60, 90, or 180.
            #
            #   @return [Integer, nil]
            optional :action_period, Integer, nil?: true

            # @!attribute action_scene
            #   The category of TikTok content a behavioral targeting rule applies to. See
            #   docs/tiktok_api/ad_group.md § actions.
            #
            #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene, nil]
            optional :action_scene,
                     enum: -> { WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene },
                     nil?: true

            # @!attribute video_user_actions
            #   Specific video interactions (WATCHED_TO_END, LIKED, COMMENTED, SHARED, FOLLOWED,
            #   PROFILE_VISITED).
            #
            #   @return [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction>, nil]
            optional :video_user_actions,
                     -> {
                       WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction]
                     },
                     nil?: true

            # @!method initialize(action_category_ids: nil, action_period: nil, action_scene: nil, video_user_actions: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Action} for more
            #   details.
            #
            #   A single TikTok behavioral targeting entry. One category of past user behavior
            #   (what they did, over what window, on which kind of content). See
            #   docs/tiktok_api/ad_group.md § actions.
            #
            #   @param action_category_ids [Array<String>, nil] Behavioral category IDs. Use /tool/action_category/ to list them.
            #
            #   @param action_period [Integer, nil] Lookback window in days. TikTok accepts 7, 15, 30, 60, 90, or 180.
            #
            #   @param action_scene [Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene, nil] The category of TikTok content a behavioral targeting rule applies to. See docs/
            #
            #   @param video_user_actions [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction>, nil] Specific video interactions (WATCHED_TO_END, LIKED, COMMENTED, SHARED, FOLLOWED,

            # The category of TikTok content a behavioral targeting rule applies to. See
            # docs/tiktok_api/ad_group.md § actions.
            #
            # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::Action#action_scene
            module ActionScene
              extend WhopSDK::Internal::Type::Enum

              VIDEO_RELATED = :VIDEO_RELATED
              CREATOR_RELATED = :CREATOR_RELATED
              HASHTAG_RELATED = :HASHTAG_RELATED
              LIVE_RELATED = :LIVE_RELATED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Specific past video interactions used for behavioral targeting. See
            # docs/tiktok_api/ad_group.md § actions.video_user_actions.
            module VideoUserAction
              extend WhopSDK::Internal::Type::Enum

              WATCHED_TO_END = :WATCHED_TO_END
              LIKED = :LIKED
              COMMENTED = :COMMENTED
              SHARED = :SHARED
              FOLLOWED = :FOLLOWED
              PROFILE_VISITED = :PROFILE_VISITED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Age groups targetable on TikTok. See docs/tiktok_api/ad_group.md § age_groups.
          module AgeGroup
            extend WhopSDK::Internal::Type::Enum

            AGE_13_17 = :AGE_13_17
            AGE_18_24 = :AGE_18_24
            AGE_25_34 = :AGE_25_34
            AGE_35_44 = :AGE_35_44
            AGE_45_54 = :AGE_45_54
            AGE_55_100 = :AGE_55_100

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#attribution_event_count
          module AttributionEventCount
            extend WhopSDK::Internal::Type::Enum

            UNSET = :UNSET
            EVERY = :EVERY
            ONCE = :ONCE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#audience_type
          module AudienceType
            extend WhopSDK::Internal::Type::Enum

            NORMAL = :NORMAL
            SMART_INTERESTS_BEHAVIORS = :SMART_INTERESTS_BEHAVIORS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Bidding strategy (BID_TYPE_NO_BID, BID_TYPE_CUSTOM).
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#bid_type
          module BidType
            extend WhopSDK::Internal::Type::Enum

            BID_TYPE_NO_BID = :BID_TYPE_NO_BID
            BID_TYPE_CUSTOM = :BID_TYPE_CUSTOM

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # How you are billed on TikTok (CPC, CPM, OCPM, CPV).
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#billing_event
          module BillingEvent
            extend WhopSDK::Internal::Type::Enum

            CPC = :CPC
            CPM = :CPM
            OCPM = :OCPM
            CPV = :CPV

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#brand_safety_type
          module BrandSafetyType
            extend WhopSDK::Internal::Type::Enum

            NO_BRAND_SAFETY = :NO_BRAND_SAFETY
            STANDARD_INVENTORY = :STANDARD_INVENTORY
            LIMITED_INVENTORY = :LIMITED_INVENTORY
            FULL_INVENTORY = :FULL_INVENTORY
            EXPANDED_INVENTORY = :EXPANDED_INVENTORY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Budget mode (BUDGET_MODE_DAY, BUDGET_MODE_TOTAL,
          # BUDGET_MODE_DYNAMIC_DAILY_BUDGET).
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#budget_mode
          module BudgetMode
            extend WhopSDK::Internal::Type::Enum

            BUDGET_MODE_DAY = :BUDGET_MODE_DAY
            BUDGET_MODE_TOTAL = :BUDGET_MODE_TOTAL
            BUDGET_MODE_DYNAMIC_DAILY_BUDGET = :BUDGET_MODE_DYNAMIC_DAILY_BUDGET

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#click_attribution_window
          module ClickAttributionWindow
            extend WhopSDK::Internal::Type::Enum

            OFF = :OFF
            ONE_DAY = :ONE_DAY
            SEVEN_DAYS = :SEVEN_DAYS
            FOURTEEN_DAYS = :FOURTEEN_DAYS
            TWENTY_EIGHT_DAYS = :TWENTY_EIGHT_DAYS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#deep_funnel_optimization_status
          module DeepFunnelOptimizationStatus
            extend WhopSDK::Internal::Type::Enum

            ON = :ON
            OFF = :OFF

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#engaged_view_attribution_window
          module EngagedViewAttributionWindow
            extend WhopSDK::Internal::Type::Enum

            OFF = :OFF
            ONE_DAY = :ONE_DAY
            SEVEN_DAYS = :SEVEN_DAYS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#gender
          module Gender
            extend WhopSDK::Internal::Type::Enum

            GENDER_UNLIMITED = :GENDER_UNLIMITED
            GENDER_MALE = :GENDER_MALE
            GENDER_FEMALE = :GENDER_FEMALE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#instant_form_config
          class InstantFormConfig < WhopSDK::Internal::Type::BaseModel
            # @!attribute privacy_policy_url
            #   URL to your privacy policy.
            #
            #   @return [String]
            required :privacy_policy_url, String

            # @!attribute questions
            #   Form questions (at least one required).
            #
            #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig::Question>]
            required :questions,
                     -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig::Question] }

            # @!attribute button_text
            #   Submit button text.
            #
            #   @return [String, nil]
            optional :button_text, String, nil?: true

            # @!attribute greeting
            #   Greeting text shown at the top of the form.
            #
            #   @return [String, nil]
            optional :greeting, String, nil?: true

            # @!attribute name
            #   Form name. Auto-generated if omitted.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!method initialize(privacy_policy_url:, questions:, button_text: nil, greeting: nil, name: nil)
            #   Instant form configuration for lead generation campaigns.
            #
            #   @param privacy_policy_url [String] URL to your privacy policy.
            #
            #   @param questions [Array<WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig::Question>] Form questions (at least one required).
            #
            #   @param button_text [String, nil] Submit button text.
            #
            #   @param greeting [String, nil] Greeting text shown at the top of the form.
            #
            #   @param name [String, nil] Form name. Auto-generated if omitted.

            class Question < WhopSDK::Internal::Type::BaseModel
              # @!attribute field_type
              #   Question type (EMAIL, PHONE_NUMBER, NAME, CUSTOM).
              #
              #   @return [String]
              required :field_type, String

              # @!attribute label
              #   Custom label for the question.
              #
              #   @return [String, nil]
              optional :label, String, nil?: true

              # @!method initialize(field_type:, label: nil)
              #   A question for a TikTok instant form.
              #
              #   @param field_type [String] Question type (EMAIL, PHONE_NUMBER, NAME, CUSTOM).
              #
              #   @param label [String, nil] Custom label for the question.
            end
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#ios14_targeting
          module Ios14Targeting
            extend WhopSDK::Internal::Type::Enum

            UNSET = :UNSET
            IOS14_MINUS = :IOS14_MINUS
            IOS14_PLUS = :IOS14_PLUS
            ALL = :ALL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Device operating systems targetable on TikTok. See docs/tiktok_api/ad_group.md §
          # operating_systems.
          module OperatingSystem
            extend WhopSDK::Internal::Type::Enum

            ANDROID = :ANDROID
            IOS = :IOS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Initial status (ENABLE, DISABLE).
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#operation_status
          module OperationStatus
            extend WhopSDK::Internal::Type::Enum

            ENABLE = :ENABLE
            DISABLE = :DISABLE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # What this ad group optimizes for on TikTok.
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#optimization_goal
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

          # Budget pacing (PACING_MODE_SMOOTH, PACING_MODE_FAST).
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#pacing
          module Pacing
            extend WhopSDK::Internal::Type::Enum

            PACING_MODE_SMOOTH = :PACING_MODE_SMOOTH
            PACING_MODE_FAST = :PACING_MODE_FAST

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Placement strategy (PLACEMENT_TYPE_AUTOMATIC, PLACEMENT_TYPE_NORMAL).
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#placement_type
          module PlacementType
            extend WhopSDK::Internal::Type::Enum

            PLACEMENT_TYPE_AUTOMATIC = :PLACEMENT_TYPE_AUTOMATIC
            PLACEMENT_TYPE_NORMAL = :PLACEMENT_TYPE_NORMAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#product_source
          module ProductSource
            extend WhopSDK::Internal::Type::Enum

            CATALOG = :CATALOG
            STORE = :STORE
            SHOWCASE = :SHOWCASE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Schedule type (SCHEDULE_START_END, SCHEDULE_FROM_NOW).
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#schedule_type
          module ScheduleType
            extend WhopSDK::Internal::Type::Enum

            SCHEDULE_START_END = :SCHEDULE_START_END
            SCHEDULE_FROM_NOW = :SCHEDULE_FROM_NOW

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#shopping_ads_retargeting_type
          module ShoppingAdsRetargetingType
            extend WhopSDK::Internal::Type::Enum

            OFF = :OFF
            LAB1 = :LAB1
            LAB2 = :LAB2
            LAB3 = :LAB3
            LAB4 = :LAB4
            LAB5 = :LAB5

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#spending_power
          module SpendingPower
            extend WhopSDK::Internal::Type::Enum

            ALL = :ALL
            HIGH = :HIGH

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see WhopSDK::Models::AdGroupUpdateParams::PlatformConfig::Tiktok#view_attribution_window
          module ViewAttributionWindow
            extend WhopSDK::Internal::Type::Enum

            OFF = :OFF
            ONE_DAY = :ONE_DAY
            SEVEN_DAYS = :SEVEN_DAYS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
