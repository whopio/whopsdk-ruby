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

      # Saved audiences to deliver to or exclude. Can't be combined with
      # demographics.automatic.
      sig { returns(T.nilable(WhopSDK::AdGroupUpdateParams::Audiences)) }
      attr_reader :audiences

      sig do
        params(audiences: WhopSDK::AdGroupUpdateParams::Audiences::OrHash).void
      end
      attr_writer :audiences

      # How delivery bids are set in the ad auction. Target-based strategies use
      # `desired_cost_per_result`.
      sig do
        returns(T.nilable(WhopSDK::AdGroupUpdateParams::BidType::OrSymbol))
      end
      attr_reader :bid_type

      sig do
        params(bid_type: WhopSDK::AdGroupUpdateParams::BidType::OrSymbol).void
      end
      attr_writer :bid_type

      # This ad group's budget, in the ad account's currency. Omit when the budget is
      # set on the campaign instead.
      sig { returns(T.nilable(Float)) }
      attr_reader :budget_amount

      sig { params(budget_amount: Float).void }
      attr_writer :budget_amount

      # Whether budget_amount is spent per day (`daily`) or over the ad group's full run
      # (`lifetime`).
      sig do
        returns(T.nilable(WhopSDK::AdGroupUpdateParams::BudgetType::OrSymbol))
      end
      attr_reader :budget_type

      sig do
        params(
          budget_type: WhopSDK::AdGroupUpdateParams::BudgetType::OrSymbol
        ).void
      end
      attr_writer :budget_type

      # The pixel event optimized for. A standard event, or any custom pixel event name.
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::AdGroupUpdateParams::ConversionEvent::OrSymbol,
              String
            )
          )
        )
      end
      attr_accessor :conversion_event

      # Where the outcome being optimized for occurs, such as a website visit,
      # social-profile visit, messaging conversation, ad interaction, or lead-form
      # submission. The lead form itself is set on the ad.
      sig do
        returns(
          T.nilable(WhopSDK::AdGroupUpdateParams::ConversionLocation::OrSymbol)
        )
      end
      attr_reader :conversion_location

      sig do
        params(
          conversion_location:
            WhopSDK::AdGroupUpdateParams::ConversionLocation::OrSymbol
        ).void
      end
      attr_writer :conversion_location

      # Age, gender, and automatic-audience targeting.
      sig { returns(T.nilable(WhopSDK::AdGroupUpdateParams::Demographics)) }
      attr_reader :demographics

      sig do
        params(
          demographics: WhopSDK::AdGroupUpdateParams::Demographics::OrHash
        ).void
      end
      attr_writer :demographics

      # Cost per result to aim for (`average_target`) or never exceed
      # (`maximum_target`).
      sig { returns(T.nilable(Float)) }
      attr_reader :desired_cost_per_result

      sig { params(desired_cost_per_result: Float).void }
      attr_writer :desired_cost_per_result

      # Interest, behavior, and demographic targeting, using categories from the ad
      # platform's targeting taxonomy. Entries across interests, behaviors, and
      # demographics are OR'd together (anyone matching any entry is reached), matching
      # Ads Manager's detailed-targeting box. At most 100 entries per section. Can't be
      # combined with demographics.automatic, and unavailable to campaigns with
      # special_ad_categories. Send the complete intended state — a section you omit is
      # cleared.
      sig do
        returns(T.nilable(WhopSDK::AdGroupUpdateParams::DetailedTargeting))
      end
      attr_reader :detailed_targeting

      sig do
        params(
          detailed_targeting:
            WhopSDK::AdGroupUpdateParams::DetailedTargeting::OrHash
        ).void
      end
      attr_writer :detailed_targeting

      # Device platforms and operating systems to target.
      sig { returns(T.nilable(WhopSDK::AdGroupUpdateParams::Devices)) }
      attr_reader :devices

      sig do
        params(devices: WhopSDK::AdGroupUpdateParams::Devices::OrHash).void
      end
      attr_writer :devices

      # When the ad group stops delivering, as an ISO 8601 timestamp. Omit to run until
      # paused.
      sig { returns(T.nilable(String)) }
      attr_reader :ends_at

      sig { params(ends_at: String).void }
      attr_writer :ends_at

      # Cap on how often one person sees ads from this ad group. Only available on
      # campaigns with the `awareness` objective.
      sig { returns(T.nilable(WhopSDK::AdGroupUpdateParams::FrequencyCap)) }
      attr_reader :frequency_cap

      sig do
        params(
          frequency_cap: WhopSDK::AdGroupUpdateParams::FrequencyCap::OrHash
        ).void
      end
      attr_writer :frequency_cap

      # Languages to target, as ISO 639 codes such as `en` or `es`. Empty or omitted
      # targets all languages.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :languages

      sig { params(languages: T::Array[String]).void }
      attr_writer :languages

      # Apps the conversation opens in. Required when setting `conversion_location` to
      # `messaging`, and rejected unless the ad group's conversion location is
      # `messaging`.
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::AdGroupUpdateParams::MessageApp::OrSymbol]
          )
        )
      end
      attr_reader :message_apps

      sig do
        params(
          message_apps:
            T::Array[WhopSDK::AdGroupUpdateParams::MessageApp::OrSymbol]
        ).void
      end
      attr_writer :message_apps

      # Minimum the ad group tries to spend each day.
      sig { returns(T.nilable(Float)) }
      attr_reader :minimum_daily_spend

      sig { params(minimum_daily_spend: Float).void }
      attr_writer :minimum_daily_spend

      # The result the ad group's delivery is optimized to get the most of.
      sig do
        returns(
          T.nilable(WhopSDK::AdGroupUpdateParams::OptimizationGoal::OrSymbol)
        )
      end
      attr_reader :optimization_goal

      sig do
        params(
          optimization_goal:
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::OrSymbol
        ).void
      end
      attr_writer :optimization_goal

      # `automatic` to let the ad platform choose placements, or the list of platforms
      # and positions to target. Omit a platform's positions to target all of them.
      #
      # Valid positions per platform:
      #
      # - `facebook`: `feed`, `right_hand_column`, `marketplace`, `search`,
      #   `profile_feed`, `notification`, `story`, `instream_video`, `facebook_reels`,
      #   `facebook_reels_overlay`, `biz_disco_feed`
      # - `instagram`: `stream`, `story`, `explore`, `explore_home`, `reels`,
      #   `profile_feed`, `profile_reels`, `ig_search`
      # - `messenger`: `story`
      # - `audience_network`: `classic`, `rewarded_video`
      # - `threads`: `threads_stream`
      # - `whatsapp`: `status`
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::AdGroupUpdateParams::Placements::OrSymbol,
              T::Array[WhopSDK::AdGroupUpdateParams::Placements::UnionMember1]
            )
          )
        )
      end
      attr_reader :placements

      sig do
        params(
          placements:
            T.any(
              WhopSDK::AdGroupUpdateParams::Placements::OrSymbol,
              T::Array[
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::OrHash
              ]
            )
        ).void
      end
      attr_writer :placements

      # Locations to target and exclude.
      sig { returns(T.nilable(WhopSDK::AdGroupUpdateParams::Regions)) }
      attr_reader :regions

      sig do
        params(regions: WhopSDK::AdGroupUpdateParams::Regions::OrHash).void
      end
      attr_writer :regions

      # When the ad group starts delivering, as an ISO 8601 timestamp. Omit to start as
      # soon as it's active.
      sig { returns(T.nilable(String)) }
      attr_reader :starts_at

      sig { params(starts_at: String).void }
      attr_writer :starts_at

      # Initial status (default: `active`).
      sig { returns(T.nilable(WhopSDK::AdGroupUpdateParams::Status::OrSymbol)) }
      attr_reader :status

      sig do
        params(status: WhopSDK::AdGroupUpdateParams::Status::OrSymbol).void
      end
      attr_writer :status

      # The display name of the ad group.
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          id: String,
          audiences: WhopSDK::AdGroupUpdateParams::Audiences::OrHash,
          bid_type: WhopSDK::AdGroupUpdateParams::BidType::OrSymbol,
          budget_amount: Float,
          budget_type: WhopSDK::AdGroupUpdateParams::BudgetType::OrSymbol,
          conversion_event:
            T.nilable(
              T.any(
                WhopSDK::AdGroupUpdateParams::ConversionEvent::OrSymbol,
                String
              )
            ),
          conversion_location:
            WhopSDK::AdGroupUpdateParams::ConversionLocation::OrSymbol,
          demographics: WhopSDK::AdGroupUpdateParams::Demographics::OrHash,
          desired_cost_per_result: Float,
          detailed_targeting:
            WhopSDK::AdGroupUpdateParams::DetailedTargeting::OrHash,
          devices: WhopSDK::AdGroupUpdateParams::Devices::OrHash,
          ends_at: String,
          frequency_cap: WhopSDK::AdGroupUpdateParams::FrequencyCap::OrHash,
          languages: T::Array[String],
          message_apps:
            T::Array[WhopSDK::AdGroupUpdateParams::MessageApp::OrSymbol],
          minimum_daily_spend: Float,
          optimization_goal:
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::OrSymbol,
          placements:
            T.any(
              WhopSDK::AdGroupUpdateParams::Placements::OrSymbol,
              T::Array[
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::OrHash
              ]
            ),
          regions: WhopSDK::AdGroupUpdateParams::Regions::OrHash,
          starts_at: String,
          status: WhopSDK::AdGroupUpdateParams::Status::OrSymbol,
          title: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Saved audiences to deliver to or exclude. Can't be combined with
        # demographics.automatic.
        audiences: nil,
        # How delivery bids are set in the ad auction. Target-based strategies use
        # `desired_cost_per_result`.
        bid_type: nil,
        # This ad group's budget, in the ad account's currency. Omit when the budget is
        # set on the campaign instead.
        budget_amount: nil,
        # Whether budget_amount is spent per day (`daily`) or over the ad group's full run
        # (`lifetime`).
        budget_type: nil,
        # The pixel event optimized for. A standard event, or any custom pixel event name.
        conversion_event: nil,
        # Where the outcome being optimized for occurs, such as a website visit,
        # social-profile visit, messaging conversation, ad interaction, or lead-form
        # submission. The lead form itself is set on the ad.
        conversion_location: nil,
        # Age, gender, and automatic-audience targeting.
        demographics: nil,
        # Cost per result to aim for (`average_target`) or never exceed
        # (`maximum_target`).
        desired_cost_per_result: nil,
        # Interest, behavior, and demographic targeting, using categories from the ad
        # platform's targeting taxonomy. Entries across interests, behaviors, and
        # demographics are OR'd together (anyone matching any entry is reached), matching
        # Ads Manager's detailed-targeting box. At most 100 entries per section. Can't be
        # combined with demographics.automatic, and unavailable to campaigns with
        # special_ad_categories. Send the complete intended state — a section you omit is
        # cleared.
        detailed_targeting: nil,
        # Device platforms and operating systems to target.
        devices: nil,
        # When the ad group stops delivering, as an ISO 8601 timestamp. Omit to run until
        # paused.
        ends_at: nil,
        # Cap on how often one person sees ads from this ad group. Only available on
        # campaigns with the `awareness` objective.
        frequency_cap: nil,
        # Languages to target, as ISO 639 codes such as `en` or `es`. Empty or omitted
        # targets all languages.
        languages: nil,
        # Apps the conversation opens in. Required when setting `conversion_location` to
        # `messaging`, and rejected unless the ad group's conversion location is
        # `messaging`.
        message_apps: nil,
        # Minimum the ad group tries to spend each day.
        minimum_daily_spend: nil,
        # The result the ad group's delivery is optimized to get the most of.
        optimization_goal: nil,
        # `automatic` to let the ad platform choose placements, or the list of platforms
        # and positions to target. Omit a platform's positions to target all of them.
        #
        # Valid positions per platform:
        #
        # - `facebook`: `feed`, `right_hand_column`, `marketplace`, `search`,
        #   `profile_feed`, `notification`, `story`, `instream_video`, `facebook_reels`,
        #   `facebook_reels_overlay`, `biz_disco_feed`
        # - `instagram`: `stream`, `story`, `explore`, `explore_home`, `reels`,
        #   `profile_feed`, `profile_reels`, `ig_search`
        # - `messenger`: `story`
        # - `audience_network`: `classic`, `rewarded_video`
        # - `threads`: `threads_stream`
        # - `whatsapp`: `status`
        placements: nil,
        # Locations to target and exclude.
        regions: nil,
        # When the ad group starts delivering, as an ISO 8601 timestamp. Omit to start as
        # soon as it's active.
        starts_at: nil,
        # Initial status (default: `active`).
        status: nil,
        # The display name of the ad group.
        title: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            audiences: WhopSDK::AdGroupUpdateParams::Audiences,
            bid_type: WhopSDK::AdGroupUpdateParams::BidType::OrSymbol,
            budget_amount: Float,
            budget_type: WhopSDK::AdGroupUpdateParams::BudgetType::OrSymbol,
            conversion_event:
              T.nilable(
                T.any(
                  WhopSDK::AdGroupUpdateParams::ConversionEvent::OrSymbol,
                  String
                )
              ),
            conversion_location:
              WhopSDK::AdGroupUpdateParams::ConversionLocation::OrSymbol,
            demographics: WhopSDK::AdGroupUpdateParams::Demographics,
            desired_cost_per_result: Float,
            detailed_targeting: WhopSDK::AdGroupUpdateParams::DetailedTargeting,
            devices: WhopSDK::AdGroupUpdateParams::Devices,
            ends_at: String,
            frequency_cap: WhopSDK::AdGroupUpdateParams::FrequencyCap,
            languages: T::Array[String],
            message_apps:
              T::Array[WhopSDK::AdGroupUpdateParams::MessageApp::OrSymbol],
            minimum_daily_spend: Float,
            optimization_goal:
              WhopSDK::AdGroupUpdateParams::OptimizationGoal::OrSymbol,
            placements:
              T.any(
                WhopSDK::AdGroupUpdateParams::Placements::OrSymbol,
                T::Array[WhopSDK::AdGroupUpdateParams::Placements::UnionMember1]
              ),
            regions: WhopSDK::AdGroupUpdateParams::Regions,
            starts_at: String,
            status: WhopSDK::AdGroupUpdateParams::Status::OrSymbol,
            title: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Audiences < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::Audiences,
              WhopSDK::Internal::AnyHash
            )
          end

        # IDs of saved audiences to exclude from delivery, prefixed `adaud_`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :exclude

        sig { params(exclude: T::Array[String]).void }
        attr_writer :exclude

        # IDs of saved audiences to deliver to, prefixed `adaud_`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :include

        sig { params(include: T::Array[String]).void }
        attr_writer :include

        # Saved audiences to deliver to or exclude. Can't be combined with
        # demographics.automatic.
        sig do
          params(exclude: T::Array[String], include: T::Array[String]).returns(
            T.attached_class
          )
        end
        def self.new(
          # IDs of saved audiences to exclude from delivery, prefixed `adaud_`.
          exclude: nil,
          # IDs of saved audiences to deliver to, prefixed `adaud_`.
          include: nil
        )
        end

        sig do
          override.returns(
            { exclude: T::Array[String], include: T::Array[String] }
          )
        end
        def to_hash
        end
      end

      # How delivery bids are set in the ad auction. Target-based strategies use
      # `desired_cost_per_result`.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroupUpdateParams::BidType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINIMUM_COST =
          T.let(
            :minimum_cost,
            WhopSDK::AdGroupUpdateParams::BidType::TaggedSymbol
          )
        AVERAGE_TARGET =
          T.let(
            :average_target,
            WhopSDK::AdGroupUpdateParams::BidType::TaggedSymbol
          )
        MAXIMUM_TARGET =
          T.let(
            :maximum_target,
            WhopSDK::AdGroupUpdateParams::BidType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupUpdateParams::BidType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Whether budget_amount is spent per day (`daily`) or over the ad group's full run
      # (`lifetime`).
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

      # The pixel event optimized for. A standard event, or any custom pixel event name.
      module ConversionEvent
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol,
              String
            )
          end

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupUpdateParams::ConversionEvent::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupUpdateParams::ConversionEvent)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURCHASE =
          T.let(
            :purchase,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        ADD_TO_CART =
          T.let(
            :add_to_cart,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        INITIATED_CHECKOUT =
          T.let(
            :initiated_checkout,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        ADD_PAYMENT_INFO =
          T.let(
            :add_payment_info,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        COMPLETE_REGISTRATION =
          T.let(
            :complete_registration,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        LEAD =
          T.let(
            :lead,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        CONTENT_VIEW =
          T.let(
            :content_view,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        SEARCH =
          T.let(
            :search,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        CONTACT =
          T.let(
            :contact,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        CUSTOMIZE_PRODUCT =
          T.let(
            :customize_product,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        DONATE =
          T.let(
            :donate,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        FIND_LOCATION =
          T.let(
            :find_location,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        SCHEDULE =
          T.let(
            :schedule,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        START_TRIAL =
          T.let(
            :start_trial,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        SUBMIT_APPLICATION =
          T.let(
            :submit_application,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
        SUBSCRIBE =
          T.let(
            :subscribe,
            WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol
          )
      end

      # Where the outcome being optimized for occurs, such as a website visit,
      # social-profile visit, messaging conversation, ad interaction, or lead-form
      # submission. The lead form itself is set on the ad.
      module ConversionLocation
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupUpdateParams::ConversionLocation)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEBSITE =
          T.let(
            :website,
            WhopSDK::AdGroupUpdateParams::ConversionLocation::TaggedSymbol
          )
        PROFILE =
          T.let(
            :profile,
            WhopSDK::AdGroupUpdateParams::ConversionLocation::TaggedSymbol
          )
        INSTAGRAM_AND_FACEBOOK =
          T.let(
            :instagram_and_facebook,
            WhopSDK::AdGroupUpdateParams::ConversionLocation::TaggedSymbol
          )
        INSTAGRAM_PROFILE =
          T.let(
            :instagram_profile,
            WhopSDK::AdGroupUpdateParams::ConversionLocation::TaggedSymbol
          )
        MESSAGING =
          T.let(
            :messaging,
            WhopSDK::AdGroupUpdateParams::ConversionLocation::TaggedSymbol
          )
        ON_AD =
          T.let(
            :on_ad,
            WhopSDK::AdGroupUpdateParams::ConversionLocation::TaggedSymbol
          )
        INSTANT_FORMS =
          T.let(
            :instant_forms,
            WhopSDK::AdGroupUpdateParams::ConversionLocation::TaggedSymbol
          )
        INSTANT_FORMS_AND_MESSENGER =
          T.let(
            :instant_forms_and_messenger,
            WhopSDK::AdGroupUpdateParams::ConversionLocation::TaggedSymbol
          )
        WEBSITE_AND_INSTANT_FORMS =
          T.let(
            :website_and_instant_forms,
            WhopSDK::AdGroupUpdateParams::ConversionLocation::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AdGroupUpdateParams::ConversionLocation::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Demographics < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::Demographics,
              WhopSDK::Internal::AnyHash
            )
          end

        # Turn on automatic audience targeting (Advantage+ on Meta): the platform can
        # deliver beyond the ages, genders, and detailed targeting you set, treating them
        # as suggestions.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :automatic

        sig { params(automatic: T::Boolean).void }
        attr_writer :automatic

        # Gender to target.
        sig do
          returns(
            T.nilable(
              WhopSDK::AdGroupUpdateParams::Demographics::Gender::OrSymbol
            )
          )
        end
        attr_reader :gender

        sig do
          params(
            gender: WhopSDK::AdGroupUpdateParams::Demographics::Gender::OrSymbol
          ).void
        end
        attr_writer :gender

        # Oldest age to target.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_age

        sig { params(maximum_age: Integer).void }
        attr_writer :maximum_age

        # Youngest age to target.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_age

        sig { params(minimum_age: Integer).void }
        attr_writer :minimum_age

        # Age, gender, and automatic-audience targeting.
        sig do
          params(
            automatic: T::Boolean,
            gender:
              WhopSDK::AdGroupUpdateParams::Demographics::Gender::OrSymbol,
            maximum_age: Integer,
            minimum_age: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Turn on automatic audience targeting (Advantage+ on Meta): the platform can
          # deliver beyond the ages, genders, and detailed targeting you set, treating them
          # as suggestions.
          automatic: nil,
          # Gender to target.
          gender: nil,
          # Oldest age to target.
          maximum_age: nil,
          # Youngest age to target.
          minimum_age: nil
        )
        end

        sig do
          override.returns(
            {
              automatic: T::Boolean,
              gender:
                WhopSDK::AdGroupUpdateParams::Demographics::Gender::OrSymbol,
              maximum_age: Integer,
              minimum_age: Integer
            }
          )
        end
        def to_hash
        end

        # Gender to target.
        module Gender
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdGroupUpdateParams::Demographics::Gender)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(
              :all,
              WhopSDK::AdGroupUpdateParams::Demographics::Gender::TaggedSymbol
            )
          MALE =
            T.let(
              :male,
              WhopSDK::AdGroupUpdateParams::Demographics::Gender::TaggedSymbol
            )
          FEMALE =
            T.let(
              :female,
              WhopSDK::AdGroupUpdateParams::Demographics::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdGroupUpdateParams::Demographics::Gender::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class DetailedTargeting < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::DetailedTargeting,
              WhopSDK::Internal::AnyHash
            )
          end

        # Behavior categories to target, such as frequent travelers.
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior
              ]
            )
          )
        end
        attr_reader :behaviors

        sig do
          params(
            behaviors:
              T::Array[
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::OrHash
              ]
          ).void
        end
        attr_writer :behaviors

        # Demographic categories to target, such as life events, industries, work
        # employers, job titles, schools, or majors.
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic
              ]
            )
          )
        end
        attr_reader :demographics

        sig do
          params(
            demographics:
              T::Array[
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::OrHash
              ]
          ).void
        end
        attr_writer :demographics

        # Interest categories to target, such as an interest in movies.
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Interest
              ]
            )
          )
        end
        attr_reader :interests

        sig do
          params(
            interests:
              T::Array[
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Interest::OrHash
              ]
          ).void
        end
        attr_writer :interests

        # Interest, behavior, and demographic targeting, using categories from the ad
        # platform's targeting taxonomy. Entries across interests, behaviors, and
        # demographics are OR'd together (anyone matching any entry is reached), matching
        # Ads Manager's detailed-targeting box. At most 100 entries per section. Can't be
        # combined with demographics.automatic, and unavailable to campaigns with
        # special_ad_categories. Send the complete intended state — a section you omit is
        # cleared.
        sig do
          params(
            behaviors:
              T::Array[
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::OrHash
              ],
            demographics:
              T::Array[
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::OrHash
              ],
            interests:
              T::Array[
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Interest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Behavior categories to target, such as frequent travelers.
          behaviors: nil,
          # Demographic categories to target, such as life events, industries, work
          # employers, job titles, schools, or majors.
          demographics: nil,
          # Interest categories to target, such as an interest in movies.
          interests: nil
        )
        end

        sig do
          override.returns(
            {
              behaviors:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior
                ],
              demographics:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic
                ],
              interests:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::DetailedTargeting::Interest
                ]
            }
          )
        end
        def to_hash
        end

        class Behavior < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ad platform's ID for the category in its targeting taxonomy.
          sig { returns(String) }
          attr_accessor :id

          # On ad platforms that scope behavior categories, what this one is measured on.
          # Send back the value the targeting_options endpoint returned alongside the id.
          sig do
            returns(
              T.nilable(
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType::OrSymbol
              )
            )
          end
          attr_reader :behavior_type

          sig do
            params(
              behavior_type:
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType::OrSymbol
            ).void
          end
          attr_writer :behavior_type

          # Category name, such as `Frequent travelers`.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # On ad platforms that scope behavior categories, how many days of activity the
          # category covers.
          sig { returns(T.nilable(Integer)) }
          attr_reader :period

          sig { params(period: Integer).void }
          attr_writer :period

          sig do
            params(
              id: String,
              behavior_type:
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType::OrSymbol,
              name: String,
              period: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The ad platform's ID for the category in its targeting taxonomy.
            id:,
            # On ad platforms that scope behavior categories, what this one is measured on.
            # Send back the value the targeting_options endpoint returned alongside the id.
            behavior_type: nil,
            # Category name, such as `Frequent travelers`.
            name: nil,
            # On ad platforms that scope behavior categories, how many days of activity the
            # category covers.
            period: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                behavior_type:
                  WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType::OrSymbol,
                name: String,
                period: Integer
              }
            )
          end
          def to_hash
          end

          # On ad platforms that scope behavior categories, what this one is measured on.
          # Send back the value the targeting_options endpoint returned alongside the id.
          module BehaviorType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VIDEO =
              T.let(
                :video,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType::TaggedSymbol
              )
            CREATOR =
              T.let(
                :creator,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType::TaggedSymbol
              )
            HASHTAG =
              T.let(
                :hashtag,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Demographic < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ad platform's ID for the category in its targeting taxonomy.
          sig { returns(String) }
          attr_accessor :id

          # Kind of demographic the category belongs to.
          sig do
            returns(
              WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Category name, such as `Recently moved`.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              id: String,
              type:
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::OrSymbol,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The ad platform's ID for the category in its targeting taxonomy.
            id:,
            # Kind of demographic the category belongs to.
            type:,
            # Category name, such as `Recently moved`.
            name: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                type:
                  WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::OrSymbol,
                name: String
              }
            )
          end
          def to_hash
          end

          # Kind of demographic the category belongs to.
          module Type
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LIFE_EVENTS =
              T.let(
                :life_events,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            INDUSTRIES =
              T.let(
                :industries,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            INCOME =
              T.let(
                :income,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            FAMILY_STATUSES =
              T.let(
                :family_statuses,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            WORK_EMPLOYERS =
              T.let(
                :work_employers,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            WORK_POSITIONS =
              T.let(
                :work_positions,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            EDUCATION_SCHOOLS =
              T.let(
                :education_schools,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::TaggedSymbol
              )
            EDUCATION_MAJORS =
              T.let(
                :education_majors,
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Interest < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroupUpdateParams::DetailedTargeting::Interest,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ad platform's ID for the category in its targeting taxonomy.
          sig { returns(String) }
          attr_accessor :id

          # Category name, such as `Movies`.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(
            # The ad platform's ID for the category in its targeting taxonomy.
            id:,
            # Category name, such as `Movies`.
            name: nil
          )
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end
      end

      class Devices < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::Devices,
              WhopSDK::Internal::AnyHash
            )
          end

        # Operating systems to target. Empty targets all operating systems.
        sig do
          returns(
            T.nilable(
              T::Array[WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem]
            )
          )
        end
        attr_reader :operating_systems

        sig do
          params(
            operating_systems:
              T::Array[
                WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem::OrHash
              ]
          ).void
        end
        attr_writer :operating_systems

        # Device types to target. Empty targets all devices.
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::AdGroupUpdateParams::Devices::Platform::OrSymbol
              ]
            )
          )
        end
        attr_reader :platforms

        sig do
          params(
            platforms:
              T::Array[
                WhopSDK::AdGroupUpdateParams::Devices::Platform::OrSymbol
              ]
          ).void
        end
        attr_writer :platforms

        # Device platforms and operating systems to target.
        sig do
          params(
            operating_systems:
              T::Array[
                WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem::OrHash
              ],
            platforms:
              T::Array[
                WhopSDK::AdGroupUpdateParams::Devices::Platform::OrSymbol
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Operating systems to target. Empty targets all operating systems.
          operating_systems: nil,
          # Device types to target. Empty targets all devices.
          platforms: nil
        )
        end

        sig do
          override.returns(
            {
              operating_systems:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem
                ],
              platforms:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Devices::Platform::OrSymbol
                ]
            }
          )
        end
        def to_hash
        end

        class OperatingSystem < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem,
                WhopSDK::Internal::AnyHash
              )
            end

          # Operating system to target.
          sig do
            returns(
              WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem::Os::OrSymbol
            )
          end
          attr_accessor :os

          # Lowest OS version to target, such as `18.0`. Omit to target any version.
          sig { returns(T.nilable(String)) }
          attr_reader :minimum_version

          sig { params(minimum_version: String).void }
          attr_writer :minimum_version

          sig do
            params(
              os:
                WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem::Os::OrSymbol,
              minimum_version: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Operating system to target.
            os:,
            # Lowest OS version to target, such as `18.0`. Omit to target any version.
            minimum_version: nil
          )
          end

          sig do
            override.returns(
              {
                os:
                  WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem::Os::OrSymbol,
                minimum_version: String
              }
            )
          end
          def to_hash
          end

          # Operating system to target.
          module Os
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem::Os
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IOS =
              T.let(
                :ios,
                WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem::Os::TaggedSymbol
              )
            ANDROID =
              T.let(
                :android,
                WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem::Os::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem::Os::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Platform
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdGroupUpdateParams::Devices::Platform)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MOBILE =
            T.let(
              :mobile,
              WhopSDK::AdGroupUpdateParams::Devices::Platform::TaggedSymbol
            )
          DESKTOP =
            T.let(
              :desktop,
              WhopSDK::AdGroupUpdateParams::Devices::Platform::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdGroupUpdateParams::Devices::Platform::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class FrequencyCap < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::FrequencyCap,
              WhopSDK::Internal::AnyHash
            )
          end

        # Most times one person can be shown ads from this ad group within the window.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_impressions

        sig { params(maximum_impressions: Integer).void }
        attr_writer :maximum_impressions

        # Length of the rolling window, in days.
        sig { returns(T.nilable(Integer)) }
        attr_reader :per_days

        sig { params(per_days: Integer).void }
        attr_writer :per_days

        # Cap on how often one person sees ads from this ad group. Only available on
        # campaigns with the `awareness` objective.
        sig do
          params(maximum_impressions: Integer, per_days: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # Most times one person can be shown ads from this ad group within the window.
          maximum_impressions: nil,
          # Length of the rolling window, in days.
          per_days: nil
        )
        end

        sig do
          override.returns({ maximum_impressions: Integer, per_days: Integer })
        end
        def to_hash
        end
      end

      module MessageApp
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupUpdateParams::MessageApp)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSENGER =
          T.let(
            :messenger,
            WhopSDK::AdGroupUpdateParams::MessageApp::TaggedSymbol
          )
        INSTAGRAM =
          T.let(
            :instagram,
            WhopSDK::AdGroupUpdateParams::MessageApp::TaggedSymbol
          )
        WHATSAPP =
          T.let(
            :whatsapp,
            WhopSDK::AdGroupUpdateParams::MessageApp::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupUpdateParams::MessageApp::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The result the ad group's delivery is optimized to get the most of.
      module OptimizationGoal
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupUpdateParams::OptimizationGoal)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONVERSIONS =
          T.let(
            :conversions,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        LINK_CLICKS =
          T.let(
            :link_clicks,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        LANDING_PAGE_VIEWS =
          T.let(
            :landing_page_views,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        REACH =
          T.let(
            :reach,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        IMPRESSIONS =
          T.let(
            :impressions,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        ENGAGEMENT =
          T.let(
            :engagement,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        CONVERSATIONS =
          T.let(
            :conversations,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        VIDEO_VIEWS =
          T.let(
            :video_views,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        TWO_SECOND_VIEWS =
          T.let(
            :two_second_views,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        PAGE_LIKES =
          T.let(
            :page_likes,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        SOCIAL_PROFILE =
          T.let(
            :social_profile,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        AD_RECALL_LIFT =
          T.let(
            :ad_recall_lift,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        EVENT_RESPONSES =
          T.let(
            :event_responses,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        REMINDERS_SET =
          T.let(
            :reminders_set,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        LEAD_GENERATION =
          T.let(
            :lead_generation,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        QUALITY_LEAD =
          T.let(
            :quality_lead,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        VALUE =
          T.let(
            :value,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )
        PROFILE_AND_PAGE_ENGAGEMENT =
          T.let(
            :profile_and_page_engagement,
            WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AdGroupUpdateParams::OptimizationGoal::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # `automatic` to let the ad platform choose placements, or the list of platforms
      # and positions to target. Omit a platform's positions to target all of them.
      #
      # Valid positions per platform:
      #
      # - `facebook`: `feed`, `right_hand_column`, `marketplace`, `search`,
      #   `profile_feed`, `notification`, `story`, `instream_video`, `facebook_reels`,
      #   `facebook_reels_overlay`, `biz_disco_feed`
      # - `instagram`: `stream`, `story`, `explore`, `explore_home`, `reels`,
      #   `profile_feed`, `profile_reels`, `ig_search`
      # - `messenger`: `story`
      # - `audience_network`: `classic`, `rewarded_video`
      # - `threads`: `threads_stream`
      # - `whatsapp`: `status`
      module Placements
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::Placements::TaggedSymbol,
              T::Array[WhopSDK::AdGroupUpdateParams::Placements::UnionMember1]
            )
          end

        class UnionMember1 < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1,
                WhopSDK::Internal::AnyHash
              )
            end

          # Platform the ads run on.
          sig do
            returns(
              WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform::OrSymbol
            )
          end
          attr_accessor :platform

          # Positions to target within the platform, such as `feed` or `story`. Omit to
          # target all of the platform's positions.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :positions

          sig { params(positions: T::Array[String]).void }
          attr_writer :positions

          sig do
            params(
              platform:
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform::OrSymbol,
              positions: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # Platform the ads run on.
            platform:,
            # Positions to target within the platform, such as `feed` or `story`. Omit to
            # target all of the platform's positions.
            positions: nil
          )
          end

          sig do
            override.returns(
              {
                platform:
                  WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform::OrSymbol,
                positions: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # Platform the ads run on.
          module Platform
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FACEBOOK =
              T.let(
                :facebook,
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform::TaggedSymbol
              )
            INSTAGRAM =
              T.let(
                :instagram,
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform::TaggedSymbol
              )
            MESSENGER =
              T.let(
                :messenger,
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform::TaggedSymbol
              )
            AUDIENCE_NETWORK =
              T.let(
                :audience_network,
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform::TaggedSymbol
              )
            THREADS =
              T.let(
                :threads,
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform::TaggedSymbol
              )
            WHATSAPP =
              T.let(
                :whatsapp,
                WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupUpdateParams::Placements::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupUpdateParams::Placements)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTOMATIC =
          T.let(
            :automatic,
            WhopSDK::AdGroupUpdateParams::Placements::TaggedSymbol
          )

        UnionMember1Array =
          T.let(
            WhopSDK::Internal::Type::ArrayOf[
              WhopSDK::AdGroupUpdateParams::Placements::UnionMember1
            ],
            WhopSDK::Internal::Type::Converter
          )
      end

      class Regions < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::Regions,
              WhopSDK::Internal::AnyHash
            )
          end

        # Locations excluded from targeting. Country groups can't be excluded.
        sig do
          returns(T.nilable(WhopSDK::AdGroupUpdateParams::Regions::Exclude))
        end
        attr_reader :exclude

        sig do
          params(
            exclude: WhopSDK::AdGroupUpdateParams::Regions::Exclude::OrHash
          ).void
        end
        attr_writer :exclude

        # Locations the ad group targets.
        sig do
          returns(T.nilable(WhopSDK::AdGroupUpdateParams::Regions::Include))
        end
        attr_reader :include

        sig do
          params(
            include: WhopSDK::AdGroupUpdateParams::Regions::Include::OrHash
          ).void
        end
        attr_writer :include

        # Locations to target and exclude.
        sig do
          params(
            exclude: WhopSDK::AdGroupUpdateParams::Regions::Exclude::OrHash,
            include: WhopSDK::AdGroupUpdateParams::Regions::Include::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Locations excluded from targeting. Country groups can't be excluded.
          exclude: nil,
          # Locations the ad group targets.
          include: nil
        )
        end

        sig do
          override.returns(
            {
              exclude: WhopSDK::AdGroupUpdateParams::Regions::Exclude,
              include: WhopSDK::AdGroupUpdateParams::Regions::Include
            }
          )
        end
        def to_hash
        end

        class Exclude < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroupUpdateParams::Regions::Exclude,
                WhopSDK::Internal::AnyHash
              )
            end

          # Cities, keyed by the ad platform's location taxonomy.
          sig do
            returns(
              T.nilable(
                T::Array[WhopSDK::AdGroupUpdateParams::Regions::Exclude::City]
              )
            )
          end
          attr_reader :cities

          sig do
            params(
              cities:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::City::OrHash
                ]
            ).void
          end
          attr_writer :cities

          # Countries, as ISO 3166-1 alpha-2 codes such as `US`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :countries

          sig { params(countries: T::Array[String]).void }
          attr_writer :countries

          # Multi-country groups such as `worldwide` or `europe`. Include-only — groups
          # can't be excluded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :country_groups

          sig { params(country_groups: T::Array[String]).void }
          attr_writer :country_groups

          # Circular areas, each a coordinate plus a radius. At most 200 across include and
          # exclude.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation
                ]
              )
            )
          end
          attr_reader :custom_locations

          sig do
            params(
              custom_locations:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::OrHash
                ]
            ).void
          end
          attr_writer :custom_locations

          # US states and DC, as ISO 3166-2 codes such as `US-CA`. US territories (`PR`,
          # `GU`, `VI`, `AS`, `MP`) and everywhere outside the US are targeted through
          # `countries`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :regions

          sig { params(regions: T::Array[String]).void }
          attr_writer :regions

          # ZIP and postal codes, keyed by the ad platform's location taxonomy. Meta keys
          # these `COUNTRY:CODE`, as `US:78756` — a bare code is ambiguous, because the same
          # one exists in several countries. TikTok takes the bare code.
          sig do
            returns(
              T.nilable(
                T::Array[
                  T.any(
                    String,
                    WhopSDK::AdGroupUpdateParams::Regions::Exclude::Zip::Key
                  )
                ]
              )
            )
          end
          attr_reader :zips

          sig do
            params(
              zips:
                T::Array[
                  T.any(
                    String,
                    WhopSDK::AdGroupUpdateParams::Regions::Exclude::Zip::Key::OrHash
                  )
                ]
            ).void
          end
          attr_writer :zips

          # Locations excluded from targeting. Country groups can't be excluded.
          sig do
            params(
              cities:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::City::OrHash
                ],
              countries: T::Array[String],
              country_groups: T::Array[String],
              custom_locations:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::OrHash
                ],
              regions: T::Array[String],
              zips:
                T::Array[
                  T.any(
                    String,
                    WhopSDK::AdGroupUpdateParams::Regions::Exclude::Zip::Key::OrHash
                  )
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Cities, keyed by the ad platform's location taxonomy.
            cities: nil,
            # Countries, as ISO 3166-1 alpha-2 codes such as `US`.
            countries: nil,
            # Multi-country groups such as `worldwide` or `europe`. Include-only — groups
            # can't be excluded.
            country_groups: nil,
            # Circular areas, each a coordinate plus a radius. At most 200 across include and
            # exclude.
            custom_locations: nil,
            # US states and DC, as ISO 3166-2 codes such as `US-CA`. US territories (`PR`,
            # `GU`, `VI`, `AS`, `MP`) and everywhere outside the US are targeted through
            # `countries`.
            regions: nil,
            # ZIP and postal codes, keyed by the ad platform's location taxonomy. Meta keys
            # these `COUNTRY:CODE`, as `US:78756` — a bare code is ambiguous, because the same
            # one exists in several countries. TikTok takes the bare code.
            zips: nil
          )
          end

          sig do
            override.returns(
              {
                cities:
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::Regions::Exclude::City
                  ],
                countries: T::Array[String],
                country_groups: T::Array[String],
                custom_locations:
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation
                  ],
                regions: T::Array[String],
                zips:
                  T::Array[
                    T.any(
                      String,
                      WhopSDK::AdGroupUpdateParams::Regions::Exclude::Zip::Key
                    )
                  ]
              }
            )
          end
          def to_hash
          end

          class City < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::City,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The ad platform's key for the city in its location taxonomy.
            sig { returns(String) }
            attr_accessor :key

            # City name, such as `Austin`.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { params(key: String, name: String).returns(T.attached_class) }
            def self.new(
              # The ad platform's key for the city in its location taxonomy.
              key:,
              # City name, such as `Austin`.
              name: nil
            )
            end

            sig { override.returns({ key: String, name: String }) }
            def to_hash
            end
          end

          class CustomLocation < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Latitude of the center point.
            sig { returns(Float) }
            attr_accessor :latitude

            # Longitude of the center point.
            sig { returns(Float) }
            attr_accessor :longitude

            # Radius around the center point: 1-50 miles or 1-80 kilometers.
            sig { returns(Float) }
            attr_accessor :radius

            # Unit for `radius`. Defaults to `mile`.
            sig do
              returns(
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit::OrSymbol
                )
              )
            end
            attr_reader :distance_unit

            sig do
              params(
                distance_unit:
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit::OrSymbol
              ).void
            end
            attr_writer :distance_unit

            # Label for the location, such as a city or address.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(
                latitude: Float,
                longitude: Float,
                radius: Float,
                distance_unit:
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit::OrSymbol,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Latitude of the center point.
              latitude:,
              # Longitude of the center point.
              longitude:,
              # Radius around the center point: 1-50 miles or 1-80 kilometers.
              radius:,
              # Unit for `radius`. Defaults to `mile`.
              distance_unit: nil,
              # Label for the location, such as a city or address.
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  latitude: Float,
                  longitude: Float,
                  radius: Float,
                  distance_unit:
                    WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit::OrSymbol,
                  name: String
                }
              )
            end
            def to_hash
            end

            # Unit for `radius`. Defaults to `mile`.
            module DistanceUnit
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MILE =
                T.let(
                  :mile,
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit::TaggedSymbol
                )
              KILOMETER =
                T.let(
                  :kilometer,
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module Zip
            extend WhopSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::Zip::Key
                )
              end

            class Key < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::Regions::Exclude::Zip::Key,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The ad platform's key for the ZIP or postal code.
              sig { returns(String) }
              attr_accessor :key

              sig { params(key: String).returns(T.attached_class) }
              def self.new(
                # The ad platform's key for the ZIP or postal code.
                key:
              )
              end

              sig { override.returns({ key: String }) }
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Exclude::Zip::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        class Include < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdGroupUpdateParams::Regions::Include,
                WhopSDK::Internal::AnyHash
              )
            end

          # Cities, keyed by the ad platform's location taxonomy.
          sig do
            returns(
              T.nilable(
                T::Array[WhopSDK::AdGroupUpdateParams::Regions::Include::City]
              )
            )
          end
          attr_reader :cities

          sig do
            params(
              cities:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Include::City::OrHash
                ]
            ).void
          end
          attr_writer :cities

          # Countries, as ISO 3166-1 alpha-2 codes such as `US`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :countries

          sig { params(countries: T::Array[String]).void }
          attr_writer :countries

          # Multi-country groups such as `worldwide` or `europe`. Include-only — groups
          # can't be excluded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :country_groups

          sig { params(country_groups: T::Array[String]).void }
          attr_writer :country_groups

          # Circular areas, each a coordinate plus a radius. At most 200 across include and
          # exclude.
          sig do
            returns(
              T.nilable(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation
                ]
              )
            )
          end
          attr_reader :custom_locations

          sig do
            params(
              custom_locations:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::OrHash
                ]
            ).void
          end
          attr_writer :custom_locations

          # US states and DC, as ISO 3166-2 codes such as `US-CA`. US territories (`PR`,
          # `GU`, `VI`, `AS`, `MP`) and everywhere outside the US are targeted through
          # `countries`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :regions

          sig { params(regions: T::Array[String]).void }
          attr_writer :regions

          # ZIP and postal codes, keyed by the ad platform's location taxonomy. Meta keys
          # these `COUNTRY:CODE`, as `US:78756` — a bare code is ambiguous, because the same
          # one exists in several countries. TikTok takes the bare code.
          sig do
            returns(
              T.nilable(
                T::Array[
                  T.any(
                    String,
                    WhopSDK::AdGroupUpdateParams::Regions::Include::Zip::Key
                  )
                ]
              )
            )
          end
          attr_reader :zips

          sig do
            params(
              zips:
                T::Array[
                  T.any(
                    String,
                    WhopSDK::AdGroupUpdateParams::Regions::Include::Zip::Key::OrHash
                  )
                ]
            ).void
          end
          attr_writer :zips

          # Locations the ad group targets.
          sig do
            params(
              cities:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Include::City::OrHash
                ],
              countries: T::Array[String],
              country_groups: T::Array[String],
              custom_locations:
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::OrHash
                ],
              regions: T::Array[String],
              zips:
                T::Array[
                  T.any(
                    String,
                    WhopSDK::AdGroupUpdateParams::Regions::Include::Zip::Key::OrHash
                  )
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Cities, keyed by the ad platform's location taxonomy.
            cities: nil,
            # Countries, as ISO 3166-1 alpha-2 codes such as `US`.
            countries: nil,
            # Multi-country groups such as `worldwide` or `europe`. Include-only — groups
            # can't be excluded.
            country_groups: nil,
            # Circular areas, each a coordinate plus a radius. At most 200 across include and
            # exclude.
            custom_locations: nil,
            # US states and DC, as ISO 3166-2 codes such as `US-CA`. US territories (`PR`,
            # `GU`, `VI`, `AS`, `MP`) and everywhere outside the US are targeted through
            # `countries`.
            regions: nil,
            # ZIP and postal codes, keyed by the ad platform's location taxonomy. Meta keys
            # these `COUNTRY:CODE`, as `US:78756` — a bare code is ambiguous, because the same
            # one exists in several countries. TikTok takes the bare code.
            zips: nil
          )
          end

          sig do
            override.returns(
              {
                cities:
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::Regions::Include::City
                  ],
                countries: T::Array[String],
                country_groups: T::Array[String],
                custom_locations:
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation
                  ],
                regions: T::Array[String],
                zips:
                  T::Array[
                    T.any(
                      String,
                      WhopSDK::AdGroupUpdateParams::Regions::Include::Zip::Key
                    )
                  ]
              }
            )
          end
          def to_hash
          end

          class City < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::Regions::Include::City,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The ad platform's key for the city in its location taxonomy.
            sig { returns(String) }
            attr_accessor :key

            # City name, such as `Austin`.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { params(key: String, name: String).returns(T.attached_class) }
            def self.new(
              # The ad platform's key for the city in its location taxonomy.
              key:,
              # City name, such as `Austin`.
              name: nil
            )
            end

            sig { override.returns({ key: String, name: String }) }
            def to_hash
            end
          end

          class CustomLocation < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Latitude of the center point.
            sig { returns(Float) }
            attr_accessor :latitude

            # Longitude of the center point.
            sig { returns(Float) }
            attr_accessor :longitude

            # Radius around the center point: 1-50 miles or 1-80 kilometers.
            sig { returns(Float) }
            attr_accessor :radius

            # Unit for `radius`. Defaults to `mile`.
            sig do
              returns(
                T.nilable(
                  WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit::OrSymbol
                )
              )
            end
            attr_reader :distance_unit

            sig do
              params(
                distance_unit:
                  WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit::OrSymbol
              ).void
            end
            attr_writer :distance_unit

            # Label for the location, such as a city or address.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(
                latitude: Float,
                longitude: Float,
                radius: Float,
                distance_unit:
                  WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit::OrSymbol,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Latitude of the center point.
              latitude:,
              # Longitude of the center point.
              longitude:,
              # Radius around the center point: 1-50 miles or 1-80 kilometers.
              radius:,
              # Unit for `radius`. Defaults to `mile`.
              distance_unit: nil,
              # Label for the location, such as a city or address.
              name: nil
            )
            end

            sig do
              override.returns(
                {
                  latitude: Float,
                  longitude: Float,
                  radius: Float,
                  distance_unit:
                    WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit::OrSymbol,
                  name: String
                }
              )
            end
            def to_hash
            end

            # Unit for `radius`. Defaults to `mile`.
            module DistanceUnit
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MILE =
                T.let(
                  :mile,
                  WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit::TaggedSymbol
                )
              KILOMETER =
                T.let(
                  :kilometer,
                  WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module Zip
            extend WhopSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  WhopSDK::AdGroupUpdateParams::Regions::Include::Zip::Key
                )
              end

            class Key < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::AdGroupUpdateParams::Regions::Include::Zip::Key,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The ad platform's key for the ZIP or postal code.
              sig { returns(String) }
              attr_accessor :key

              sig { params(key: String).returns(T.attached_class) }
              def self.new(
                # The ad platform's key for the ZIP or postal code.
                key:
              )
              end

              sig { override.returns({ key: String }) }
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdGroupUpdateParams::Regions::Include::Zip::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end

      # Initial status (default: `active`).
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroupUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, WhopSDK::AdGroupUpdateParams::Status::TaggedSymbol)
        PAUSED =
          T.let(:paused, WhopSDK::AdGroupUpdateParams::Status::TaggedSymbol)

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
