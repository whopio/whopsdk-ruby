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

      # The unique identifier for the external ad group.
      sig { returns(String) }
      attr_accessor :id

      # Unified ad group configuration (platform-agnostic)
      sig { returns(T.nilable(WhopSDK::Models::AdGroupListResponse::Config)) }
      attr_reader :config

      sig do
        params(
          config:
            T.nilable(WhopSDK::Models::AdGroupListResponse::Config::OrHash)
        ).void
      end
      attr_writer :config

      # The datetime the external ad group was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Daily budget in dollars (nil for lifetime budgets)
      sig { returns(T.nilable(Float)) }
      attr_accessor :daily_budget

      # Human-readable ad group name
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Typed platform-specific configuration. Use inline fragments (... on
      # MetaAdGroupPlatformConfigType).
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::AdGroupListResponse::PlatformConfig::Variants
          )
        )
      end
      attr_accessor :platform_config

      # Current operational status of the ad group
      sig do
        returns(WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol)
      end
      attr_accessor :status

      # The datetime the external ad group was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An external ad group (ad set) belonging to an ad campaign
      sig do
        params(
          id: String,
          config:
            T.nilable(WhopSDK::Models::AdGroupListResponse::Config::OrHash),
          created_at: Time,
          daily_budget: T.nilable(Float),
          name: T.nilable(String),
          platform_config:
            T.nilable(
              T.any(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OrHash,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OrHash
              )
            ),
          status: WhopSDK::Models::AdGroupListResponse::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the external ad group.
        id:,
        # Unified ad group configuration (platform-agnostic)
        config:,
        # The datetime the external ad group was created.
        created_at:,
        # Daily budget in dollars (nil for lifetime budgets)
        daily_budget:,
        # Human-readable ad group name
        name:,
        # Typed platform-specific configuration. Use inline fragments (... on
        # MetaAdGroupPlatformConfigType).
        platform_config:,
        # Current operational status of the ad group
        status:,
        # The datetime the external ad group was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            config: T.nilable(WhopSDK::Models::AdGroupListResponse::Config),
            created_at: Time,
            daily_budget: T.nilable(Float),
            name: T.nilable(String),
            platform_config:
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::Variants
              ),
            status: WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Config < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdGroupListResponse::Config,
              WhopSDK::Internal::AnyHash
            )
          end

        # Bid cap amount in cents. Used when bid_strategy is bid_cap or cost_cap.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :bid_amount

        # Bid strategy: lowest_cost, bid_cap, or cost_cap.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::AdGroupListResponse::Config::BidStrategy::TaggedSymbol
            )
          )
        end
        attr_accessor :bid_strategy

        # How you are billed (e.g., impressions, clicks).
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::AdGroupListResponse::Config::BillingEvent::TaggedSymbol
            )
          )
        end
        attr_accessor :billing_event

        # Scheduled end time (ISO8601). Required for lifetime budgets.
        sig { returns(T.nilable(String)) }
        attr_accessor :end_time

        # Maximum number of times to show ads to each person in the frequency interval.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :frequency_cap

        # Number of days for the frequency cap interval.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :frequency_cap_interval_days

        # What the ad group optimizes for (e.g., conversions, link_clicks, reach).
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          )
        end
        attr_accessor :optimization_goal

        # Budget pacing: standard (even) or accelerated (fast).
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::AdGroupListResponse::Config::Pacing::TaggedSymbol
            )
          )
        end
        attr_accessor :pacing

        # Scheduled start time (ISO8601).
        sig { returns(T.nilable(String)) }
        attr_accessor :start_time

        # Audience targeting settings (demographics, geo, interests, audiences, devices).
        sig do
          returns(
            T.nilable(WhopSDK::Models::AdGroupListResponse::Config::Targeting)
          )
        end
        attr_reader :targeting

        sig do
          params(
            targeting:
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::Config::Targeting::OrHash
              )
          ).void
        end
        attr_writer :targeting

        # Unified ad group configuration (platform-agnostic)
        sig do
          params(
            bid_amount: T.nilable(Integer),
            bid_strategy:
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::Config::BidStrategy::OrSymbol
              ),
            billing_event:
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::Config::BillingEvent::OrSymbol
              ),
            end_time: T.nilable(String),
            frequency_cap: T.nilable(Integer),
            frequency_cap_interval_days: T.nilable(Integer),
            optimization_goal:
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::OrSymbol
              ),
            pacing:
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::Config::Pacing::OrSymbol
              ),
            start_time: T.nilable(String),
            targeting:
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::Config::Targeting::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Bid cap amount in cents. Used when bid_strategy is bid_cap or cost_cap.
          bid_amount:,
          # Bid strategy: lowest_cost, bid_cap, or cost_cap.
          bid_strategy:,
          # How you are billed (e.g., impressions, clicks).
          billing_event:,
          # Scheduled end time (ISO8601). Required for lifetime budgets.
          end_time:,
          # Maximum number of times to show ads to each person in the frequency interval.
          frequency_cap:,
          # Number of days for the frequency cap interval.
          frequency_cap_interval_days:,
          # What the ad group optimizes for (e.g., conversions, link_clicks, reach).
          optimization_goal:,
          # Budget pacing: standard (even) or accelerated (fast).
          pacing:,
          # Scheduled start time (ISO8601).
          start_time:,
          # Audience targeting settings (demographics, geo, interests, audiences, devices).
          targeting:
        )
        end

        sig do
          override.returns(
            {
              bid_amount: T.nilable(Integer),
              bid_strategy:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::Config::BidStrategy::TaggedSymbol
                ),
              billing_event:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::Config::BillingEvent::TaggedSymbol
                ),
              end_time: T.nilable(String),
              frequency_cap: T.nilable(Integer),
              frequency_cap_interval_days: T.nilable(Integer),
              optimization_goal:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
                ),
              pacing:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::Config::Pacing::TaggedSymbol
                ),
              start_time: T.nilable(String),
              targeting:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::Config::Targeting
                )
            }
          )
        end
        def to_hash
        end

        # Bid strategy: lowest_cost, bid_cap, or cost_cap.
        module BidStrategy
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::AdGroupListResponse::Config::BidStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOWEST_COST =
            T.let(
              :lowest_cost,
              WhopSDK::Models::AdGroupListResponse::Config::BidStrategy::TaggedSymbol
            )
          BID_CAP =
            T.let(
              :bid_cap,
              WhopSDK::Models::AdGroupListResponse::Config::BidStrategy::TaggedSymbol
            )
          COST_CAP =
            T.let(
              :cost_cap,
              WhopSDK::Models::AdGroupListResponse::Config::BidStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdGroupListResponse::Config::BidStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # How you are billed (e.g., impressions, clicks).
        module BillingEvent
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::AdGroupListResponse::Config::BillingEvent
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IMPRESSIONS =
            T.let(
              :impressions,
              WhopSDK::Models::AdGroupListResponse::Config::BillingEvent::TaggedSymbol
            )
          CLICKS =
            T.let(
              :clicks,
              WhopSDK::Models::AdGroupListResponse::Config::BillingEvent::TaggedSymbol
            )
          OPTIMIZED_CPM =
            T.let(
              :optimized_cpm,
              WhopSDK::Models::AdGroupListResponse::Config::BillingEvent::TaggedSymbol
            )
          VIDEO_VIEWS =
            T.let(
              :video_views,
              WhopSDK::Models::AdGroupListResponse::Config::BillingEvent::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdGroupListResponse::Config::BillingEvent::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # What the ad group optimizes for (e.g., conversions, link_clicks, reach).
        module OptimizationGoal
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONVERSIONS =
            T.let(
              :conversions,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          LINK_CLICKS =
            T.let(
              :link_clicks,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          LANDING_PAGE_VIEWS =
            T.let(
              :landing_page_views,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          REACH =
            T.let(
              :reach,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          IMPRESSIONS =
            T.let(
              :impressions,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          APP_INSTALLS =
            T.let(
              :app_installs,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          VIDEO_VIEWS =
            T.let(
              :video_views,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          LEAD_GENERATION =
            T.let(
              :lead_generation,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          VALUE =
            T.let(
              :value,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          PAGE_LIKES =
            T.let(
              :page_likes,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          CONVERSATIONS =
            T.let(
              :conversations,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          AD_RECALL_LIFT =
            T.let(
              :ad_recall_lift,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          TWO_SECOND_CONTINUOUS_VIDEO_VIEWS =
            T.let(
              :two_second_continuous_video_views,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          POST_ENGAGEMENT =
            T.let(
              :post_engagement,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          EVENT_RESPONSES =
            T.let(
              :event_responses,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          REMINDERS_SET =
            T.let(
              :reminders_set,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )
          QUALITY_LEAD =
            T.let(
              :quality_lead,
              WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdGroupListResponse::Config::OptimizationGoal::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Budget pacing: standard (even) or accelerated (fast).
        module Pacing
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::AdGroupListResponse::Config::Pacing
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDARD =
            T.let(
              :standard,
              WhopSDK::Models::AdGroupListResponse::Config::Pacing::TaggedSymbol
            )
          ACCELERATED =
            T.let(
              :accelerated,
              WhopSDK::Models::AdGroupListResponse::Config::Pacing::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdGroupListResponse::Config::Pacing::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Targeting < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdGroupListResponse::Config::Targeting,
                WhopSDK::Internal::AnyHash
              )
            end

          # Maximum age for demographic targeting.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :age_max

          # Minimum age for demographic targeting.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :age_min

          # ISO 3166-1 alpha-2 country codes targeted.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :countries

          # Device platforms targeted.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::Config::Targeting::DevicePlatform::TaggedSymbol
                ]
              )
            )
          end
          attr_accessor :device_platforms

          # Platform audience IDs excluded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :exclude_audience_ids

          # Genders targeted.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::Config::Targeting::Gender::TaggedSymbol
                ]
              )
            )
          end
          attr_accessor :genders

          # Platform audience IDs included.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include_audience_ids

          # Platform-specific interest IDs targeted.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :interest_ids

          # Language codes targeted.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :languages

          # Placement strategy for ad delivery.
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::Config::Targeting::PlacementType::TaggedSymbol
              )
            )
          end
          attr_accessor :placement_type

          # Audience targeting settings (demographics, geo, interests, audiences, devices).
          sig do
            params(
              age_max: T.nilable(Integer),
              age_min: T.nilable(Integer),
              countries: T.nilable(T::Array[String]),
              device_platforms:
                T.nilable(
                  T::Array[
                    WhopSDK::Models::AdGroupListResponse::Config::Targeting::DevicePlatform::OrSymbol
                  ]
                ),
              exclude_audience_ids: T.nilable(T::Array[String]),
              genders:
                T.nilable(
                  T::Array[
                    WhopSDK::Models::AdGroupListResponse::Config::Targeting::Gender::OrSymbol
                  ]
                ),
              include_audience_ids: T.nilable(T::Array[String]),
              interest_ids: T.nilable(T::Array[String]),
              languages: T.nilable(T::Array[String]),
              placement_type:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::Config::Targeting::PlacementType::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Maximum age for demographic targeting.
            age_max:,
            # Minimum age for demographic targeting.
            age_min:,
            # ISO 3166-1 alpha-2 country codes targeted.
            countries:,
            # Device platforms targeted.
            device_platforms:,
            # Platform audience IDs excluded.
            exclude_audience_ids:,
            # Genders targeted.
            genders:,
            # Platform audience IDs included.
            include_audience_ids:,
            # Platform-specific interest IDs targeted.
            interest_ids:,
            # Language codes targeted.
            languages:,
            # Placement strategy for ad delivery.
            placement_type:
          )
          end

          sig do
            override.returns(
              {
                age_max: T.nilable(Integer),
                age_min: T.nilable(Integer),
                countries: T.nilable(T::Array[String]),
                device_platforms:
                  T.nilable(
                    T::Array[
                      WhopSDK::Models::AdGroupListResponse::Config::Targeting::DevicePlatform::TaggedSymbol
                    ]
                  ),
                exclude_audience_ids: T.nilable(T::Array[String]),
                genders:
                  T.nilable(
                    T::Array[
                      WhopSDK::Models::AdGroupListResponse::Config::Targeting::Gender::TaggedSymbol
                    ]
                  ),
                include_audience_ids: T.nilable(T::Array[String]),
                interest_ids: T.nilable(T::Array[String]),
                languages: T.nilable(T::Array[String]),
                placement_type:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::Config::Targeting::PlacementType::TaggedSymbol
                  )
              }
            )
          end
          def to_hash
          end

          # Device platform targeting options.
          module DevicePlatform
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::Config::Targeting::DevicePlatform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MOBILE =
              T.let(
                :mobile,
                WhopSDK::Models::AdGroupListResponse::Config::Targeting::DevicePlatform::TaggedSymbol
              )
            DESKTOP =
              T.let(
                :desktop,
                WhopSDK::Models::AdGroupListResponse::Config::Targeting::DevicePlatform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::Config::Targeting::DevicePlatform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Gender targeting options.
          module Gender
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::Config::Targeting::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                WhopSDK::Models::AdGroupListResponse::Config::Targeting::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                WhopSDK::Models::AdGroupListResponse::Config::Targeting::Gender::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                WhopSDK::Models::AdGroupListResponse::Config::Targeting::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::Config::Targeting::Gender::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Placement strategy for ad delivery.
          module PlacementType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::Config::Targeting::PlacementType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTOMATIC =
              T.let(
                :automatic,
                WhopSDK::Models::AdGroupListResponse::Config::Targeting::PlacementType::TaggedSymbol
              )
            MANUAL =
              T.let(
                :manual,
                WhopSDK::Models::AdGroupListResponse::Config::Targeting::PlacementType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::Config::Targeting::PlacementType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # Typed platform-specific configuration. Use inline fragments (... on
      # MetaAdGroupPlatformConfigType).
      module PlatformConfig
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.nilable(
              T.any(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType
              )
            )
          end

        class MetaAdGroupPlatformConfigType < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
          attr_accessor :attribution_spec

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :bid_amount

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy::TaggedSymbol
              )
            )
          end
          attr_accessor :bid_strategy

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            )
          end
          attr_accessor :billing_event

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :daily_budget

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            )
          end
          attr_accessor :destination_type

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :end_time

          # Represents untyped JSON
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :excluded_geo_locations

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :facebook_positions

          # Represents untyped JSON
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :geo_locations

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :instagram_actor_id

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :instagram_positions

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lifetime_budget

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            )
          end
          attr_accessor :optimization_goal

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :page_id

          # The ad platform (meta, tiktok).
          sig do
            returns(
              WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Platform::TaggedSymbol
            )
          end
          attr_accessor :platform

          # Represents untyped JSON
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :promoted_object

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :publisher_platforms

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Status::TaggedSymbol
              )
            )
          end
          attr_accessor :status

          # Represents untyped JSON
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :targeting_automation

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # Meta (Facebook/Instagram) ad set configuration.
          sig do
            params(
              attribution_spec:
                T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
              bid_amount: T.nilable(Integer),
              bid_strategy:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy::OrSymbol
                ),
              billing_event:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::OrSymbol
                ),
              daily_budget: T.nilable(Integer),
              destination_type:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::OrSymbol
                ),
              end_time: T.nilable(String),
              excluded_geo_locations: T.nilable(T::Hash[Symbol, T.anything]),
              facebook_positions: T.nilable(T::Array[String]),
              geo_locations: T.nilable(T::Hash[Symbol, T.anything]),
              instagram_actor_id: T.nilable(String),
              instagram_positions: T.nilable(T::Array[String]),
              lifetime_budget: T.nilable(Integer),
              optimization_goal:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::OrSymbol
                ),
              page_id: T.nilable(String),
              platform:
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Platform::OrSymbol,
              promoted_object: T.nilable(T::Hash[Symbol, T.anything]),
              publisher_platforms: T.nilable(T::Array[String]),
              status:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Status::OrSymbol
                ),
              targeting_automation: T.nilable(T::Hash[Symbol, T.anything]),
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            attribution_spec:,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            bid_amount:,
            bid_strategy:,
            billing_event:,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            daily_budget:,
            destination_type:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            end_time:,
            # Represents untyped JSON
            excluded_geo_locations:,
            facebook_positions:,
            # Represents untyped JSON
            geo_locations:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            instagram_actor_id:,
            instagram_positions:,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            lifetime_budget:,
            optimization_goal:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            page_id:,
            # The ad platform (meta, tiktok).
            platform:,
            # Represents untyped JSON
            promoted_object:,
            publisher_platforms:,
            status:,
            # Represents untyped JSON
            targeting_automation:,
            # The typename of this object
            typename: :MetaAdGroupPlatformConfigType
          )
          end

          sig do
            override.returns(
              {
                attribution_spec:
                  T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
                bid_amount: T.nilable(Integer),
                bid_strategy:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy::TaggedSymbol
                  ),
                billing_event:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
                  ),
                daily_budget: T.nilable(Integer),
                destination_type:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
                  ),
                end_time: T.nilable(String),
                excluded_geo_locations: T.nilable(T::Hash[Symbol, T.anything]),
                facebook_positions: T.nilable(T::Array[String]),
                geo_locations: T.nilable(T::Hash[Symbol, T.anything]),
                instagram_actor_id: T.nilable(String),
                instagram_positions: T.nilable(T::Array[String]),
                lifetime_budget: T.nilable(Integer),
                optimization_goal:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
                  ),
                page_id: T.nilable(String),
                platform:
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Platform::TaggedSymbol,
                promoted_object: T.nilable(T::Hash[Symbol, T.anything]),
                publisher_platforms: T.nilable(T::Array[String]),
                status:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Status::TaggedSymbol
                  ),
                targeting_automation: T.nilable(T::Hash[Symbol, T.anything]),
                typename: Symbol
              }
            )
          end
          def to_hash
          end

          module BidStrategy
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOWEST_COST_WITHOUT_CAP =
              T.let(
                :LOWEST_COST_WITHOUT_CAP,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy::TaggedSymbol
              )
            LOWEST_COST_WITH_BID_CAP =
              T.let(
                :LOWEST_COST_WITH_BID_CAP,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy::TaggedSymbol
              )
            COST_CAP =
              T.let(
                :COST_CAP,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy::TaggedSymbol
              )
            LOWEST_COST_WITH_MIN_ROAS =
              T.let(
                :LOWEST_COST_WITH_MIN_ROAS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BidStrategy::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module BillingEvent
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APP_INSTALLS =
              T.let(
                :APP_INSTALLS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            CLICKS =
              T.let(
                :CLICKS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            IMPRESSIONS =
              T.let(
                :IMPRESSIONS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            LINK_CLICKS =
              T.let(
                :LINK_CLICKS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            NONE =
              T.let(
                :NONE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            OFFER_CLAIMS =
              T.let(
                :OFFER_CLAIMS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            PAGE_LIKES =
              T.let(
                :PAGE_LIKES,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            POST_ENGAGEMENT =
              T.let(
                :POST_ENGAGEMENT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            THRUPLAY =
              T.let(
                :THRUPLAY,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            PURCHASE =
              T.let(
                :PURCHASE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            LISTING_INTERACTION =
              T.let(
                :LISTING_INTERACTION,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module DestinationType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNDEFINED =
              T.let(
                :UNDEFINED,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            WEBSITE =
              T.let(
                :WEBSITE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            APP =
              T.let(
                :APP,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            FACEBOOK =
              T.let(
                :FACEBOOK,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            MESSENGER =
              T.let(
                :MESSENGER,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            WHATSAPP =
              T.let(
                :WHATSAPP,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            INSTAGRAM_DIRECT =
              T.let(
                :INSTAGRAM_DIRECT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            INSTAGRAM_PROFILE =
              T.let(
                :INSTAGRAM_PROFILE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            PHONE_CALL =
              T.let(
                :PHONE_CALL,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            SHOP_AUTOMATIC =
              T.let(
                :SHOP_AUTOMATIC,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            APPLINKS_AUTOMATIC =
              T.let(
                :APPLINKS_AUTOMATIC,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            ON_AD =
              T.let(
                :ON_AD,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            ON_POST =
              T.let(
                :ON_POST,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            ON_VIDEO =
              T.let(
                :ON_VIDEO,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            ON_PAGE =
              T.let(
                :ON_PAGE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            ON_EVENT =
              T.let(
                :ON_EVENT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            MESSAGING_MESSENGER_WHATSAPP =
              T.let(
                :MESSAGING_MESSENGER_WHATSAPP,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            MESSAGING_INSTAGRAM_DIRECT_MESSENGER =
              T.let(
                :MESSAGING_INSTAGRAM_DIRECT_MESSENGER,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            MESSAGING_INSTAGRAM_DIRECT_WHATSAPP =
              T.let(
                :MESSAGING_INSTAGRAM_DIRECT_WHATSAPP,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            MESSAGING_INSTAGRAM_DIRECT_MESSENGER_WHATSAPP =
              T.let(
                :MESSAGING_INSTAGRAM_DIRECT_MESSENGER_WHATSAPP,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            INSTAGRAM_PROFILE_AND_FACEBOOK_PAGE =
              T.let(
                :INSTAGRAM_PROFILE_AND_FACEBOOK_PAGE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            FACEBOOK_PAGE =
              T.let(
                :FACEBOOK_PAGE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            INSTAGRAM_LIVE =
              T.let(
                :INSTAGRAM_LIVE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            FACEBOOK_LIVE =
              T.let(
                :FACEBOOK_LIVE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            IMAGINE =
              T.let(
                :IMAGINE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            LEAD_FROM_IG_DIRECT =
              T.let(
                :LEAD_FROM_IG_DIRECT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            LEAD_FROM_MESSENGER =
              T.let(
                :LEAD_FROM_MESSENGER,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            WEBSITE_AND_LEAD_FORM =
              T.let(
                :WEBSITE_AND_LEAD_FORM,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            WEBSITE_AND_PHONE_CALL =
              T.let(
                :WEBSITE_AND_PHONE_CALL,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )
            BROADCAST_CHANNEL =
              T.let(
                :BROADCAST_CHANNEL,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::DestinationType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module OptimizationGoal
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            APP_INSTALLS =
              T.let(
                :APP_INSTALLS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            AD_RECALL_LIFT =
              T.let(
                :AD_RECALL_LIFT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            ENGAGED_USERS =
              T.let(
                :ENGAGED_USERS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            EVENT_RESPONSES =
              T.let(
                :EVENT_RESPONSES,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            IMPRESSIONS =
              T.let(
                :IMPRESSIONS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            LEAD_GENERATION =
              T.let(
                :LEAD_GENERATION,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            QUALITY_LEAD =
              T.let(
                :QUALITY_LEAD,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            LINK_CLICKS =
              T.let(
                :LINK_CLICKS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            OFFSITE_CONVERSIONS =
              T.let(
                :OFFSITE_CONVERSIONS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            PAGE_LIKES =
              T.let(
                :PAGE_LIKES,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            POST_ENGAGEMENT =
              T.let(
                :POST_ENGAGEMENT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            QUALITY_CALL =
              T.let(
                :QUALITY_CALL,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            REACH =
              T.let(
                :REACH,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            LANDING_PAGE_VIEWS =
              T.let(
                :LANDING_PAGE_VIEWS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            VISIT_INSTAGRAM_PROFILE =
              T.let(
                :VISIT_INSTAGRAM_PROFILE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            VALUE =
              T.let(
                :VALUE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            THRUPLAY =
              T.let(
                :THRUPLAY,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            DERIVED_EVENTS =
              T.let(
                :DERIVED_EVENTS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            APP_INSTALLS_AND_OFFSITE_CONVERSIONS =
              T.let(
                :APP_INSTALLS_AND_OFFSITE_CONVERSIONS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            CONVERSATIONS =
              T.let(
                :CONVERSATIONS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            IN_APP_VALUE =
              T.let(
                :IN_APP_VALUE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            MESSAGING_PURCHASE_CONVERSION =
              T.let(
                :MESSAGING_PURCHASE_CONVERSION,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            SUBSCRIBERS =
              T.let(
                :SUBSCRIBERS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            REMINDERS_SET =
              T.let(
                :REMINDERS_SET,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            MEANINGFUL_CALL_ATTEMPT =
              T.let(
                :MEANINGFUL_CALL_ATTEMPT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            PROFILE_VISIT =
              T.let(
                :PROFILE_VISIT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            PROFILE_AND_PAGE_ENGAGEMENT =
              T.let(
                :PROFILE_AND_PAGE_ENGAGEMENT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            TWO_SECOND_CONTINUOUS_VIDEO_VIEWS =
              T.let(
                :TWO_SECOND_CONTINUOUS_VIDEO_VIEWS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            ENGAGED_REACH =
              T.let(
                :ENGAGED_REACH,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            ENGAGED_PAGE_VIEWS =
              T.let(
                :ENGAGED_PAGE_VIEWS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            MESSAGING_DEEP_CONVERSATION_AND_FOLLOW =
              T.let(
                :MESSAGING_DEEP_CONVERSATION_AND_FOLLOW,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            ADVERTISER_SILOED_VALUE =
              T.let(
                :ADVERTISER_SILOED_VALUE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            AUTOMATIC_OBJECTIVE =
              T.let(
                :AUTOMATIC_OBJECTIVE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            MESSAGING_APPOINTMENT_CONVERSION =
              T.let(
                :MESSAGING_APPOINTMENT_CONVERSION,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The ad platform (meta, tiktok).
          module Platform
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            META =
              T.let(
                :meta,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Platform::TaggedSymbol
              )
            TIKTOK =
              T.let(
                :tiktok,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Platform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :ACTIVE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Status::TaggedSymbol
              )
            PAUSED =
              T.let(
                :PAUSED,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::MetaAdGroupPlatformConfigType::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class TiktokAdGroupPlatformConfigType < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType,
                WhopSDK::Internal::AnyHash
              )
            end

          # Represents signed double-precision fractional values as specified by
          # [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).
          sig { returns(T.nilable(Float)) }
          attr_accessor :bid_price

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BidType::TaggedSymbol
              )
            )
          end
          attr_accessor :bid_type

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            )
          end
          attr_accessor :billing_event

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode::TaggedSymbol
              )
            )
          end
          attr_accessor :budget_mode

          # Represents signed double-precision fractional values as specified by
          # [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).
          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_bid_price

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :identity_id

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :identity_type

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OperationStatus::TaggedSymbol
              )
            )
          end
          attr_accessor :operation_status

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :optimization_event

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            )
          end
          attr_accessor :optimization_goal

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Pacing::TaggedSymbol
              )
            )
          end
          attr_accessor :pacing

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :pixel_id

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::PlacementType::TaggedSymbol
              )
            )
          end
          attr_accessor :placement_type

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :placements

          # The ad platform (meta, tiktok).
          sig do
            returns(
              WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Platform::TaggedSymbol
            )
          end
          attr_accessor :platform

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :schedule_end_time

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :schedule_start_time

          sig do
            returns(
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::ScheduleType::TaggedSymbol
              )
            )
          end
          attr_accessor :schedule_type

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # TikTok ad group configuration.
          sig do
            params(
              bid_price: T.nilable(Float),
              bid_type:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BidType::OrSymbol
                ),
              billing_event:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent::OrSymbol
                ),
              budget_mode:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode::OrSymbol
                ),
              conversion_bid_price: T.nilable(Float),
              identity_id: T.nilable(String),
              identity_type: T.nilable(String),
              operation_status:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OperationStatus::OrSymbol
                ),
              optimization_event: T.nilable(String),
              optimization_goal:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::OrSymbol
                ),
              pacing:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Pacing::OrSymbol
                ),
              pixel_id: T.nilable(String),
              placement_type:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::PlacementType::OrSymbol
                ),
              placements: T.nilable(T::Array[String]),
              platform:
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Platform::OrSymbol,
              schedule_end_time: T.nilable(String),
              schedule_start_time: T.nilable(String),
              schedule_type:
                T.nilable(
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::ScheduleType::OrSymbol
                ),
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Represents signed double-precision fractional values as specified by
            # [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).
            bid_price:,
            bid_type:,
            billing_event:,
            budget_mode:,
            # Represents signed double-precision fractional values as specified by
            # [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).
            conversion_bid_price:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            identity_id:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            identity_type:,
            operation_status:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            optimization_event:,
            optimization_goal:,
            pacing:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            pixel_id:,
            placement_type:,
            placements:,
            # The ad platform (meta, tiktok).
            platform:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            schedule_end_time:,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            schedule_start_time:,
            schedule_type:,
            # The typename of this object
            typename: :TiktokAdGroupPlatformConfigType
          )
          end

          sig do
            override.returns(
              {
                bid_price: T.nilable(Float),
                bid_type:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BidType::TaggedSymbol
                  ),
                billing_event:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
                  ),
                budget_mode:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode::TaggedSymbol
                  ),
                conversion_bid_price: T.nilable(Float),
                identity_id: T.nilable(String),
                identity_type: T.nilable(String),
                operation_status:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OperationStatus::TaggedSymbol
                  ),
                optimization_event: T.nilable(String),
                optimization_goal:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
                  ),
                pacing:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Pacing::TaggedSymbol
                  ),
                pixel_id: T.nilable(String),
                placement_type:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::PlacementType::TaggedSymbol
                  ),
                placements: T.nilable(T::Array[String]),
                platform:
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Platform::TaggedSymbol,
                schedule_end_time: T.nilable(String),
                schedule_start_time: T.nilable(String),
                schedule_type:
                  T.nilable(
                    WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::ScheduleType::TaggedSymbol
                  ),
                typename: Symbol
              }
            )
          end
          def to_hash
          end

          module BidType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BidType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BID_TYPE_NO_BID =
              T.let(
                :BID_TYPE_NO_BID,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BidType::TaggedSymbol
              )
            BID_TYPE_CUSTOM =
              T.let(
                :BID_TYPE_CUSTOM,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BidType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BidType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module BillingEvent
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CPC =
              T.let(
                :CPC,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            CPM =
              T.let(
                :CPM,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            OCPM =
              T.let(
                :OCPM,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )
            CPV =
              T.let(
                :CPV,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BillingEvent::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module BudgetMode
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUDGET_MODE_DAY =
              T.let(
                :BUDGET_MODE_DAY,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode::TaggedSymbol
              )
            BUDGET_MODE_TOTAL =
              T.let(
                :BUDGET_MODE_TOTAL,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode::TaggedSymbol
              )
            BUDGET_MODE_DYNAMIC_DAILY_BUDGET =
              T.let(
                :BUDGET_MODE_DYNAMIC_DAILY_BUDGET,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::BudgetMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module OperationStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OperationStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLE =
              T.let(
                :ENABLE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OperationStatus::TaggedSymbol
              )
            DISABLE =
              T.let(
                :DISABLE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OperationStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OperationStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module OptimizationGoal
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CLICK =
              T.let(
                :CLICK,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            CONVERT =
              T.let(
                :CONVERT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            INSTALL =
              T.let(
                :INSTALL,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            IN_APP_EVENT =
              T.let(
                :IN_APP_EVENT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            REACH =
              T.let(
                :REACH,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            SHOW =
              T.let(
                :SHOW,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            VIDEO_VIEW =
              T.let(
                :VIDEO_VIEW,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            ENGAGED_VIEW =
              T.let(
                :ENGAGED_VIEW,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            ENGAGED_VIEW_FIFTEEN =
              T.let(
                :ENGAGED_VIEW_FIFTEEN,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            LEAD_GENERATION =
              T.let(
                :LEAD_GENERATION,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            PREFERRED_LEAD =
              T.let(
                :PREFERRED_LEAD,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            CONVERSATION =
              T.let(
                :CONVERSATION,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            FOLLOWERS =
              T.let(
                :FOLLOWERS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            PROFILE_VIEWS =
              T.let(
                :PROFILE_VIEWS,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            PAGE_VISIT =
              T.let(
                :PAGE_VISIT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            VALUE =
              T.let(
                :VALUE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            AUTOMATIC_VALUE_OPTIMIZATION =
              T.let(
                :AUTOMATIC_VALUE_OPTIMIZATION,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            TRAFFIC_LANDING_PAGE_VIEW =
              T.let(
                :TRAFFIC_LANDING_PAGE_VIEW,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            DESTINATION_VISIT =
              T.let(
                :DESTINATION_VISIT,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            MT_LIVE_ROOM =
              T.let(
                :MT_LIVE_ROOM,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )
            PRODUCT_CLICK_IN_LIVE =
              T.let(
                :PRODUCT_CLICK_IN_LIVE,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::OptimizationGoal::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Pacing
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Pacing
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PACING_MODE_SMOOTH =
              T.let(
                :PACING_MODE_SMOOTH,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Pacing::TaggedSymbol
              )
            PACING_MODE_FAST =
              T.let(
                :PACING_MODE_FAST,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Pacing::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Pacing::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module PlacementType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::PlacementType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PLACEMENT_TYPE_AUTOMATIC =
              T.let(
                :PLACEMENT_TYPE_AUTOMATIC,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::PlacementType::TaggedSymbol
              )
            PLACEMENT_TYPE_NORMAL =
              T.let(
                :PLACEMENT_TYPE_NORMAL,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::PlacementType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::PlacementType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The ad platform (meta, tiktok).
          module Platform
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            META =
              T.let(
                :meta,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Platform::TaggedSymbol
              )
            TIKTOK =
              T.let(
                :tiktok,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::Platform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ScheduleType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::ScheduleType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SCHEDULE_START_END =
              T.let(
                :SCHEDULE_START_END,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::ScheduleType::TaggedSymbol
              )
            SCHEDULE_FROM_NOW =
              T.let(
                :SCHEDULE_FROM_NOW,
                WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::ScheduleType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::AdGroupListResponse::PlatformConfig::TiktokAdGroupPlatformConfigType::ScheduleType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdGroupListResponse::PlatformConfig::Variants
            ]
          )
        end
        def self.variants
        end
      end

      # Current operational status of the ad group
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdGroupListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(
            :flagged,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
