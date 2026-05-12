# typed: strong

module WhopSDK
  module Models
    class AdGroupUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdGroupUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Budget amount in dollars.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      # The budget type for an ad campaign or ad group.
      sig do
        returns(T.nilable(WhopSDK::AdGroupUpdateParams::BudgetType::OrSymbol))
      end
      attr_accessor :budget_type

      # Unified ad group configuration (bidding, optimization, targeting).
      sig { returns(T.nilable(WhopSDK::AdGroupUpdateParams::Config)) }
      attr_reader :config

      sig do
        params(
          config: T.nilable(WhopSDK::AdGroupUpdateParams::Config::OrHash)
        ).void
      end
      attr_writer :config

      # Daily budget in dollars.
      sig { returns(T.nilable(Float)) }
      attr_accessor :daily_budget

      # Human-readable ad group name.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Platform-specific ad group configuration.
      sig { returns(T.nilable(WhopSDK::AdGroupUpdateParams::PlatformConfig)) }
      attr_reader :platform_config

      sig do
        params(
          platform_config:
            T.nilable(WhopSDK::AdGroupUpdateParams::PlatformConfig::OrHash)
        ).void
      end
      attr_writer :platform_config

      # The status of an external ad group.
      sig { returns(T.nilable(WhopSDK::AdGroupUpdateParams::Status::OrSymbol)) }
      attr_accessor :status

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
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
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

      sig do
        override.returns(
          {
            id: String,
            budget: T.nilable(Float),
            budget_type:
              T.nilable(WhopSDK::AdGroupUpdateParams::BudgetType::OrSymbol),
            config: T.nilable(WhopSDK::AdGroupUpdateParams::Config),
            daily_budget: T.nilable(Float),
            name: T.nilable(String),
            platform_config:
              T.nilable(WhopSDK::AdGroupUpdateParams::PlatformConfig),
            status: T.nilable(WhopSDK::AdGroupUpdateParams::Status::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The budget type for an ad campaign or ad group.
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupUpdateParams::BudgetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(:daily, WhopSDK::AdGroupUpdateParams::BudgetType::TaggedSymbol)
        LIFETIME =
          T.let(
            :lifetime,
            WhopSDK::AdGroupUpdateParams::BudgetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupUpdateParams::BudgetType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Config < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::Config,
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
              WhopSDK::AdGroupUpdateParams::Config::BidStrategy::OrSymbol
            )
          )
        end
        attr_accessor :bid_strategy

        # How you are billed (e.g., impressions, clicks).
        sig do
          returns(
            T.nilable(
              WhopSDK::AdGroupUpdateParams::Config::BillingEvent::OrSymbol
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
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::OrSymbol
            )
          )
        end
        attr_accessor :optimization_goal

        # Budget pacing: standard (even) or accelerated (fast).
        sig do
          returns(
            T.nilable(WhopSDK::AdGroupUpdateParams::Config::Pacing::OrSymbol)
          )
        end
        attr_accessor :pacing

        # Scheduled start time (ISO8601).
        sig { returns(T.nilable(String)) }
        attr_accessor :start_time

        # Audience targeting settings (demographics, geo, interests, audiences, devices).
        sig do
          returns(T.nilable(WhopSDK::AdGroupUpdateParams::Config::Targeting))
        end
        attr_reader :targeting

        sig do
          params(
            targeting:
              T.nilable(WhopSDK::AdGroupUpdateParams::Config::Targeting::OrHash)
          ).void
        end
        attr_writer :targeting

        # Unified ad group configuration (bidding, optimization, targeting).
        sig do
          params(
            bid_amount: T.nilable(Integer),
            bid_strategy:
              T.nilable(
                WhopSDK::AdGroupUpdateParams::Config::BidStrategy::OrSymbol
              ),
            billing_event:
              T.nilable(
                WhopSDK::AdGroupUpdateParams::Config::BillingEvent::OrSymbol
              ),
            end_time: T.nilable(String),
            frequency_cap: T.nilable(Integer),
            frequency_cap_interval_days: T.nilable(Integer),
            optimization_goal:
              T.nilable(
                WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::OrSymbol
              ),
            pacing:
              T.nilable(WhopSDK::AdGroupUpdateParams::Config::Pacing::OrSymbol),
            start_time: T.nilable(String),
            targeting:
              T.nilable(WhopSDK::AdGroupUpdateParams::Config::Targeting::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # Bid cap amount in cents. Used when bid_strategy is bid_cap or cost_cap.
          bid_amount: nil,
          # Bid strategy: lowest_cost, bid_cap, or cost_cap.
          bid_strategy: nil,
          # How you are billed (e.g., impressions, clicks).
          billing_event: nil,
          # Scheduled end time (ISO8601). Required for lifetime budgets.
          end_time: nil,
          # Maximum number of times to show ads to each person in the frequency interval.
          frequency_cap: nil,
          # Number of days for the frequency cap interval.
          frequency_cap_interval_days: nil,
          # What the ad group optimizes for (e.g., conversions, link_clicks, reach).
          optimization_goal: nil,
          # Budget pacing: standard (even) or accelerated (fast).
          pacing: nil,
          # Scheduled start time (ISO8601).
          start_time: nil,
          # Audience targeting settings (demographics, geo, interests, audiences, devices).
          targeting: nil
        )
        end

        sig do
          override.returns(
            {
              bid_amount: T.nilable(Integer),
              bid_strategy:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::Config::BidStrategy::OrSymbol
                ),
              billing_event:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::Config::BillingEvent::OrSymbol
                ),
              end_time: T.nilable(String),
              frequency_cap: T.nilable(Integer),
              frequency_cap_interval_days: T.nilable(Integer),
              optimization_goal:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::OrSymbol
                ),
              pacing:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::Config::Pacing::OrSymbol
                ),
              start_time: T.nilable(String),
              targeting:
                T.nilable(WhopSDK::AdGroupUpdateParams::Config::Targeting)
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
              T.all(Symbol, WhopSDK::AdGroupUpdateParams::Config::BidStrategy)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOWEST_COST =
            T.let(
              :lowest_cost,
              WhopSDK::AdGroupUpdateParams::Config::BidStrategy::TaggedSymbol
            )
          BID_CAP =
            T.let(
              :bid_cap,
              WhopSDK::AdGroupUpdateParams::Config::BidStrategy::TaggedSymbol
            )
          COST_CAP =
            T.let(
              :cost_cap,
              WhopSDK::AdGroupUpdateParams::Config::BidStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdGroupUpdateParams::Config::BidStrategy::TaggedSymbol
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
              T.all(Symbol, WhopSDK::AdGroupUpdateParams::Config::BillingEvent)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IMPRESSIONS =
            T.let(
              :impressions,
              WhopSDK::AdGroupUpdateParams::Config::BillingEvent::TaggedSymbol
            )
          CLICKS =
            T.let(
              :clicks,
              WhopSDK::AdGroupUpdateParams::Config::BillingEvent::TaggedSymbol
            )
          OPTIMIZED_CPM =
            T.let(
              :optimized_cpm,
              WhopSDK::AdGroupUpdateParams::Config::BillingEvent::TaggedSymbol
            )
          VIDEO_VIEWS =
            T.let(
              :video_views,
              WhopSDK::AdGroupUpdateParams::Config::BillingEvent::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdGroupUpdateParams::Config::BillingEvent::TaggedSymbol
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
                WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONVERSIONS =
            T.let(
              :conversions,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          LINK_CLICKS =
            T.let(
              :link_clicks,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          LANDING_PAGE_VIEWS =
            T.let(
              :landing_page_views,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          REACH =
            T.let(
              :reach,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          IMPRESSIONS =
            T.let(
              :impressions,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          APP_INSTALLS =
            T.let(
              :app_installs,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          VIDEO_VIEWS =
            T.let(
              :video_views,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          LEAD_GENERATION =
            T.let(
              :lead_generation,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          VALUE =
            T.let(
              :value,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          PAGE_LIKES =
            T.let(
              :page_likes,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          CONVERSATIONS =
            T.let(
              :conversations,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          AD_RECALL_LIFT =
            T.let(
              :ad_recall_lift,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          TWO_SECOND_CONTINUOUS_VIDEO_VIEWS =
            T.let(
              :two_second_continuous_video_views,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          POST_ENGAGEMENT =
            T.let(
              :post_engagement,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          EVENT_RESPONSES =
            T.let(
              :event_responses,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          REMINDERS_SET =
            T.let(
              :reminders_set,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )
          QUALITY_LEAD =
            T.let(
              :quality_lead,
              WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdGroupUpdateParams::Config::OptimizationGoal::TaggedSymbol
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
              T.all(Symbol, WhopSDK::AdGroupUpdateParams::Config::Pacing)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDARD =
            T.let(
              :standard,
              WhopSDK::AdGroupUpdateParams::Config::Pacing::TaggedSymbol
            )
          ACCELERATED =
            T.let(
              :accelerated,
              WhopSDK::AdGroupUpdateParams::Config::Pacing::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdGroupUpdateParams::Config::Pacing::TaggedSymbol
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
                WhopSDK::AdGroupUpdateParams::Config::Targeting,
                WhopSDK::Internal::AnyHash
              )
            end

          # Maximum age for demographic targeting.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :age_max

          # Minimum age for demographic targeting.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :age_min

          # ISO 3166-1 alpha-2 country codes to target.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :countries

          # Device platforms to target.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Config::Targeting::DevicePlatform::OrSymbol
                ]
              )
            )
          end
          attr_accessor :device_platforms

          # Platform audience IDs to exclude.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :exclude_audience_ids

          # Genders to target.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Config::Targeting::Gender::OrSymbol
                ]
              )
            )
          end
          attr_accessor :genders

          # Platform audience IDs to include.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :include_audience_ids

          # Platform-specific interest IDs to target.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :interest_ids

          # Language codes to target.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :languages

          # Placement strategy for ad delivery.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::Config::Targeting::PlacementType::OrSymbol
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
                    WhopSDK::AdGroupUpdateParams::Config::Targeting::DevicePlatform::OrSymbol
                  ]
                ),
              exclude_audience_ids: T.nilable(T::Array[String]),
              genders:
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::Config::Targeting::Gender::OrSymbol
                  ]
                ),
              include_audience_ids: T.nilable(T::Array[String]),
              interest_ids: T.nilable(T::Array[String]),
              languages: T.nilable(T::Array[String]),
              placement_type:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::Config::Targeting::PlacementType::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Maximum age for demographic targeting.
            age_max: nil,
            # Minimum age for demographic targeting.
            age_min: nil,
            # ISO 3166-1 alpha-2 country codes to target.
            countries: nil,
            # Device platforms to target.
            device_platforms: nil,
            # Platform audience IDs to exclude.
            exclude_audience_ids: nil,
            # Genders to target.
            genders: nil,
            # Platform audience IDs to include.
            include_audience_ids: nil,
            # Platform-specific interest IDs to target.
            interest_ids: nil,
            # Language codes to target.
            languages: nil,
            # Placement strategy for ad delivery.
            placement_type: nil
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
                      WhopSDK::AdGroupUpdateParams::Config::Targeting::DevicePlatform::OrSymbol
                    ]
                  ),
                exclude_audience_ids: T.nilable(T::Array[String]),
                genders:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::Config::Targeting::Gender::OrSymbol
                    ]
                  ),
                include_audience_ids: T.nilable(T::Array[String]),
                interest_ids: T.nilable(T::Array[String]),
                languages: T.nilable(T::Array[String]),
                placement_type:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::Config::Targeting::PlacementType::OrSymbol
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
                  WhopSDK::AdGroupUpdateParams::Config::Targeting::DevicePlatform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MOBILE =
              T.let(
                :mobile,
                WhopSDK::AdGroupUpdateParams::Config::Targeting::DevicePlatform::TaggedSymbol
              )
            DESKTOP =
              T.let(
                :desktop,
                WhopSDK::AdGroupUpdateParams::Config::Targeting::DevicePlatform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Config::Targeting::DevicePlatform::TaggedSymbol
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
                  WhopSDK::AdGroupUpdateParams::Config::Targeting::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                WhopSDK::AdGroupUpdateParams::Config::Targeting::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                WhopSDK::AdGroupUpdateParams::Config::Targeting::Gender::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                WhopSDK::AdGroupUpdateParams::Config::Targeting::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Config::Targeting::Gender::TaggedSymbol
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
                  WhopSDK::AdGroupUpdateParams::Config::Targeting::PlacementType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTOMATIC =
              T.let(
                :automatic,
                WhopSDK::AdGroupUpdateParams::Config::Targeting::PlacementType::TaggedSymbol
              )
            MANUAL =
              T.let(
                :manual,
                WhopSDK::AdGroupUpdateParams::Config::Targeting::PlacementType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Config::Targeting::PlacementType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class PlatformConfig < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::PlatformConfig,
              WhopSDK::Internal::AnyHash
            )
          end

        # Meta (Facebook/Instagram) ad set configuration.
        sig do
          returns(T.nilable(WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta))
        end
        attr_reader :meta

        sig do
          params(
            meta:
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OrHash
              )
          ).void
        end
        attr_writer :meta

        # TikTok ad group configuration.
        sig do
          returns(
            T.nilable(WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok)
          )
        end
        attr_reader :tiktok

        sig do
          params(
            tiktok:
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OrHash
              )
          ).void
        end
        attr_writer :tiktok

        # Platform-specific ad group configuration.
        sig do
          params(
            meta:
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OrHash
              ),
            tiktok:
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Meta (Facebook/Instagram) ad set configuration.
          meta: nil,
          # TikTok ad group configuration.
          tiktok: nil
        )
        end

        sig do
          override.returns(
            {
              meta:
                T.nilable(WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta),
              tiktok:
                T.nilable(WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok)
            }
          )
        end
        def to_hash
        end

        class Meta < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta,
                WhopSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :android_devices

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :attribution_setting

          # Conversion attribution windows.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::AttributionSpec
                ]
              )
            )
          end
          attr_accessor :attribution_spec

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :audience_network_positions

          # Audience type for retargeting.
          sig { returns(T.nilable(String)) }
          attr_accessor :audience_type

          # Bid amount in cents.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :bid_amount

          # Meta bid strategy.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy::OrSymbol
              )
            )
          end
          attr_accessor :bid_strategy

          # How you are billed on Meta.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::OrSymbol
              )
            )
          end
          attr_accessor :billing_event

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :brand_safety_content_filter_levels

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :budget_remaining

          # Represents signed double-precision fractional values as specified by
          # [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).
          sig { returns(T.nilable(Float)) }
          attr_accessor :cost_per_result_goal

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_time

          # Daily budget in cents.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :daily_budget

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :daily_min_spend_target

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :daily_spend_cap

          # Where ads in this ad set direct people.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::OrSymbol
              )
            )
          end
          attr_accessor :destination_type

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :dsa_beneficiary

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :dsa_payor

          # End time (ISO8601). Required for lifetime budgets.
          sig { returns(T.nilable(String)) }
          attr_accessor :end_time

          # Geo locations to exclude.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations
              )
            )
          end
          attr_reader :excluded_geo_locations

          sig do
            params(
              excluded_geo_locations:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::OrHash
                )
            ).void
          end
          attr_writer :excluded_geo_locations

          # Facebook ad placements (feed, reels, stories, etc.).
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :facebook_positions

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :frequency_control_count

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :frequency_control_days

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :frequency_control_type

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoCity
                ]
              )
            )
          end
          attr_accessor :geo_cities

          # Geo targeting (countries, regions, cities, zips).
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations
              )
            )
          end
          attr_reader :geo_locations

          sig do
            params(
              geo_locations:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::OrHash
                )
            ).void
          end
          attr_writer :geo_locations

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoRegion
                ]
              )
            )
          end
          attr_accessor :geo_regions

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :geo_zips

          # Instagram account ID for this ad set.
          sig { returns(T.nilable(String)) }
          attr_accessor :instagram_actor_id

          # Instagram ad placements (stream, story, reels, etc.).
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :instagram_positions

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :ios_devices

          # Represents `true` or `false` values.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_dynamic_creative

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation::OrSymbol
              )
            )
          end
          attr_accessor :lead_conversion_location

          # Configuration for a Meta lead gen instant form.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig
              )
            )
          end
          attr_reader :lead_form_config

          sig do
            params(
              lead_form_config:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::OrHash
                )
            ).void
          end
          attr_writer :lead_form_config

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :lead_gen_form_id

          # Lifetime budget in cents.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lifetime_budget

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :lifetime_min_spend_target

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :lifetime_spend_cap

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :location_types

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :messenger_positions

          # What this ad set optimizes for on Meta.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::OrSymbol
              )
            )
          end
          attr_accessor :optimization_goal

          # Facebook Page ID for this ad set.
          sig { returns(T.nilable(String)) }
          attr_accessor :page_id

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :pixel_id

          # The object this ad set promotes (pixel, page, etc.).
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::PromotedObject
              )
            )
          end
          attr_reader :promoted_object

          sig do
            params(
              promoted_object:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::PromotedObject::OrHash
                )
            ).void
          end
          attr_writer :promoted_object

          # Platforms to publish on (facebook, instagram, messenger, audience_network).
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :publisher_platforms

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :source_adset_id

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :start_time

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::Status::OrSymbol
              )
            )
          end
          attr_accessor :status

          # Advantage+ audience expansion settings.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::TargetingAutomation
              )
            )
          end
          attr_reader :targeting_automation

          sig do
            params(
              targeting_automation:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::TargetingAutomation::OrHash
                )
            ).void
          end
          attr_writer :targeting_automation

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :threads_positions

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :updated_time

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :user_device

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :user_os

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :whatsapp_phone_number

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :whatsapp_positions

          # Meta (Facebook/Instagram) ad set configuration.
          sig do
            params(
              android_devices: T.nilable(T::Array[String]),
              attribution_setting: T.nilable(String),
              attribution_spec:
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::AttributionSpec::OrHash
                  ]
                ),
              audience_network_positions: T.nilable(T::Array[String]),
              audience_type: T.nilable(String),
              bid_amount: T.nilable(Integer),
              bid_strategy:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy::OrSymbol
                ),
              billing_event:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::OrSymbol
                ),
              brand_safety_content_filter_levels: T.nilable(T::Array[String]),
              budget_remaining: T.nilable(String),
              cost_per_result_goal: T.nilable(Float),
              created_time: T.nilable(String),
              daily_budget: T.nilable(Integer),
              daily_min_spend_target: T.nilable(String),
              daily_spend_cap: T.nilable(String),
              destination_type:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::OrSymbol
                ),
              dsa_beneficiary: T.nilable(String),
              dsa_payor: T.nilable(String),
              end_time: T.nilable(String),
              excluded_geo_locations:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::OrHash
                ),
              facebook_positions: T.nilable(T::Array[String]),
              frequency_control_count: T.nilable(Integer),
              frequency_control_days: T.nilable(Integer),
              frequency_control_type: T.nilable(String),
              geo_cities:
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoCity::OrHash
                  ]
                ),
              geo_locations:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::OrHash
                ),
              geo_regions:
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoRegion::OrHash
                  ]
                ),
              geo_zips: T.nilable(T::Array[String]),
              instagram_actor_id: T.nilable(String),
              instagram_positions: T.nilable(T::Array[String]),
              ios_devices: T.nilable(T::Array[String]),
              is_dynamic_creative: T.nilable(T::Boolean),
              lead_conversion_location:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation::OrSymbol
                ),
              lead_form_config:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::OrHash
                ),
              lead_gen_form_id: T.nilable(String),
              lifetime_budget: T.nilable(Integer),
              lifetime_min_spend_target: T.nilable(String),
              lifetime_spend_cap: T.nilable(String),
              location_types: T.nilable(T::Array[String]),
              messenger_positions: T.nilable(T::Array[String]),
              optimization_goal:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::OrSymbol
                ),
              page_id: T.nilable(String),
              pixel_id: T.nilable(String),
              promoted_object:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::PromotedObject::OrHash
                ),
              publisher_platforms: T.nilable(T::Array[String]),
              source_adset_id: T.nilable(String),
              start_time: T.nilable(String),
              status:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::Status::OrSymbol
                ),
              targeting_automation:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::TargetingAutomation::OrHash
                ),
              threads_positions: T.nilable(T::Array[String]),
              updated_time: T.nilable(String),
              user_device: T.nilable(T::Array[String]),
              user_os: T.nilable(T::Array[String]),
              whatsapp_phone_number: T.nilable(String),
              whatsapp_positions: T.nilable(T::Array[String])
            ).returns(T.attached_class)
          end
          def self.new(
            android_devices: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            attribution_setting: nil,
            # Conversion attribution windows.
            attribution_spec: nil,
            audience_network_positions: nil,
            # Audience type for retargeting.
            audience_type: nil,
            # Bid amount in cents.
            bid_amount: nil,
            # Meta bid strategy.
            bid_strategy: nil,
            # How you are billed on Meta.
            billing_event: nil,
            brand_safety_content_filter_levels: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            budget_remaining: nil,
            # Represents signed double-precision fractional values as specified by
            # [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).
            cost_per_result_goal: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            created_time: nil,
            # Daily budget in cents.
            daily_budget: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            daily_min_spend_target: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            daily_spend_cap: nil,
            # Where ads in this ad set direct people.
            destination_type: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            dsa_beneficiary: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            dsa_payor: nil,
            # End time (ISO8601). Required for lifetime budgets.
            end_time: nil,
            # Geo locations to exclude.
            excluded_geo_locations: nil,
            # Facebook ad placements (feed, reels, stories, etc.).
            facebook_positions: nil,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            frequency_control_count: nil,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            frequency_control_days: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            frequency_control_type: nil,
            geo_cities: nil,
            # Geo targeting (countries, regions, cities, zips).
            geo_locations: nil,
            geo_regions: nil,
            geo_zips: nil,
            # Instagram account ID for this ad set.
            instagram_actor_id: nil,
            # Instagram ad placements (stream, story, reels, etc.).
            instagram_positions: nil,
            ios_devices: nil,
            # Represents `true` or `false` values.
            is_dynamic_creative: nil,
            lead_conversion_location: nil,
            # Configuration for a Meta lead gen instant form.
            lead_form_config: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            lead_gen_form_id: nil,
            # Lifetime budget in cents.
            lifetime_budget: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            lifetime_min_spend_target: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            lifetime_spend_cap: nil,
            location_types: nil,
            messenger_positions: nil,
            # What this ad set optimizes for on Meta.
            optimization_goal: nil,
            # Facebook Page ID for this ad set.
            page_id: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            pixel_id: nil,
            # The object this ad set promotes (pixel, page, etc.).
            promoted_object: nil,
            # Platforms to publish on (facebook, instagram, messenger, audience_network).
            publisher_platforms: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            source_adset_id: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            start_time: nil,
            status: nil,
            # Advantage+ audience expansion settings.
            targeting_automation: nil,
            threads_positions: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            updated_time: nil,
            user_device: nil,
            user_os: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            whatsapp_phone_number: nil,
            whatsapp_positions: nil
          )
          end

          sig do
            override.returns(
              {
                android_devices: T.nilable(T::Array[String]),
                attribution_setting: T.nilable(String),
                attribution_spec:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::AttributionSpec
                    ]
                  ),
                audience_network_positions: T.nilable(T::Array[String]),
                audience_type: T.nilable(String),
                bid_amount: T.nilable(Integer),
                bid_strategy:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy::OrSymbol
                  ),
                billing_event:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::OrSymbol
                  ),
                brand_safety_content_filter_levels: T.nilable(T::Array[String]),
                budget_remaining: T.nilable(String),
                cost_per_result_goal: T.nilable(Float),
                created_time: T.nilable(String),
                daily_budget: T.nilable(Integer),
                daily_min_spend_target: T.nilable(String),
                daily_spend_cap: T.nilable(String),
                destination_type:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::OrSymbol
                  ),
                dsa_beneficiary: T.nilable(String),
                dsa_payor: T.nilable(String),
                end_time: T.nilable(String),
                excluded_geo_locations:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations
                  ),
                facebook_positions: T.nilable(T::Array[String]),
                frequency_control_count: T.nilable(Integer),
                frequency_control_days: T.nilable(Integer),
                frequency_control_type: T.nilable(String),
                geo_cities:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoCity
                    ]
                  ),
                geo_locations:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations
                  ),
                geo_regions:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoRegion
                    ]
                  ),
                geo_zips: T.nilable(T::Array[String]),
                instagram_actor_id: T.nilable(String),
                instagram_positions: T.nilable(T::Array[String]),
                ios_devices: T.nilable(T::Array[String]),
                is_dynamic_creative: T.nilable(T::Boolean),
                lead_conversion_location:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation::OrSymbol
                  ),
                lead_form_config:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig
                  ),
                lead_gen_form_id: T.nilable(String),
                lifetime_budget: T.nilable(Integer),
                lifetime_min_spend_target: T.nilable(String),
                lifetime_spend_cap: T.nilable(String),
                location_types: T.nilable(T::Array[String]),
                messenger_positions: T.nilable(T::Array[String]),
                optimization_goal:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::OrSymbol
                  ),
                page_id: T.nilable(String),
                pixel_id: T.nilable(String),
                promoted_object:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::PromotedObject
                  ),
                publisher_platforms: T.nilable(T::Array[String]),
                source_adset_id: T.nilable(String),
                start_time: T.nilable(String),
                status:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::Status::OrSymbol
                  ),
                targeting_automation:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::TargetingAutomation
                  ),
                threads_positions: T.nilable(T::Array[String]),
                updated_time: T.nilable(String),
                user_device: T.nilable(T::Array[String]),
                user_os: T.nilable(T::Array[String]),
                whatsapp_phone_number: T.nilable(String),
                whatsapp_positions: T.nilable(T::Array[String])
              }
            )
          end
          def to_hash
          end

          class AttributionSpec < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::AttributionSpec,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Attribution event type (e.g., CLICK_THROUGH, VIEW_THROUGH).
            sig { returns(String) }
            attr_accessor :event_type

            # Attribution window in days (1, 7, 28).
            sig { returns(Integer) }
            attr_accessor :window_days

            # Meta conversion attribution window.
            sig do
              params(event_type: String, window_days: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # Attribution event type (e.g., CLICK_THROUGH, VIEW_THROUGH).
              event_type:,
              # Attribution window in days (1, 7, 28).
              window_days:
            )
            end

            sig do
              override.returns({ event_type: String, window_days: Integer })
            end
            def to_hash
            end
          end

          # Meta bid strategy.
          module BidStrategy
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOWEST_COST_WITHOUT_CAP =
              T.let(
                :LOWEST_COST_WITHOUT_CAP,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy::TaggedSymbol
              )
            LOWEST_COST_WITH_BID_CAP =
              T.let(
                :LOWEST_COST_WITH_BID_CAP,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy::TaggedSymbol
              )
            COST_CAP =
              T.let(
                :COST_CAP,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy::TaggedSymbol
              )
            LOWEST_COST_WITH_MIN_ROAS =
              T.let(
                :LOWEST_COST_WITH_MIN_ROAS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BidStrategy::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # How you are billed on Meta.
          module BillingEvent
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APP_INSTALLS =
              T.let(
                :APP_INSTALLS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )
            CLICKS =
              T.let(
                :CLICKS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )
            IMPRESSIONS =
              T.let(
                :IMPRESSIONS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )
            LINK_CLICKS =
              T.let(
                :LINK_CLICKS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )
            NONE =
              T.let(
                :NONE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )
            OFFER_CLAIMS =
              T.let(
                :OFFER_CLAIMS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )
            PAGE_LIKES =
              T.let(
                :PAGE_LIKES,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )
            POST_ENGAGEMENT =
              T.let(
                :POST_ENGAGEMENT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )
            THRUPLAY =
              T.let(
                :THRUPLAY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )
            PURCHASE =
              T.let(
                :PURCHASE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )
            LISTING_INTERACTION =
              T.let(
                :LISTING_INTERACTION,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::BillingEvent::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Where ads in this ad set direct people.
          module DestinationType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNDEFINED =
              T.let(
                :UNDEFINED,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            WEBSITE =
              T.let(
                :WEBSITE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            APP =
              T.let(
                :APP,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            FACEBOOK =
              T.let(
                :FACEBOOK,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            MESSENGER =
              T.let(
                :MESSENGER,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            WHATSAPP =
              T.let(
                :WHATSAPP,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            INSTAGRAM_DIRECT =
              T.let(
                :INSTAGRAM_DIRECT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            INSTAGRAM_PROFILE =
              T.let(
                :INSTAGRAM_PROFILE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            PHONE_CALL =
              T.let(
                :PHONE_CALL,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            SHOP_AUTOMATIC =
              T.let(
                :SHOP_AUTOMATIC,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            APPLINKS_AUTOMATIC =
              T.let(
                :APPLINKS_AUTOMATIC,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            ON_AD =
              T.let(
                :ON_AD,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            ON_POST =
              T.let(
                :ON_POST,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            ON_VIDEO =
              T.let(
                :ON_VIDEO,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            ON_PAGE =
              T.let(
                :ON_PAGE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            ON_EVENT =
              T.let(
                :ON_EVENT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            MESSAGING_MESSENGER_WHATSAPP =
              T.let(
                :MESSAGING_MESSENGER_WHATSAPP,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            MESSAGING_INSTAGRAM_DIRECT_MESSENGER =
              T.let(
                :MESSAGING_INSTAGRAM_DIRECT_MESSENGER,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            MESSAGING_INSTAGRAM_DIRECT_WHATSAPP =
              T.let(
                :MESSAGING_INSTAGRAM_DIRECT_WHATSAPP,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            MESSAGING_INSTAGRAM_DIRECT_MESSENGER_WHATSAPP =
              T.let(
                :MESSAGING_INSTAGRAM_DIRECT_MESSENGER_WHATSAPP,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            INSTAGRAM_PROFILE_AND_FACEBOOK_PAGE =
              T.let(
                :INSTAGRAM_PROFILE_AND_FACEBOOK_PAGE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            FACEBOOK_PAGE =
              T.let(
                :FACEBOOK_PAGE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            INSTAGRAM_LIVE =
              T.let(
                :INSTAGRAM_LIVE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            FACEBOOK_LIVE =
              T.let(
                :FACEBOOK_LIVE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            IMAGINE =
              T.let(
                :IMAGINE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            LEAD_FROM_IG_DIRECT =
              T.let(
                :LEAD_FROM_IG_DIRECT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            LEAD_FROM_MESSENGER =
              T.let(
                :LEAD_FROM_MESSENGER,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            WEBSITE_AND_LEAD_FORM =
              T.let(
                :WEBSITE_AND_LEAD_FORM,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            WEBSITE_AND_PHONE_CALL =
              T.let(
                :WEBSITE_AND_PHONE_CALL,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )
            BROADCAST_CHANNEL =
              T.let(
                :BROADCAST_CHANNEL,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::DestinationType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class ExcludedGeoLocations < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations,
                  WhopSDK::Internal::AnyHash
                )
              end

            # City targets.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::City
                  ]
                )
              )
            end
            attr_accessor :cities

            # ISO 3166-1 alpha-2 country codes.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :countries

            # Location types (home, recent, travel_in).
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :location_types

            # Region/state targets.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Region
                  ]
                )
              )
            end
            attr_accessor :regions

            # Zip/postal code targets.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Zip
                  ]
                )
              )
            end
            attr_accessor :zips

            # Geo locations to exclude.
            sig do
              params(
                cities:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::City::OrHash
                    ]
                  ),
                countries: T.nilable(T::Array[String]),
                location_types: T.nilable(T::Array[String]),
                regions:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Region::OrHash
                    ]
                  ),
                zips:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Zip::OrHash
                    ]
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # City targets.
              cities: nil,
              # ISO 3166-1 alpha-2 country codes.
              countries: nil,
              # Location types (home, recent, travel_in).
              location_types: nil,
              # Region/state targets.
              regions: nil,
              # Zip/postal code targets.
              zips: nil
            )
            end

            sig do
              override.returns(
                {
                  cities:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::City
                      ]
                    ),
                  countries: T.nilable(T::Array[String]),
                  location_types: T.nilable(T::Array[String]),
                  regions:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Region
                      ]
                    ),
                  zips:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Zip
                      ]
                    )
                }
              )
            end
            def to_hash
            end

            class City < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::City,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Meta geo target key/ID.
              sig { returns(String) }
              attr_accessor :key

              # Country code for this entry.
              sig { returns(T.nilable(String)) }
              attr_accessor :country

              # Display name.
              sig { returns(T.nilable(String)) }
              attr_accessor :name

              # Radius in miles (cities only).
              sig { returns(T.nilable(Integer)) }
              attr_accessor :radius

              # A Meta geo target entry (region, city, or zip).
              sig do
                params(
                  key: String,
                  country: T.nilable(String),
                  name: T.nilable(String),
                  radius: T.nilable(Integer)
                ).returns(T.attached_class)
              end
              def self.new(
                # Meta geo target key/ID.
                key:,
                # Country code for this entry.
                country: nil,
                # Display name.
                name: nil,
                # Radius in miles (cities only).
                radius: nil
              )
              end

              sig do
                override.returns(
                  {
                    key: String,
                    country: T.nilable(String),
                    name: T.nilable(String),
                    radius: T.nilable(Integer)
                  }
                )
              end
              def to_hash
              end
            end

            class Region < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Region,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Meta geo target key/ID.
              sig { returns(String) }
              attr_accessor :key

              # Country code for this entry.
              sig { returns(T.nilable(String)) }
              attr_accessor :country

              # Display name.
              sig { returns(T.nilable(String)) }
              attr_accessor :name

              # Radius in miles (cities only).
              sig { returns(T.nilable(Integer)) }
              attr_accessor :radius

              # A Meta geo target entry (region, city, or zip).
              sig do
                params(
                  key: String,
                  country: T.nilable(String),
                  name: T.nilable(String),
                  radius: T.nilable(Integer)
                ).returns(T.attached_class)
              end
              def self.new(
                # Meta geo target key/ID.
                key:,
                # Country code for this entry.
                country: nil,
                # Display name.
                name: nil,
                # Radius in miles (cities only).
                radius: nil
              )
              end

              sig do
                override.returns(
                  {
                    key: String,
                    country: T.nilable(String),
                    name: T.nilable(String),
                    radius: T.nilable(Integer)
                  }
                )
              end
              def to_hash
              end
            end

            class Zip < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::ExcludedGeoLocations::Zip,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Meta geo target key/ID.
              sig { returns(String) }
              attr_accessor :key

              # Country code for this entry.
              sig { returns(T.nilable(String)) }
              attr_accessor :country

              # Display name.
              sig { returns(T.nilable(String)) }
              attr_accessor :name

              # Radius in miles (cities only).
              sig { returns(T.nilable(Integer)) }
              attr_accessor :radius

              # A Meta geo target entry (region, city, or zip).
              sig do
                params(
                  key: String,
                  country: T.nilable(String),
                  name: T.nilable(String),
                  radius: T.nilable(Integer)
                ).returns(T.attached_class)
              end
              def self.new(
                # Meta geo target key/ID.
                key:,
                # Country code for this entry.
                country: nil,
                # Display name.
                name: nil,
                # Radius in miles (cities only).
                radius: nil
              )
              end

              sig do
                override.returns(
                  {
                    key: String,
                    country: T.nilable(String),
                    name: T.nilable(String),
                    radius: T.nilable(Integer)
                  }
                )
              end
              def to_hash
              end
            end
          end

          class GeoCity < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoCity,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Meta geo target key/ID.
            sig { returns(String) }
            attr_accessor :key

            # Country code for this entry.
            sig { returns(T.nilable(String)) }
            attr_accessor :country

            # Display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Radius in miles (cities only).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :radius

            # A Meta geo target entry (region, city, or zip).
            sig do
              params(
                key: String,
                country: T.nilable(String),
                name: T.nilable(String),
                radius: T.nilable(Integer)
              ).returns(T.attached_class)
            end
            def self.new(
              # Meta geo target key/ID.
              key:,
              # Country code for this entry.
              country: nil,
              # Display name.
              name: nil,
              # Radius in miles (cities only).
              radius: nil
            )
            end

            sig do
              override.returns(
                {
                  key: String,
                  country: T.nilable(String),
                  name: T.nilable(String),
                  radius: T.nilable(Integer)
                }
              )
            end
            def to_hash
            end
          end

          class GeoLocations < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations,
                  WhopSDK::Internal::AnyHash
                )
              end

            # City targets.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::City
                  ]
                )
              )
            end
            attr_accessor :cities

            # ISO 3166-1 alpha-2 country codes.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :countries

            # Location types (home, recent, travel_in).
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :location_types

            # Region/state targets.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Region
                  ]
                )
              )
            end
            attr_accessor :regions

            # Zip/postal code targets.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Zip
                  ]
                )
              )
            end
            attr_accessor :zips

            # Geo targeting (countries, regions, cities, zips).
            sig do
              params(
                cities:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::City::OrHash
                    ]
                  ),
                countries: T.nilable(T::Array[String]),
                location_types: T.nilable(T::Array[String]),
                regions:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Region::OrHash
                    ]
                  ),
                zips:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Zip::OrHash
                    ]
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # City targets.
              cities: nil,
              # ISO 3166-1 alpha-2 country codes.
              countries: nil,
              # Location types (home, recent, travel_in).
              location_types: nil,
              # Region/state targets.
              regions: nil,
              # Zip/postal code targets.
              zips: nil
            )
            end

            sig do
              override.returns(
                {
                  cities:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::City
                      ]
                    ),
                  countries: T.nilable(T::Array[String]),
                  location_types: T.nilable(T::Array[String]),
                  regions:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Region
                      ]
                    ),
                  zips:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Zip
                      ]
                    )
                }
              )
            end
            def to_hash
            end

            class City < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::City,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Meta geo target key/ID.
              sig { returns(String) }
              attr_accessor :key

              # Country code for this entry.
              sig { returns(T.nilable(String)) }
              attr_accessor :country

              # Display name.
              sig { returns(T.nilable(String)) }
              attr_accessor :name

              # Radius in miles (cities only).
              sig { returns(T.nilable(Integer)) }
              attr_accessor :radius

              # A Meta geo target entry (region, city, or zip).
              sig do
                params(
                  key: String,
                  country: T.nilable(String),
                  name: T.nilable(String),
                  radius: T.nilable(Integer)
                ).returns(T.attached_class)
              end
              def self.new(
                # Meta geo target key/ID.
                key:,
                # Country code for this entry.
                country: nil,
                # Display name.
                name: nil,
                # Radius in miles (cities only).
                radius: nil
              )
              end

              sig do
                override.returns(
                  {
                    key: String,
                    country: T.nilable(String),
                    name: T.nilable(String),
                    radius: T.nilable(Integer)
                  }
                )
              end
              def to_hash
              end
            end

            class Region < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Region,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Meta geo target key/ID.
              sig { returns(String) }
              attr_accessor :key

              # Country code for this entry.
              sig { returns(T.nilable(String)) }
              attr_accessor :country

              # Display name.
              sig { returns(T.nilable(String)) }
              attr_accessor :name

              # Radius in miles (cities only).
              sig { returns(T.nilable(Integer)) }
              attr_accessor :radius

              # A Meta geo target entry (region, city, or zip).
              sig do
                params(
                  key: String,
                  country: T.nilable(String),
                  name: T.nilable(String),
                  radius: T.nilable(Integer)
                ).returns(T.attached_class)
              end
              def self.new(
                # Meta geo target key/ID.
                key:,
                # Country code for this entry.
                country: nil,
                # Display name.
                name: nil,
                # Radius in miles (cities only).
                radius: nil
              )
              end

              sig do
                override.returns(
                  {
                    key: String,
                    country: T.nilable(String),
                    name: T.nilable(String),
                    radius: T.nilable(Integer)
                  }
                )
              end
              def to_hash
              end
            end

            class Zip < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoLocations::Zip,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Meta geo target key/ID.
              sig { returns(String) }
              attr_accessor :key

              # Country code for this entry.
              sig { returns(T.nilable(String)) }
              attr_accessor :country

              # Display name.
              sig { returns(T.nilable(String)) }
              attr_accessor :name

              # Radius in miles (cities only).
              sig { returns(T.nilable(Integer)) }
              attr_accessor :radius

              # A Meta geo target entry (region, city, or zip).
              sig do
                params(
                  key: String,
                  country: T.nilable(String),
                  name: T.nilable(String),
                  radius: T.nilable(Integer)
                ).returns(T.attached_class)
              end
              def self.new(
                # Meta geo target key/ID.
                key:,
                # Country code for this entry.
                country: nil,
                # Display name.
                name: nil,
                # Radius in miles (cities only).
                radius: nil
              )
              end

              sig do
                override.returns(
                  {
                    key: String,
                    country: T.nilable(String),
                    name: T.nilable(String),
                    radius: T.nilable(Integer)
                  }
                )
              end
              def to_hash
              end
            end
          end

          class GeoRegion < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::GeoRegion,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Meta geo target key/ID.
            sig { returns(String) }
            attr_accessor :key

            # Country code for this entry.
            sig { returns(T.nilable(String)) }
            attr_accessor :country

            # Display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Radius in miles (cities only).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :radius

            # A Meta geo target entry (region, city, or zip).
            sig do
              params(
                key: String,
                country: T.nilable(String),
                name: T.nilable(String),
                radius: T.nilable(Integer)
              ).returns(T.attached_class)
            end
            def self.new(
              # Meta geo target key/ID.
              key:,
              # Country code for this entry.
              country: nil,
              # Display name.
              name: nil,
              # Radius in miles (cities only).
              radius: nil
            )
            end

            sig do
              override.returns(
                {
                  key: String,
                  country: T.nilable(String),
                  name: T.nilable(String),
                  radius: T.nilable(Integer)
                }
              )
            end
            def to_hash
            end
          end

          module LeadConversionLocation
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WEBSITE =
              T.let(
                :website,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation::TaggedSymbol
              )
            INSTANT_FORMS =
              T.let(
                :instant_forms,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation::TaggedSymbol
              )
            MESSENGER =
              T.let(
                :messenger,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation::TaggedSymbol
              )
            INSTAGRAM =
              T.let(
                :instagram,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation::TaggedSymbol
              )
            CALLS =
              T.let(
                :calls,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation::TaggedSymbol
              )
            APP =
              T.let(
                :app,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadConversionLocation::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class LeadFormConfig < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Name of the lead form.
            sig { returns(String) }
            attr_accessor :name

            # URL to your privacy policy. Required by Meta.
            sig { returns(String) }
            attr_accessor :privacy_policy_url

            # Questions to ask on the form.
            sig do
              returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question
                ]
              )
            end
            attr_accessor :questions

            # Background image source: from_ad or custom.
            sig { returns(T.nilable(String)) }
            attr_accessor :background_image_source

            # URL of custom background image.
            sig { returns(T.nilable(String)) }
            attr_accessor :background_image_url

            # Whether conditional logic is enabled for questions.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :conditional_logic_enabled

            # CTA button text on the greeting card.
            sig { returns(T.nilable(String)) }
            attr_accessor :context_card_button_text

            # Optional greeting card bullet points.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :context_card_content

            # Greeting layout: PARAGRAPH_STYLE or LIST_STYLE.
            sig { returns(T.nilable(String)) }
            attr_accessor :context_card_style

            # Optional greeting card title.
            sig { returns(T.nilable(String)) }
            attr_accessor :context_card_title

            # Custom disclaimer body text.
            sig { returns(T.nilable(String)) }
            attr_accessor :custom_disclaimer_body

            # Consent checkboxes for the custom disclaimer.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::CustomDisclaimerCheckbox
                  ]
                )
              )
            end
            attr_accessor :custom_disclaimer_checkboxes

            # Custom disclaimer section title.
            sig { returns(T.nilable(String)) }
            attr_accessor :custom_disclaimer_title

            # Form type: more_volume, higher_intent, or rich_creative.
            sig { returns(T.nilable(String)) }
            attr_accessor :form_type

            # Enable Messenger follow-up after form submission.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :messenger_enabled

            # Require phone number verification via OTP (higher_intent only).
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :phone_verification_enabled

            # Custom link text for privacy policy (max 70 chars).
            sig { returns(T.nilable(String)) }
            attr_accessor :privacy_policy_link_text

            # Custom headline for the questions page.
            sig { returns(T.nilable(String)) }
            attr_accessor :question_page_custom_headline

            # Headline for rich creative form intro.
            sig { returns(T.nilable(String)) }
            attr_accessor :rich_creative_headline

            # Overview description for rich creative form intro.
            sig { returns(T.nilable(String)) }
            attr_accessor :rich_creative_overview

            # Uploaded image URL for rich creative form type.
            sig { returns(T.nilable(String)) }
            attr_accessor :rich_creative_url

            # Thank you / ending pages (supports multiple for conditional routing).
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::ThankYouPage
                  ]
                )
              )
            end
            attr_accessor :thank_you_pages

            # Configuration for a Meta lead gen instant form.
            sig do
              params(
                name: String,
                privacy_policy_url: String,
                questions:
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::OrHash
                  ],
                background_image_source: T.nilable(String),
                background_image_url: T.nilable(String),
                conditional_logic_enabled: T.nilable(T::Boolean),
                context_card_button_text: T.nilable(String),
                context_card_content: T.nilable(T::Array[String]),
                context_card_style: T.nilable(String),
                context_card_title: T.nilable(String),
                custom_disclaimer_body: T.nilable(String),
                custom_disclaimer_checkboxes:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::CustomDisclaimerCheckbox::OrHash
                    ]
                  ),
                custom_disclaimer_title: T.nilable(String),
                form_type: T.nilable(String),
                messenger_enabled: T.nilable(T::Boolean),
                phone_verification_enabled: T.nilable(T::Boolean),
                privacy_policy_link_text: T.nilable(String),
                question_page_custom_headline: T.nilable(String),
                rich_creative_headline: T.nilable(String),
                rich_creative_overview: T.nilable(String),
                rich_creative_url: T.nilable(String),
                thank_you_pages:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::ThankYouPage::OrHash
                    ]
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # Name of the lead form.
              name:,
              # URL to your privacy policy. Required by Meta.
              privacy_policy_url:,
              # Questions to ask on the form.
              questions:,
              # Background image source: from_ad or custom.
              background_image_source: nil,
              # URL of custom background image.
              background_image_url: nil,
              # Whether conditional logic is enabled for questions.
              conditional_logic_enabled: nil,
              # CTA button text on the greeting card.
              context_card_button_text: nil,
              # Optional greeting card bullet points.
              context_card_content: nil,
              # Greeting layout: PARAGRAPH_STYLE or LIST_STYLE.
              context_card_style: nil,
              # Optional greeting card title.
              context_card_title: nil,
              # Custom disclaimer body text.
              custom_disclaimer_body: nil,
              # Consent checkboxes for the custom disclaimer.
              custom_disclaimer_checkboxes: nil,
              # Custom disclaimer section title.
              custom_disclaimer_title: nil,
              # Form type: more_volume, higher_intent, or rich_creative.
              form_type: nil,
              # Enable Messenger follow-up after form submission.
              messenger_enabled: nil,
              # Require phone number verification via OTP (higher_intent only).
              phone_verification_enabled: nil,
              # Custom link text for privacy policy (max 70 chars).
              privacy_policy_link_text: nil,
              # Custom headline for the questions page.
              question_page_custom_headline: nil,
              # Headline for rich creative form intro.
              rich_creative_headline: nil,
              # Overview description for rich creative form intro.
              rich_creative_overview: nil,
              # Uploaded image URL for rich creative form type.
              rich_creative_url: nil,
              # Thank you / ending pages (supports multiple for conditional routing).
              thank_you_pages: nil
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  privacy_policy_url: String,
                  questions:
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question
                    ],
                  background_image_source: T.nilable(String),
                  background_image_url: T.nilable(String),
                  conditional_logic_enabled: T.nilable(T::Boolean),
                  context_card_button_text: T.nilable(String),
                  context_card_content: T.nilable(T::Array[String]),
                  context_card_style: T.nilable(String),
                  context_card_title: T.nilable(String),
                  custom_disclaimer_body: T.nilable(String),
                  custom_disclaimer_checkboxes:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::CustomDisclaimerCheckbox
                      ]
                    ),
                  custom_disclaimer_title: T.nilable(String),
                  form_type: T.nilable(String),
                  messenger_enabled: T.nilable(T::Boolean),
                  phone_verification_enabled: T.nilable(T::Boolean),
                  privacy_policy_link_text: T.nilable(String),
                  question_page_custom_headline: T.nilable(String),
                  rich_creative_headline: T.nilable(String),
                  rich_creative_overview: T.nilable(String),
                  rich_creative_url: T.nilable(String),
                  thank_you_pages:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::ThankYouPage
                      ]
                    )
                }
              )
            end
            def to_hash
            end

            class Question < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Question type (EMAIL, FULL_NAME, PHONE, CUSTOM, DATE_TIME, etc.).
              sig { returns(String) }
              attr_accessor :type

              # Group ID for conditional question routing.
              sig { returns(T.nilable(String)) }
              attr_accessor :conditional_questions_group_id

              # Questions shown conditionally based on this question's answer.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion
                    ]
                  )
                )
              end
              attr_accessor :dependent_conditional_questions

              # Helper text shown below the question.
              sig { returns(T.nilable(String)) }
              attr_accessor :inline_context

              # Unique key for this question.
              sig { returns(T.nilable(String)) }
              attr_accessor :key

              # Custom label for CUSTOM questions.
              sig { returns(T.nilable(String)) }
              attr_accessor :label

              # Answer options for multiple choice CUSTOM questions.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option
                    ]
                  )
                )
              end
              attr_accessor :options

              # UI hint: short_answer, multiple_choice, or appointment.
              sig { returns(T.nilable(String)) }
              attr_accessor :question_format

              # A question on a Meta lead gen form.
              sig do
                params(
                  type: String,
                  conditional_questions_group_id: T.nilable(String),
                  dependent_conditional_questions:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::OrHash
                      ]
                    ),
                  inline_context: T.nilable(String),
                  key: T.nilable(String),
                  label: T.nilable(String),
                  options:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option::OrHash
                      ]
                    ),
                  question_format: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Question type (EMAIL, FULL_NAME, PHONE, CUSTOM, DATE_TIME, etc.).
                type:,
                # Group ID for conditional question routing.
                conditional_questions_group_id: nil,
                # Questions shown conditionally based on this question's answer.
                dependent_conditional_questions: nil,
                # Helper text shown below the question.
                inline_context: nil,
                # Unique key for this question.
                key: nil,
                # Custom label for CUSTOM questions.
                label: nil,
                # Answer options for multiple choice CUSTOM questions.
                options: nil,
                # UI hint: short_answer, multiple_choice, or appointment.
                question_format: nil
              )
              end

              sig do
                override.returns(
                  {
                    type: String,
                    conditional_questions_group_id: T.nilable(String),
                    dependent_conditional_questions:
                      T.nilable(
                        T::Array[
                          WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion
                        ]
                      ),
                    inline_context: T.nilable(String),
                    key: T.nilable(String),
                    label: T.nilable(String),
                    options:
                      T.nilable(
                        T::Array[
                          WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option
                        ]
                      ),
                    question_format: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class DependentConditionalQuestion < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Question type (EMAIL, FULL_NAME, PHONE, CUSTOM, DATE_TIME, etc.).
                sig { returns(String) }
                attr_accessor :type

                # Helper text shown below the question.
                sig { returns(T.nilable(String)) }
                attr_accessor :inline_context

                # Unique key for this question.
                sig { returns(T.nilable(String)) }
                attr_accessor :key

                # Custom label for CUSTOM questions.
                sig { returns(T.nilable(String)) }
                attr_accessor :label

                # Answer options for multiple choice questions.
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option
                      ]
                    )
                  )
                end
                attr_accessor :options

                # A dependent conditional question (non-recursive to avoid schema recursion).
                sig do
                  params(
                    type: String,
                    inline_context: T.nilable(String),
                    key: T.nilable(String),
                    label: T.nilable(String),
                    options:
                      T.nilable(
                        T::Array[
                          WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option::OrHash
                        ]
                      )
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Question type (EMAIL, FULL_NAME, PHONE, CUSTOM, DATE_TIME, etc.).
                  type:,
                  # Helper text shown below the question.
                  inline_context: nil,
                  # Unique key for this question.
                  key: nil,
                  # Custom label for CUSTOM questions.
                  label: nil,
                  # Answer options for multiple choice questions.
                  options: nil
                )
                end

                sig do
                  override.returns(
                    {
                      type: String,
                      inline_context: T.nilable(String),
                      key: T.nilable(String),
                      label: T.nilable(String),
                      options:
                        T.nilable(
                          T::Array[
                            WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option
                          ]
                        )
                    }
                  )
                end
                def to_hash
                end

                class Option < WhopSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option,
                        WhopSDK::Internal::AnyHash
                      )
                    end

                  # Unique key for this option.
                  sig { returns(String) }
                  attr_accessor :key

                  # Display text for this option.
                  sig { returns(String) }
                  attr_accessor :value

                  # Conditional logic routing for this answer option.
                  sig do
                    returns(
                      T.nilable(
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option::Logic
                      )
                    )
                  end
                  attr_reader :logic

                  sig do
                    params(
                      logic:
                        T.nilable(
                          WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option::Logic::OrHash
                        )
                    ).void
                  end
                  attr_writer :logic

                  # An answer option for a multiple choice lead form question.
                  sig do
                    params(
                      key: String,
                      value: String,
                      logic:
                        T.nilable(
                          WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option::Logic::OrHash
                        )
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Unique key for this option.
                    key:,
                    # Display text for this option.
                    value:,
                    # Conditional logic routing for this answer option.
                    logic: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        key: String,
                        value: String,
                        logic:
                          T.nilable(
                            WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option::Logic
                          )
                      }
                    )
                  end
                  def to_hash
                  end

                  class Logic < WhopSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::DependentConditionalQuestion::Option::Logic,
                          WhopSDK::Internal::AnyHash
                        )
                      end

                    # Logic type: go_to_question, submit_form, or close_form.
                    sig { returns(String) }
                    attr_accessor :type

                    # Index of the end page to route to (for submit_form type).
                    sig { returns(T.nilable(Integer)) }
                    attr_accessor :target_end_page_index

                    # Index of the question to route to (for go_to_question type).
                    sig { returns(T.nilable(Integer)) }
                    attr_accessor :target_question_index

                    # Conditional logic routing for this answer option.
                    sig do
                      params(
                        type: String,
                        target_end_page_index: T.nilable(Integer),
                        target_question_index: T.nilable(Integer)
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      # Logic type: go_to_question, submit_form, or close_form.
                      type:,
                      # Index of the end page to route to (for submit_form type).
                      target_end_page_index: nil,
                      # Index of the question to route to (for go_to_question type).
                      target_question_index: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          type: String,
                          target_end_page_index: T.nilable(Integer),
                          target_question_index: T.nilable(Integer)
                        }
                      )
                    end
                    def to_hash
                    end
                  end
                end
              end

              class Option < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # Unique key for this option.
                sig { returns(String) }
                attr_accessor :key

                # Display text for this option.
                sig { returns(String) }
                attr_accessor :value

                # Conditional logic routing for this answer option.
                sig do
                  returns(
                    T.nilable(
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option::Logic
                    )
                  )
                end
                attr_reader :logic

                sig do
                  params(
                    logic:
                      T.nilable(
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option::Logic::OrHash
                      )
                  ).void
                end
                attr_writer :logic

                # An answer option for a multiple choice lead form question.
                sig do
                  params(
                    key: String,
                    value: String,
                    logic:
                      T.nilable(
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option::Logic::OrHash
                      )
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Unique key for this option.
                  key:,
                  # Display text for this option.
                  value:,
                  # Conditional logic routing for this answer option.
                  logic: nil
                )
                end

                sig do
                  override.returns(
                    {
                      key: String,
                      value: String,
                      logic:
                        T.nilable(
                          WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option::Logic
                        )
                    }
                  )
                end
                def to_hash
                end

                class Logic < WhopSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::Question::Option::Logic,
                        WhopSDK::Internal::AnyHash
                      )
                    end

                  # Logic type: go_to_question, submit_form, or close_form.
                  sig { returns(String) }
                  attr_accessor :type

                  # Index of the end page to route to (for submit_form type).
                  sig { returns(T.nilable(Integer)) }
                  attr_accessor :target_end_page_index

                  # Index of the question to route to (for go_to_question type).
                  sig { returns(T.nilable(Integer)) }
                  attr_accessor :target_question_index

                  # Conditional logic routing for this answer option.
                  sig do
                    params(
                      type: String,
                      target_end_page_index: T.nilable(Integer),
                      target_question_index: T.nilable(Integer)
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Logic type: go_to_question, submit_form, or close_form.
                    type:,
                    # Index of the end page to route to (for submit_form type).
                    target_end_page_index: nil,
                    # Index of the question to route to (for go_to_question type).
                    target_question_index: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        type: String,
                        target_end_page_index: T.nilable(Integer),
                        target_question_index: T.nilable(Integer)
                      }
                    )
                  end
                  def to_hash
                  end
                end
              end
            end

            class CustomDisclaimerCheckbox < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::CustomDisclaimerCheckbox,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Unique key for this checkbox.
              sig { returns(String) }
              attr_accessor :key

              # Label text for the checkbox.
              sig { returns(String) }
              attr_accessor :text

              # Whether the checkbox is checked by default.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :is_checked_by_default

              # Whether the checkbox must be checked to submit.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :is_required

              # A consent checkbox for the custom disclaimer section.
              sig do
                params(
                  key: String,
                  text: String,
                  is_checked_by_default: T.nilable(T::Boolean),
                  is_required: T.nilable(T::Boolean)
                ).returns(T.attached_class)
              end
              def self.new(
                # Unique key for this checkbox.
                key:,
                # Label text for the checkbox.
                text:,
                # Whether the checkbox is checked by default.
                is_checked_by_default: nil,
                # Whether the checkbox must be checked to submit.
                is_required: nil
              )
              end

              sig do
                override.returns(
                  {
                    key: String,
                    text: String,
                    is_checked_by_default: T.nilable(T::Boolean),
                    is_required: T.nilable(T::Boolean)
                  }
                )
              end
              def to_hash
              end
            end

            class ThankYouPage < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::LeadFormConfig::ThankYouPage,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Body text for this ending page.
              sig { returns(T.nilable(String)) }
              attr_accessor :body

              # Business phone number for call CTA.
              sig { returns(T.nilable(String)) }
              attr_accessor :business_phone

              # Custom button text.
              sig { returns(T.nilable(String)) }
              attr_accessor :button_text

              # CTA button type: VIEW_WEBSITE, CALL_BUSINESS, DOWNLOAD.
              sig { returns(T.nilable(String)) }
              attr_accessor :button_type

              # Question group ID for conditional routing to this page.
              sig { returns(T.nilable(String)) }
              attr_accessor :conditional_question_group_id

              # Enable Messenger follow-up.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :enable_messenger

              # Uploaded file URL for gated content download.
              sig { returns(T.nilable(String)) }
              attr_accessor :gated_file_url

              # URL the button links to.
              sig { returns(T.nilable(String)) }
              attr_accessor :link

              # Internal name for this ending page.
              sig { returns(T.nilable(String)) }
              attr_accessor :name

              # Headline for this ending page.
              sig { returns(T.nilable(String)) }
              attr_accessor :title

              # A thank-you / ending page for a Meta lead gen form.
              sig do
                params(
                  body: T.nilable(String),
                  business_phone: T.nilable(String),
                  button_text: T.nilable(String),
                  button_type: T.nilable(String),
                  conditional_question_group_id: T.nilable(String),
                  enable_messenger: T.nilable(T::Boolean),
                  gated_file_url: T.nilable(String),
                  link: T.nilable(String),
                  name: T.nilable(String),
                  title: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Body text for this ending page.
                body: nil,
                # Business phone number for call CTA.
                business_phone: nil,
                # Custom button text.
                button_text: nil,
                # CTA button type: VIEW_WEBSITE, CALL_BUSINESS, DOWNLOAD.
                button_type: nil,
                # Question group ID for conditional routing to this page.
                conditional_question_group_id: nil,
                # Enable Messenger follow-up.
                enable_messenger: nil,
                # Uploaded file URL for gated content download.
                gated_file_url: nil,
                # URL the button links to.
                link: nil,
                # Internal name for this ending page.
                name: nil,
                # Headline for this ending page.
                title: nil
              )
              end

              sig do
                override.returns(
                  {
                    body: T.nilable(String),
                    business_phone: T.nilable(String),
                    button_text: T.nilable(String),
                    button_type: T.nilable(String),
                    conditional_question_group_id: T.nilable(String),
                    enable_messenger: T.nilable(T::Boolean),
                    gated_file_url: T.nilable(String),
                    link: T.nilable(String),
                    name: T.nilable(String),
                    title: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end
          end

          # What this ad set optimizes for on Meta.
          module OptimizationGoal
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :NONE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            APP_INSTALLS =
              T.let(
                :APP_INSTALLS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            AD_RECALL_LIFT =
              T.let(
                :AD_RECALL_LIFT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            ENGAGED_USERS =
              T.let(
                :ENGAGED_USERS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            EVENT_RESPONSES =
              T.let(
                :EVENT_RESPONSES,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            IMPRESSIONS =
              T.let(
                :IMPRESSIONS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            LEAD_GENERATION =
              T.let(
                :LEAD_GENERATION,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            QUALITY_LEAD =
              T.let(
                :QUALITY_LEAD,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            LINK_CLICKS =
              T.let(
                :LINK_CLICKS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            OFFSITE_CONVERSIONS =
              T.let(
                :OFFSITE_CONVERSIONS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            PAGE_LIKES =
              T.let(
                :PAGE_LIKES,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            POST_ENGAGEMENT =
              T.let(
                :POST_ENGAGEMENT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            QUALITY_CALL =
              T.let(
                :QUALITY_CALL,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            REACH =
              T.let(
                :REACH,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            LANDING_PAGE_VIEWS =
              T.let(
                :LANDING_PAGE_VIEWS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            VISIT_INSTAGRAM_PROFILE =
              T.let(
                :VISIT_INSTAGRAM_PROFILE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            VALUE =
              T.let(
                :VALUE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            THRUPLAY =
              T.let(
                :THRUPLAY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            DERIVED_EVENTS =
              T.let(
                :DERIVED_EVENTS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            APP_INSTALLS_AND_OFFSITE_CONVERSIONS =
              T.let(
                :APP_INSTALLS_AND_OFFSITE_CONVERSIONS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            CONVERSATIONS =
              T.let(
                :CONVERSATIONS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            IN_APP_VALUE =
              T.let(
                :IN_APP_VALUE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            MESSAGING_PURCHASE_CONVERSION =
              T.let(
                :MESSAGING_PURCHASE_CONVERSION,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            SUBSCRIBERS =
              T.let(
                :SUBSCRIBERS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            REMINDERS_SET =
              T.let(
                :REMINDERS_SET,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            MEANINGFUL_CALL_ATTEMPT =
              T.let(
                :MEANINGFUL_CALL_ATTEMPT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            PROFILE_VISIT =
              T.let(
                :PROFILE_VISIT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            PROFILE_AND_PAGE_ENGAGEMENT =
              T.let(
                :PROFILE_AND_PAGE_ENGAGEMENT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            TWO_SECOND_CONTINUOUS_VIDEO_VIEWS =
              T.let(
                :TWO_SECOND_CONTINUOUS_VIDEO_VIEWS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            ENGAGED_REACH =
              T.let(
                :ENGAGED_REACH,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            ENGAGED_PAGE_VIEWS =
              T.let(
                :ENGAGED_PAGE_VIEWS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            MESSAGING_DEEP_CONVERSATION_AND_FOLLOW =
              T.let(
                :MESSAGING_DEEP_CONVERSATION_AND_FOLLOW,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            ADVERTISER_SILOED_VALUE =
              T.let(
                :ADVERTISER_SILOED_VALUE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            AUTOMATIC_OBJECTIVE =
              T.let(
                :AUTOMATIC_OBJECTIVE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )
            MESSAGING_APPOINTMENT_CONVERSION =
              T.let(
                :MESSAGING_APPOINTMENT_CONVERSION,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::OptimizationGoal::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class PromotedObject < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::PromotedObject,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Custom conversion rule ID (numeric, from Meta Events Manager).
            sig { returns(T.nilable(String)) }
            attr_accessor :custom_conversion_id

            # Pixel event name, used when custom_event_type is OTHER.
            sig { returns(T.nilable(String)) }
            attr_accessor :custom_event_str

            # Custom event type (e.g., PURCHASE, COMPLETE_REGISTRATION, OTHER).
            sig { returns(T.nilable(String)) }
            attr_accessor :custom_event_type

            # Facebook Page ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :page_id

            # Meta Pixel ID for conversion tracking.
            sig { returns(T.nilable(String)) }
            attr_accessor :pixel_id

            # WhatsApp phone number for messaging campaigns.
            sig { returns(T.nilable(String)) }
            attr_accessor :whatsapp_phone_number

            # The object this ad set promotes (pixel, page, etc.).
            sig do
              params(
                custom_conversion_id: T.nilable(String),
                custom_event_str: T.nilable(String),
                custom_event_type: T.nilable(String),
                page_id: T.nilable(String),
                pixel_id: T.nilable(String),
                whatsapp_phone_number: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Custom conversion rule ID (numeric, from Meta Events Manager).
              custom_conversion_id: nil,
              # Pixel event name, used when custom_event_type is OTHER.
              custom_event_str: nil,
              # Custom event type (e.g., PURCHASE, COMPLETE_REGISTRATION, OTHER).
              custom_event_type: nil,
              # Facebook Page ID.
              page_id: nil,
              # Meta Pixel ID for conversion tracking.
              pixel_id: nil,
              # WhatsApp phone number for messaging campaigns.
              whatsapp_phone_number: nil
            )
            end

            sig do
              override.returns(
                {
                  custom_conversion_id: T.nilable(String),
                  custom_event_str: T.nilable(String),
                  custom_event_type: T.nilable(String),
                  page_id: T.nilable(String),
                  pixel_id: T.nilable(String),
                  whatsapp_phone_number: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          module Status
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :ACTIVE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::Status::TaggedSymbol
              )
            PAUSED =
              T.let(
                :PAUSED,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class TargetingAutomation < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Meta::TargetingAutomation,
                  WhopSDK::Internal::AnyHash
                )
              end

            # 0 = off (use exact targeting), 1 = on (let Meta expand audience).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :advantage_audience

            # Advantage+ audience expansion settings.
            sig do
              params(advantage_audience: T.nilable(Integer)).returns(
                T.attached_class
              )
            end
            def self.new(
              # 0 = off (use exact targeting), 1 = on (let Meta expand audience).
              advantage_audience: nil
            )
            end

            sig { override.returns({ advantage_audience: T.nilable(Integer) }) }
            def to_hash
            end
          end
        end

        class Tiktok < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok,
                WhopSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action
                ]
              )
            )
          end
          attr_accessor :actions

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup::OrSymbol
                ]
              )
            )
          end
          attr_accessor :age_groups

          # App ID for app promotion campaigns.
          sig { returns(T.nilable(String)) }
          attr_accessor :app_id

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount::OrSymbol
              )
            )
          end
          attr_accessor :attribution_event_count

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :audience_ids

          # Represents untyped JSON
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :audience_rule

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AudienceType::OrSymbol
              )
            )
          end
          attr_accessor :audience_type

          # Bid price (cost per result for Cost Cap).
          sig { returns(T.nilable(Float)) }
          attr_accessor :bid_price

          # Bidding strategy (BID_TYPE_NO_BID, BID_TYPE_CUSTOM).
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BidType::OrSymbol
              )
            )
          end
          attr_accessor :bid_type

          # How you are billed on TikTok (CPC, CPM, OCPM, CPV).
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent::OrSymbol
              )
            )
          end
          attr_accessor :billing_event

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType::OrSymbol
              )
            )
          end
          attr_accessor :brand_safety_type

          # Budget mode (BUDGET_MODE_DAY, BUDGET_MODE_TOTAL,
          # BUDGET_MODE_DYNAMIC_DAILY_BUDGET).
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode::OrSymbol
              )
            )
          end
          attr_accessor :budget_mode

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :carrier_ids

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :category_exclusion_ids

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow::OrSymbol
              )
            )
          end
          attr_accessor :click_attribution_window

          # Represents `true` or `false` values.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :comment_disabled

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :contextual_tag_ids

          # Target cost per conversion for oCPM.
          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_bid_price

          # Creative delivery strategy.
          sig { returns(T.nilable(String)) }
          attr_accessor :creative_material_mode

          # Ad delivery schedule (48x7 character string).
          sig { returns(T.nilable(String)) }
          attr_accessor :dayparting

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :deep_funnel_event_source

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :deep_funnel_event_source_id

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::DeepFunnelOptimizationStatus::OrSymbol
              )
            )
          end
          attr_accessor :deep_funnel_optimization_status

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :device_model_ids

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :device_price_ranges

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow::OrSymbol
              )
            )
          end
          attr_accessor :engaged_view_attribution_window

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :excluded_audience_ids

          # TikTok location/region IDs to exclude.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :excluded_location_ids

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :frequency

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :frequency_schedule

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender::OrSymbol
              )
            )
          end
          attr_accessor :gender

          # Business Center ID for BC_AUTH_TT identity.
          sig { returns(T.nilable(String)) }
          attr_accessor :identity_authorized_bc_id

          # TikTok identity ID for the ad group.
          sig { returns(T.nilable(String)) }
          attr_accessor :identity_id

          # Identity type (AUTH_CODE, TT_USER, BC_AUTH_TT).
          sig { returns(T.nilable(String)) }
          attr_accessor :identity_type

          # Instant form configuration for lead generation campaigns.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig
              )
            )
          end
          attr_reader :instant_form_config

          sig do
            params(
              instant_form_config:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig::OrHash
                )
            ).void
          end
          attr_writer :instant_form_config

          # TikTok instant form ID (set automatically when instant_form_config is provided).
          sig { returns(T.nilable(String)) }
          attr_accessor :instant_form_id

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :interest_category_ids

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :interest_keyword_ids

          # Represents `true` or `false` values.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :inventory_filter_enabled

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting::OrSymbol
              )
            )
          end
          attr_accessor :ios14_targeting

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :isp_ids

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :languages

          # TikTok location/region IDs for geo targeting.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :location_ids

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :min_android_version

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :min_ios_version

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :network_types

          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperatingSystem::OrSymbol
                ]
              )
            )
          end
          attr_accessor :operating_systems

          # Initial status (ENABLE, DISABLE).
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperationStatus::OrSymbol
              )
            )
          end
          attr_accessor :operation_status

          # Conversion event (e.g., COMPLETE_PAYMENT).
          sig { returns(T.nilable(String)) }
          attr_accessor :optimization_event

          # What this ad group optimizes for on TikTok.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::OrSymbol
              )
            )
          end
          attr_accessor :optimization_goal

          # Budget pacing (PACING_MODE_SMOOTH, PACING_MODE_FAST).
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Pacing::OrSymbol
              )
            )
          end
          attr_accessor :pacing

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :pangle_audience_package_exclude_ids

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :pangle_audience_package_include_ids

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :pangle_block_app_ids

          # TikTok Pixel ID for conversion tracking.
          sig { returns(T.nilable(String)) }
          attr_accessor :pixel_id

          # Placement strategy (PLACEMENT_TYPE_AUTOMATIC, PLACEMENT_TYPE_NORMAL).
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::PlacementType::OrSymbol
              )
            )
          end
          attr_accessor :placement_type

          # Placements (PLACEMENT_TIKTOK, PLACEMENT_PANGLE, etc.).
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :placements

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_set_id

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource::OrSymbol
              )
            )
          end
          attr_accessor :product_source

          # Promotion type (optimization location).
          sig { returns(T.nilable(String)) }
          attr_accessor :promotion_type

          # Schedule end time (UTC, YYYY-MM-DD HH:MM:SS).
          sig { returns(T.nilable(String)) }
          attr_accessor :schedule_end_time

          # Schedule start time (UTC, YYYY-MM-DD HH:MM:SS).
          sig { returns(T.nilable(String)) }
          attr_accessor :schedule_start_time

          # Schedule type (SCHEDULE_START_END, SCHEDULE_FROM_NOW).
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ScheduleType::OrSymbol
              )
            )
          end
          attr_accessor :schedule_type

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :secondary_optimization_event

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :shopping_ads_retargeting_actions_days

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType::OrSymbol
              )
            )
          end
          attr_accessor :shopping_ads_retargeting_type

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::SpendingPower::OrSymbol
              )
            )
          end
          attr_accessor :spending_power

          # TikTok subplacements (IN_FEED, SEARCH_FEED, etc.).
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :tiktok_subplacements

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :vertical_sensitivity_id

          # Represents `true` or `false` values.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :video_download_disabled

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :video_user_actions

          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow::OrSymbol
              )
            )
          end
          attr_accessor :view_attribution_window

          # TikTok ad group configuration.
          sig do
            params(
              actions:
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::OrHash
                  ]
                ),
              age_groups:
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup::OrSymbol
                  ]
                ),
              app_id: T.nilable(String),
              attribution_event_count:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount::OrSymbol
                ),
              audience_ids: T.nilable(T::Array[String]),
              audience_rule: T.nilable(T::Hash[Symbol, T.anything]),
              audience_type:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AudienceType::OrSymbol
                ),
              bid_price: T.nilable(Float),
              bid_type:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BidType::OrSymbol
                ),
              billing_event:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent::OrSymbol
                ),
              brand_safety_type:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType::OrSymbol
                ),
              budget_mode:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode::OrSymbol
                ),
              carrier_ids: T.nilable(T::Array[String]),
              category_exclusion_ids: T.nilable(T::Array[String]),
              click_attribution_window:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow::OrSymbol
                ),
              comment_disabled: T.nilable(T::Boolean),
              contextual_tag_ids: T.nilable(T::Array[String]),
              conversion_bid_price: T.nilable(Float),
              creative_material_mode: T.nilable(String),
              dayparting: T.nilable(String),
              deep_funnel_event_source: T.nilable(String),
              deep_funnel_event_source_id: T.nilable(String),
              deep_funnel_optimization_status:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::DeepFunnelOptimizationStatus::OrSymbol
                ),
              device_model_ids: T.nilable(T::Array[String]),
              device_price_ranges: T.nilable(T::Array[String]),
              engaged_view_attribution_window:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow::OrSymbol
                ),
              excluded_audience_ids: T.nilable(T::Array[String]),
              excluded_location_ids: T.nilable(T::Array[String]),
              frequency: T.nilable(Integer),
              frequency_schedule: T.nilable(Integer),
              gender:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender::OrSymbol
                ),
              identity_authorized_bc_id: T.nilable(String),
              identity_id: T.nilable(String),
              identity_type: T.nilable(String),
              instant_form_config:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig::OrHash
                ),
              instant_form_id: T.nilable(String),
              interest_category_ids: T.nilable(T::Array[String]),
              interest_keyword_ids: T.nilable(T::Array[String]),
              inventory_filter_enabled: T.nilable(T::Boolean),
              ios14_targeting:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting::OrSymbol
                ),
              isp_ids: T.nilable(T::Array[String]),
              languages: T.nilable(T::Array[String]),
              location_ids: T.nilable(T::Array[String]),
              min_android_version: T.nilable(String),
              min_ios_version: T.nilable(String),
              network_types: T.nilable(T::Array[String]),
              operating_systems:
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperatingSystem::OrSymbol
                  ]
                ),
              operation_status:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperationStatus::OrSymbol
                ),
              optimization_event: T.nilable(String),
              optimization_goal:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::OrSymbol
                ),
              pacing:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Pacing::OrSymbol
                ),
              pangle_audience_package_exclude_ids: T.nilable(T::Array[String]),
              pangle_audience_package_include_ids: T.nilable(T::Array[String]),
              pangle_block_app_ids: T.nilable(T::Array[String]),
              pixel_id: T.nilable(String),
              placement_type:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::PlacementType::OrSymbol
                ),
              placements: T.nilable(T::Array[String]),
              product_set_id: T.nilable(String),
              product_source:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource::OrSymbol
                ),
              promotion_type: T.nilable(String),
              schedule_end_time: T.nilable(String),
              schedule_start_time: T.nilable(String),
              schedule_type:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ScheduleType::OrSymbol
                ),
              secondary_optimization_event: T.nilable(String),
              shopping_ads_retargeting_actions_days: T.nilable(Integer),
              shopping_ads_retargeting_type:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType::OrSymbol
                ),
              spending_power:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::SpendingPower::OrSymbol
                ),
              tiktok_subplacements: T.nilable(T::Array[String]),
              vertical_sensitivity_id: T.nilable(String),
              video_download_disabled: T.nilable(T::Boolean),
              video_user_actions: T.nilable(T::Array[String]),
              view_attribution_window:
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            actions: nil,
            age_groups: nil,
            # App ID for app promotion campaigns.
            app_id: nil,
            attribution_event_count: nil,
            audience_ids: nil,
            # Represents untyped JSON
            audience_rule: nil,
            audience_type: nil,
            # Bid price (cost per result for Cost Cap).
            bid_price: nil,
            # Bidding strategy (BID_TYPE_NO_BID, BID_TYPE_CUSTOM).
            bid_type: nil,
            # How you are billed on TikTok (CPC, CPM, OCPM, CPV).
            billing_event: nil,
            brand_safety_type: nil,
            # Budget mode (BUDGET_MODE_DAY, BUDGET_MODE_TOTAL,
            # BUDGET_MODE_DYNAMIC_DAILY_BUDGET).
            budget_mode: nil,
            carrier_ids: nil,
            category_exclusion_ids: nil,
            click_attribution_window: nil,
            # Represents `true` or `false` values.
            comment_disabled: nil,
            contextual_tag_ids: nil,
            # Target cost per conversion for oCPM.
            conversion_bid_price: nil,
            # Creative delivery strategy.
            creative_material_mode: nil,
            # Ad delivery schedule (48x7 character string).
            dayparting: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            deep_funnel_event_source: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            deep_funnel_event_source_id: nil,
            deep_funnel_optimization_status: nil,
            device_model_ids: nil,
            device_price_ranges: nil,
            engaged_view_attribution_window: nil,
            excluded_audience_ids: nil,
            # TikTok location/region IDs to exclude.
            excluded_location_ids: nil,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            frequency: nil,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            frequency_schedule: nil,
            gender: nil,
            # Business Center ID for BC_AUTH_TT identity.
            identity_authorized_bc_id: nil,
            # TikTok identity ID for the ad group.
            identity_id: nil,
            # Identity type (AUTH_CODE, TT_USER, BC_AUTH_TT).
            identity_type: nil,
            # Instant form configuration for lead generation campaigns.
            instant_form_config: nil,
            # TikTok instant form ID (set automatically when instant_form_config is provided).
            instant_form_id: nil,
            interest_category_ids: nil,
            interest_keyword_ids: nil,
            # Represents `true` or `false` values.
            inventory_filter_enabled: nil,
            ios14_targeting: nil,
            isp_ids: nil,
            languages: nil,
            # TikTok location/region IDs for geo targeting.
            location_ids: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            min_android_version: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            min_ios_version: nil,
            network_types: nil,
            operating_systems: nil,
            # Initial status (ENABLE, DISABLE).
            operation_status: nil,
            # Conversion event (e.g., COMPLETE_PAYMENT).
            optimization_event: nil,
            # What this ad group optimizes for on TikTok.
            optimization_goal: nil,
            # Budget pacing (PACING_MODE_SMOOTH, PACING_MODE_FAST).
            pacing: nil,
            pangle_audience_package_exclude_ids: nil,
            pangle_audience_package_include_ids: nil,
            pangle_block_app_ids: nil,
            # TikTok Pixel ID for conversion tracking.
            pixel_id: nil,
            # Placement strategy (PLACEMENT_TYPE_AUTOMATIC, PLACEMENT_TYPE_NORMAL).
            placement_type: nil,
            # Placements (PLACEMENT_TIKTOK, PLACEMENT_PANGLE, etc.).
            placements: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            product_set_id: nil,
            product_source: nil,
            # Promotion type (optimization location).
            promotion_type: nil,
            # Schedule end time (UTC, YYYY-MM-DD HH:MM:SS).
            schedule_end_time: nil,
            # Schedule start time (UTC, YYYY-MM-DD HH:MM:SS).
            schedule_start_time: nil,
            # Schedule type (SCHEDULE_START_END, SCHEDULE_FROM_NOW).
            schedule_type: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            secondary_optimization_event: nil,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            shopping_ads_retargeting_actions_days: nil,
            shopping_ads_retargeting_type: nil,
            spending_power: nil,
            # TikTok subplacements (IN_FEED, SEARCH_FEED, etc.).
            tiktok_subplacements: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            vertical_sensitivity_id: nil,
            # Represents `true` or `false` values.
            video_download_disabled: nil,
            video_user_actions: nil,
            view_attribution_window: nil
          )
          end

          sig do
            override.returns(
              {
                actions:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action
                    ]
                  ),
                age_groups:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup::OrSymbol
                    ]
                  ),
                app_id: T.nilable(String),
                attribution_event_count:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount::OrSymbol
                  ),
                audience_ids: T.nilable(T::Array[String]),
                audience_rule: T.nilable(T::Hash[Symbol, T.anything]),
                audience_type:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AudienceType::OrSymbol
                  ),
                bid_price: T.nilable(Float),
                bid_type:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BidType::OrSymbol
                  ),
                billing_event:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent::OrSymbol
                  ),
                brand_safety_type:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType::OrSymbol
                  ),
                budget_mode:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode::OrSymbol
                  ),
                carrier_ids: T.nilable(T::Array[String]),
                category_exclusion_ids: T.nilable(T::Array[String]),
                click_attribution_window:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow::OrSymbol
                  ),
                comment_disabled: T.nilable(T::Boolean),
                contextual_tag_ids: T.nilable(T::Array[String]),
                conversion_bid_price: T.nilable(Float),
                creative_material_mode: T.nilable(String),
                dayparting: T.nilable(String),
                deep_funnel_event_source: T.nilable(String),
                deep_funnel_event_source_id: T.nilable(String),
                deep_funnel_optimization_status:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::DeepFunnelOptimizationStatus::OrSymbol
                  ),
                device_model_ids: T.nilable(T::Array[String]),
                device_price_ranges: T.nilable(T::Array[String]),
                engaged_view_attribution_window:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow::OrSymbol
                  ),
                excluded_audience_ids: T.nilable(T::Array[String]),
                excluded_location_ids: T.nilable(T::Array[String]),
                frequency: T.nilable(Integer),
                frequency_schedule: T.nilable(Integer),
                gender:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender::OrSymbol
                  ),
                identity_authorized_bc_id: T.nilable(String),
                identity_id: T.nilable(String),
                identity_type: T.nilable(String),
                instant_form_config:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig
                  ),
                instant_form_id: T.nilable(String),
                interest_category_ids: T.nilable(T::Array[String]),
                interest_keyword_ids: T.nilable(T::Array[String]),
                inventory_filter_enabled: T.nilable(T::Boolean),
                ios14_targeting:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting::OrSymbol
                  ),
                isp_ids: T.nilable(T::Array[String]),
                languages: T.nilable(T::Array[String]),
                location_ids: T.nilable(T::Array[String]),
                min_android_version: T.nilable(String),
                min_ios_version: T.nilable(String),
                network_types: T.nilable(T::Array[String]),
                operating_systems:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperatingSystem::OrSymbol
                    ]
                  ),
                operation_status:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperationStatus::OrSymbol
                  ),
                optimization_event: T.nilable(String),
                optimization_goal:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::OrSymbol
                  ),
                pacing:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Pacing::OrSymbol
                  ),
                pangle_audience_package_exclude_ids:
                  T.nilable(T::Array[String]),
                pangle_audience_package_include_ids:
                  T.nilable(T::Array[String]),
                pangle_block_app_ids: T.nilable(T::Array[String]),
                pixel_id: T.nilable(String),
                placement_type:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::PlacementType::OrSymbol
                  ),
                placements: T.nilable(T::Array[String]),
                product_set_id: T.nilable(String),
                product_source:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource::OrSymbol
                  ),
                promotion_type: T.nilable(String),
                schedule_end_time: T.nilable(String),
                schedule_start_time: T.nilable(String),
                schedule_type:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ScheduleType::OrSymbol
                  ),
                secondary_optimization_event: T.nilable(String),
                shopping_ads_retargeting_actions_days: T.nilable(Integer),
                shopping_ads_retargeting_type:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType::OrSymbol
                  ),
                spending_power:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::SpendingPower::OrSymbol
                  ),
                tiktok_subplacements: T.nilable(T::Array[String]),
                vertical_sensitivity_id: T.nilable(String),
                video_download_disabled: T.nilable(T::Boolean),
                video_user_actions: T.nilable(T::Array[String]),
                view_attribution_window:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow::OrSymbol
                  )
              }
            )
          end
          def to_hash
          end

          class Action < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Behavioral category IDs. Use /tool/action_category/ to list them.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :action_category_ids

            # Lookback window in days. TikTok accepts 7, 15, 30, 60, 90, or 180.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :action_period

            # The category of TikTok content a behavioral targeting rule applies to. See
            # docs/tiktok_api/ad_group.md § actions.
            sig do
              returns(
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene::OrSymbol
                )
              )
            end
            attr_accessor :action_scene

            # Specific video interactions (WATCHED_TO_END, LIKED, COMMENTED, SHARED, FOLLOWED,
            # PROFILE_VISITED).
            sig do
              returns(
                T.nilable(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction::OrSymbol
                  ]
                )
              )
            end
            attr_accessor :video_user_actions

            # A single TikTok behavioral targeting entry. One category of past user behavior
            # (what they did, over what window, on which kind of content). See
            # docs/tiktok_api/ad_group.md § actions.
            sig do
              params(
                action_category_ids: T.nilable(T::Array[String]),
                action_period: T.nilable(Integer),
                action_scene:
                  T.nilable(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene::OrSymbol
                  ),
                video_user_actions:
                  T.nilable(
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction::OrSymbol
                    ]
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # Behavioral category IDs. Use /tool/action_category/ to list them.
              action_category_ids: nil,
              # Lookback window in days. TikTok accepts 7, 15, 30, 60, 90, or 180.
              action_period: nil,
              # The category of TikTok content a behavioral targeting rule applies to. See
              # docs/tiktok_api/ad_group.md § actions.
              action_scene: nil,
              # Specific video interactions (WATCHED_TO_END, LIKED, COMMENTED, SHARED, FOLLOWED,
              # PROFILE_VISITED).
              video_user_actions: nil
            )
            end

            sig do
              override.returns(
                {
                  action_category_ids: T.nilable(T::Array[String]),
                  action_period: T.nilable(Integer),
                  action_scene:
                    T.nilable(
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene::OrSymbol
                    ),
                  video_user_actions:
                    T.nilable(
                      T::Array[
                        WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction::OrSymbol
                      ]
                    )
                }
              )
            end
            def to_hash
            end

            # The category of TikTok content a behavioral targeting rule applies to. See
            # docs/tiktok_api/ad_group.md § actions.
            module ActionScene
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              VIDEO_RELATED =
                T.let(
                  :VIDEO_RELATED,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene::TaggedSymbol
                )
              CREATOR_RELATED =
                T.let(
                  :CREATOR_RELATED,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene::TaggedSymbol
                )
              HASHTAG_RELATED =
                T.let(
                  :HASHTAG_RELATED,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene::TaggedSymbol
                )
              LIVE_RELATED =
                T.let(
                  :LIVE_RELATED,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::ActionScene::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Specific past video interactions used for behavioral targeting. See
            # docs/tiktok_api/ad_group.md § actions.video_user_actions.
            module VideoUserAction
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WATCHED_TO_END =
                T.let(
                  :WATCHED_TO_END,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction::TaggedSymbol
                )
              LIKED =
                T.let(
                  :LIKED,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction::TaggedSymbol
                )
              COMMENTED =
                T.let(
                  :COMMENTED,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction::TaggedSymbol
                )
              SHARED =
                T.let(
                  :SHARED,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction::TaggedSymbol
                )
              FOLLOWED =
                T.let(
                  :FOLLOWED,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction::TaggedSymbol
                )
              PROFILE_VISITED =
                T.let(
                  :PROFILE_VISITED,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Action::VideoUserAction::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # Age groups targetable on TikTok. See docs/tiktok_api/ad_group.md § age_groups.
          module AgeGroup
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AGE_13_17 =
              T.let(
                :AGE_13_17,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup::TaggedSymbol
              )
            AGE_18_24 =
              T.let(
                :AGE_18_24,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup::TaggedSymbol
              )
            AGE_25_34 =
              T.let(
                :AGE_25_34,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup::TaggedSymbol
              )
            AGE_35_44 =
              T.let(
                :AGE_35_44,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup::TaggedSymbol
              )
            AGE_45_54 =
              T.let(
                :AGE_45_54,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup::TaggedSymbol
              )
            AGE_55_100 =
              T.let(
                :AGE_55_100,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AgeGroup::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module AttributionEventCount
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSET =
              T.let(
                :UNSET,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount::TaggedSymbol
              )
            EVERY =
              T.let(
                :EVERY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount::TaggedSymbol
              )
            ONCE =
              T.let(
                :ONCE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AttributionEventCount::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module AudienceType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AudienceType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NORMAL =
              T.let(
                :NORMAL,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AudienceType::TaggedSymbol
              )
            SMART_INTERESTS_BEHAVIORS =
              T.let(
                :SMART_INTERESTS_BEHAVIORS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AudienceType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::AudienceType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Bidding strategy (BID_TYPE_NO_BID, BID_TYPE_CUSTOM).
          module BidType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BidType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BID_TYPE_NO_BID =
              T.let(
                :BID_TYPE_NO_BID,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BidType::TaggedSymbol
              )
            BID_TYPE_CUSTOM =
              T.let(
                :BID_TYPE_CUSTOM,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BidType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BidType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # How you are billed on TikTok (CPC, CPM, OCPM, CPV).
          module BillingEvent
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CPC =
              T.let(
                :CPC,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent::TaggedSymbol
              )
            CPM =
              T.let(
                :CPM,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent::TaggedSymbol
              )
            OCPM =
              T.let(
                :OCPM,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent::TaggedSymbol
              )
            CPV =
              T.let(
                :CPV,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BillingEvent::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module BrandSafetyType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NO_BRAND_SAFETY =
              T.let(
                :NO_BRAND_SAFETY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType::TaggedSymbol
              )
            STANDARD_INVENTORY =
              T.let(
                :STANDARD_INVENTORY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType::TaggedSymbol
              )
            LIMITED_INVENTORY =
              T.let(
                :LIMITED_INVENTORY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType::TaggedSymbol
              )
            FULL_INVENTORY =
              T.let(
                :FULL_INVENTORY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType::TaggedSymbol
              )
            EXPANDED_INVENTORY =
              T.let(
                :EXPANDED_INVENTORY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BrandSafetyType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Budget mode (BUDGET_MODE_DAY, BUDGET_MODE_TOTAL,
          # BUDGET_MODE_DYNAMIC_DAILY_BUDGET).
          module BudgetMode
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUDGET_MODE_DAY =
              T.let(
                :BUDGET_MODE_DAY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode::TaggedSymbol
              )
            BUDGET_MODE_TOTAL =
              T.let(
                :BUDGET_MODE_TOTAL,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode::TaggedSymbol
              )
            BUDGET_MODE_DYNAMIC_DAILY_BUDGET =
              T.let(
                :BUDGET_MODE_DYNAMIC_DAILY_BUDGET,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::BudgetMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ClickAttributionWindow
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OFF =
              T.let(
                :OFF,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow::TaggedSymbol
              )
            ONE_DAY =
              T.let(
                :ONE_DAY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow::TaggedSymbol
              )
            SEVEN_DAYS =
              T.let(
                :SEVEN_DAYS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow::TaggedSymbol
              )
            FOURTEEN_DAYS =
              T.let(
                :FOURTEEN_DAYS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow::TaggedSymbol
              )
            TWENTY_EIGHT_DAYS =
              T.let(
                :TWENTY_EIGHT_DAYS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ClickAttributionWindow::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module DeepFunnelOptimizationStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::DeepFunnelOptimizationStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ON =
              T.let(
                :ON,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::DeepFunnelOptimizationStatus::TaggedSymbol
              )
            OFF =
              T.let(
                :OFF,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::DeepFunnelOptimizationStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::DeepFunnelOptimizationStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module EngagedViewAttributionWindow
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OFF =
              T.let(
                :OFF,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow::TaggedSymbol
              )
            ONE_DAY =
              T.let(
                :ONE_DAY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow::TaggedSymbol
              )
            SEVEN_DAYS =
              T.let(
                :SEVEN_DAYS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::EngagedViewAttributionWindow::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Gender
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GENDER_UNLIMITED =
              T.let(
                :GENDER_UNLIMITED,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender::TaggedSymbol
              )
            GENDER_MALE =
              T.let(
                :GENDER_MALE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender::TaggedSymbol
              )
            GENDER_FEMALE =
              T.let(
                :GENDER_FEMALE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Gender::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class InstantFormConfig < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig,
                  WhopSDK::Internal::AnyHash
                )
              end

            # URL to your privacy policy.
            sig { returns(String) }
            attr_accessor :privacy_policy_url

            # Form questions (at least one required).
            sig do
              returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig::Question
                ]
              )
            end
            attr_accessor :questions

            # Submit button text.
            sig { returns(T.nilable(String)) }
            attr_accessor :button_text

            # Greeting text shown at the top of the form.
            sig { returns(T.nilable(String)) }
            attr_accessor :greeting

            # Form name. Auto-generated if omitted.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Instant form configuration for lead generation campaigns.
            sig do
              params(
                privacy_policy_url: String,
                questions:
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig::Question::OrHash
                  ],
                button_text: T.nilable(String),
                greeting: T.nilable(String),
                name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # URL to your privacy policy.
              privacy_policy_url:,
              # Form questions (at least one required).
              questions:,
              # Submit button text.
              button_text: nil,
              # Greeting text shown at the top of the form.
              greeting: nil,
              # Form name. Auto-generated if omitted.
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  privacy_policy_url: String,
                  questions:
                    T::Array[
                      WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig::Question
                    ],
                  button_text: T.nilable(String),
                  greeting: T.nilable(String),
                  name: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class Question < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::InstantFormConfig::Question,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Question type (EMAIL, PHONE_NUMBER, NAME, CUSTOM).
              sig { returns(String) }
              attr_accessor :field_type

              # Custom label for the question.
              sig { returns(T.nilable(String)) }
              attr_accessor :label

              # A question for a TikTok instant form.
              sig do
                params(field_type: String, label: T.nilable(String)).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Question type (EMAIL, PHONE_NUMBER, NAME, CUSTOM).
                field_type:,
                # Custom label for the question.
                label: nil
              )
              end

              sig do
                override.returns(
                  { field_type: String, label: T.nilable(String) }
                )
              end
              def to_hash
              end
            end
          end

          module Ios14Targeting
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSET =
              T.let(
                :UNSET,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting::TaggedSymbol
              )
            IOS14_MINUS =
              T.let(
                :IOS14_MINUS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting::TaggedSymbol
              )
            IOS14_PLUS =
              T.let(
                :IOS14_PLUS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting::TaggedSymbol
              )
            ALL =
              T.let(
                :ALL,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Ios14Targeting::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Device operating systems targetable on TikTok. See docs/tiktok_api/ad_group.md §
          # operating_systems.
          module OperatingSystem
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperatingSystem
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANDROID =
              T.let(
                :ANDROID,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperatingSystem::TaggedSymbol
              )
            IOS =
              T.let(
                :IOS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperatingSystem::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperatingSystem::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Initial status (ENABLE, DISABLE).
          module OperationStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperationStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLE =
              T.let(
                :ENABLE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperationStatus::TaggedSymbol
              )
            DISABLE =
              T.let(
                :DISABLE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperationStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OperationStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # What this ad group optimizes for on TikTok.
          module OptimizationGoal
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CLICK =
              T.let(
                :CLICK,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            CONVERT =
              T.let(
                :CONVERT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            INSTALL =
              T.let(
                :INSTALL,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            IN_APP_EVENT =
              T.let(
                :IN_APP_EVENT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            REACH =
              T.let(
                :REACH,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            SHOW =
              T.let(
                :SHOW,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            VIDEO_VIEW =
              T.let(
                :VIDEO_VIEW,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            ENGAGED_VIEW =
              T.let(
                :ENGAGED_VIEW,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            ENGAGED_VIEW_FIFTEEN =
              T.let(
                :ENGAGED_VIEW_FIFTEEN,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            LEAD_GENERATION =
              T.let(
                :LEAD_GENERATION,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            PREFERRED_LEAD =
              T.let(
                :PREFERRED_LEAD,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            CONVERSATION =
              T.let(
                :CONVERSATION,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            FOLLOWERS =
              T.let(
                :FOLLOWERS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            PROFILE_VIEWS =
              T.let(
                :PROFILE_VIEWS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            PAGE_VISIT =
              T.let(
                :PAGE_VISIT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            VALUE =
              T.let(
                :VALUE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            AUTOMATIC_VALUE_OPTIMIZATION =
              T.let(
                :AUTOMATIC_VALUE_OPTIMIZATION,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            TRAFFIC_LANDING_PAGE_VIEW =
              T.let(
                :TRAFFIC_LANDING_PAGE_VIEW,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            DESTINATION_VISIT =
              T.let(
                :DESTINATION_VISIT,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            MT_LIVE_ROOM =
              T.let(
                :MT_LIVE_ROOM,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )
            PRODUCT_CLICK_IN_LIVE =
              T.let(
                :PRODUCT_CLICK_IN_LIVE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::OptimizationGoal::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Budget pacing (PACING_MODE_SMOOTH, PACING_MODE_FAST).
          module Pacing
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Pacing
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PACING_MODE_SMOOTH =
              T.let(
                :PACING_MODE_SMOOTH,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Pacing::TaggedSymbol
              )
            PACING_MODE_FAST =
              T.let(
                :PACING_MODE_FAST,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Pacing::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::Pacing::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Placement strategy (PLACEMENT_TYPE_AUTOMATIC, PLACEMENT_TYPE_NORMAL).
          module PlacementType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::PlacementType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PLACEMENT_TYPE_AUTOMATIC =
              T.let(
                :PLACEMENT_TYPE_AUTOMATIC,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::PlacementType::TaggedSymbol
              )
            PLACEMENT_TYPE_NORMAL =
              T.let(
                :PLACEMENT_TYPE_NORMAL,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::PlacementType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::PlacementType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ProductSource
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CATALOG =
              T.let(
                :CATALOG,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource::TaggedSymbol
              )
            STORE =
              T.let(
                :STORE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource::TaggedSymbol
              )
            SHOWCASE =
              T.let(
                :SHOWCASE,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ProductSource::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Schedule type (SCHEDULE_START_END, SCHEDULE_FROM_NOW).
          module ScheduleType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ScheduleType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SCHEDULE_START_END =
              T.let(
                :SCHEDULE_START_END,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ScheduleType::TaggedSymbol
              )
            SCHEDULE_FROM_NOW =
              T.let(
                :SCHEDULE_FROM_NOW,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ScheduleType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ScheduleType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ShoppingAdsRetargetingType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OFF =
              T.let(
                :OFF,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType::TaggedSymbol
              )
            LAB1 =
              T.let(
                :LAB1,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType::TaggedSymbol
              )
            LAB2 =
              T.let(
                :LAB2,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType::TaggedSymbol
              )
            LAB3 =
              T.let(
                :LAB3,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType::TaggedSymbol
              )
            LAB4 =
              T.let(
                :LAB4,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType::TaggedSymbol
              )
            LAB5 =
              T.let(
                :LAB5,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ShoppingAdsRetargetingType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module SpendingPower
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::SpendingPower
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALL =
              T.let(
                :ALL,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::SpendingPower::TaggedSymbol
              )
            HIGH =
              T.let(
                :HIGH,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::SpendingPower::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::SpendingPower::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ViewAttributionWindow
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OFF =
              T.let(
                :OFF,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow::TaggedSymbol
              )
            ONE_DAY =
              T.let(
                :ONE_DAY,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow::TaggedSymbol
              )
            SEVEN_DAYS =
              T.let(
                :SEVEN_DAYS,
                WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::PlatformConfig::Tiktok::ViewAttributionWindow::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # The status of an external ad group.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroupUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, WhopSDK::AdGroupUpdateParams::Status::TaggedSymbol)
        PAUSED =
          T.let(:paused, WhopSDK::AdGroupUpdateParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, WhopSDK::AdGroupUpdateParams::Status::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, WhopSDK::AdGroupUpdateParams::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, WhopSDK::AdGroupUpdateParams::Status::TaggedSymbol)
        FLAGGED =
          T.let(:flagged, WhopSDK::AdGroupUpdateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupUpdateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
