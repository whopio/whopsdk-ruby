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

      # @!attribute audiences
      #   Saved audiences to deliver to or exclude. Can't be combined with
      #   demographics.automatic.
      #
      #   @return [WhopSDK::Models::AdGroupUpdateParams::Audiences, nil]
      optional :audiences, -> { WhopSDK::AdGroupUpdateParams::Audiences }

      # @!attribute bid_type
      #   How delivery bids are set in the ad auction. Target-based strategies use
      #   `desired_cost_per_result`.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::BidType, nil]
      optional :bid_type, enum: -> { WhopSDK::AdGroupUpdateParams::BidType }

      # @!attribute budget_amount
      #   This ad group's budget, in the ad account's currency. Omit when the budget is
      #   set on the campaign instead.
      #
      #   @return [Float, nil]
      optional :budget_amount, Float

      # @!attribute budget_type
      #   Whether budget_amount is spent per day (`daily`) or over the ad group's full run
      #   (`lifetime`).
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::BudgetType, nil]
      optional :budget_type, enum: -> { WhopSDK::AdGroupUpdateParams::BudgetType }

      # @!attribute conversion_event
      #   The pixel event optimized for. A standard event, or any custom pixel event name.
      #
      #   @return [Symbol, String, WhopSDK::Models::AdGroupUpdateParams::ConversionEvent, nil]
      optional :conversion_event, union: -> { WhopSDK::AdGroupUpdateParams::ConversionEvent }, nil?: true

      # @!attribute conversion_location
      #   Where the outcome being optimized for occurs, such as a website visit,
      #   social-profile visit, messaging conversation, ad interaction, or lead-form
      #   submission. The lead form itself is set on the ad.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::ConversionLocation, nil]
      optional :conversion_location, enum: -> { WhopSDK::AdGroupUpdateParams::ConversionLocation }

      # @!attribute demographics
      #   Age, gender, and automatic-audience targeting.
      #
      #   @return [WhopSDK::Models::AdGroupUpdateParams::Demographics, nil]
      optional :demographics, -> { WhopSDK::AdGroupUpdateParams::Demographics }

      # @!attribute desired_cost_per_result
      #   Cost per result to aim for (`average_target`) or never exceed
      #   (`maximum_target`).
      #
      #   @return [Float, nil]
      optional :desired_cost_per_result, Float

      # @!attribute detailed_targeting
      #   Interest, behavior, and demographic targeting, using categories from the ad
      #   platform's targeting taxonomy. Entries across interests, behaviors, and
      #   demographics are OR'd together (anyone matching any entry is reached), matching
      #   Ads Manager's detailed-targeting box. At most 100 entries per section. Can't be
      #   combined with demographics.automatic, and unavailable to campaigns with
      #   special_ad_categories. Send the complete intended state — a section you omit is
      #   cleared.
      #
      #   @return [WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting, nil]
      optional :detailed_targeting, -> { WhopSDK::AdGroupUpdateParams::DetailedTargeting }

      # @!attribute devices
      #   Device platforms and operating systems to target.
      #
      #   @return [WhopSDK::Models::AdGroupUpdateParams::Devices, nil]
      optional :devices, -> { WhopSDK::AdGroupUpdateParams::Devices }

      # @!attribute ends_at
      #   When the ad group stops delivering, as an ISO 8601 timestamp. Omit to run until
      #   paused.
      #
      #   @return [String, nil]
      optional :ends_at, String

      # @!attribute frequency_cap
      #   Cap on how often one person sees ads from this ad group. Only available on
      #   campaigns with the `awareness` objective.
      #
      #   @return [WhopSDK::Models::AdGroupUpdateParams::FrequencyCap, nil]
      optional :frequency_cap, -> { WhopSDK::AdGroupUpdateParams::FrequencyCap }

      # @!attribute languages
      #   Languages to target, as ISO 639 codes such as `en` or `es`. Empty or omitted
      #   targets all languages.
      #
      #   @return [Array<String>, nil]
      optional :languages, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute message_apps
      #   Apps the conversation opens in. Required when setting `conversion_location` to
      #   `messaging`, and rejected unless the ad group's conversion location is
      #   `messaging`.
      #
      #   @return [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::MessageApp>, nil]
      optional :message_apps,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroupUpdateParams::MessageApp] }

      # @!attribute minimum_daily_spend
      #   Minimum the ad group tries to spend each day.
      #
      #   @return [Float, nil]
      optional :minimum_daily_spend, Float

      # @!attribute optimization_goal
      #   The result the ad group's delivery is optimized to get the most of.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::OptimizationGoal, nil]
      optional :optimization_goal, enum: -> { WhopSDK::AdGroupUpdateParams::OptimizationGoal }

      # @!attribute placements
      #   `automatic` to let the ad platform choose placements, or the list of platforms
      #   and positions to target. Omit a platform's positions to target all of them.
      #
      #   Valid positions per platform:
      #
      #   - `facebook`: `feed`, `right_hand_column`, `marketplace`, `search`,
      #     `profile_feed`, `notification`, `story`, `instream_video`, `facebook_reels`,
      #     `facebook_reels_overlay`, `biz_disco_feed`
      #   - `instagram`: `stream`, `story`, `explore`, `explore_home`, `reels`,
      #     `profile_feed`, `profile_reels`, `ig_search`
      #   - `messenger`: `story`
      #   - `audience_network`: `classic`, `rewarded_video`
      #   - `threads`: `threads_stream`
      #   - `whatsapp`: `status`
      #
      #   @return [Symbol, Array<WhopSDK::Models::AdGroupUpdateParams::Placements::UnionMember1>, WhopSDK::Models::AdGroupUpdateParams::Placements, nil]
      optional :placements, union: -> { WhopSDK::AdGroupUpdateParams::Placements }

      # @!attribute regions
      #   Locations to target and exclude.
      #
      #   @return [WhopSDK::Models::AdGroupUpdateParams::Regions, nil]
      optional :regions, -> { WhopSDK::AdGroupUpdateParams::Regions }

      # @!attribute starts_at
      #   When the ad group starts delivering, as an ISO 8601 timestamp. Omit to start as
      #   soon as it's active.
      #
      #   @return [String, nil]
      optional :starts_at, String

      # @!attribute status
      #   Initial status (default: `active`).
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Status, nil]
      optional :status, enum: -> { WhopSDK::AdGroupUpdateParams::Status }

      # @!attribute title
      #   The display name of the ad group.
      #
      #   @return [String, nil]
      optional :title, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(id:, audiences: nil, bid_type: nil, budget_amount: nil, budget_type: nil, conversion_event: nil, conversion_location: nil, demographics: nil, desired_cost_per_result: nil, detailed_targeting: nil, devices: nil, ends_at: nil, frequency_cap: nil, languages: nil, message_apps: nil, minimum_daily_spend: nil, optimization_goal: nil, placements: nil, regions: nil, starts_at: nil, status: nil, title: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdGroupUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param audiences [WhopSDK::Models::AdGroupUpdateParams::Audiences] Saved audiences to deliver to or exclude. Can't be combined with demographics.au
      #
      #   @param bid_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::BidType] How delivery bids are set in the ad auction. Target-based strategies use `desire
      #
      #   @param budget_amount [Float] This ad group's budget, in the ad account's currency. Omit when the budget is se
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::BudgetType] Whether budget_amount is spent per day (`daily`) or over the ad group's full run
      #
      #   @param conversion_event [Symbol, String, WhopSDK::Models::AdGroupUpdateParams::ConversionEvent, nil] The pixel event optimized for. A standard event, or any custom pixel event name.
      #
      #   @param conversion_location [Symbol, WhopSDK::Models::AdGroupUpdateParams::ConversionLocation] Where the outcome being optimized for occurs, such as a website visit, social-pr
      #
      #   @param demographics [WhopSDK::Models::AdGroupUpdateParams::Demographics] Age, gender, and automatic-audience targeting.
      #
      #   @param desired_cost_per_result [Float] Cost per result to aim for (`average_target`) or never exceed (`maximum_target`)
      #
      #   @param detailed_targeting [WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting] Interest, behavior, and demographic targeting, using categories from the ad plat
      #
      #   @param devices [WhopSDK::Models::AdGroupUpdateParams::Devices] Device platforms and operating systems to target.
      #
      #   @param ends_at [String] When the ad group stops delivering, as an ISO 8601 timestamp. Omit to run until
      #
      #   @param frequency_cap [WhopSDK::Models::AdGroupUpdateParams::FrequencyCap] Cap on how often one person sees ads from this ad group. Only available on campa
      #
      #   @param languages [Array<String>] Languages to target, as ISO 639 codes such as `en` or `es`. Empty or omitted tar
      #
      #   @param message_apps [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::MessageApp>] Apps the conversation opens in. Required when setting `conversion_location` to `
      #
      #   @param minimum_daily_spend [Float] Minimum the ad group tries to spend each day.
      #
      #   @param optimization_goal [Symbol, WhopSDK::Models::AdGroupUpdateParams::OptimizationGoal] The result the ad group's delivery is optimized to get the most of.
      #
      #   @param placements [Symbol, Array<WhopSDK::Models::AdGroupUpdateParams::Placements::UnionMember1>, WhopSDK::Models::AdGroupUpdateParams::Placements] `automatic` to let the ad platform choose placements, or the list of platforms a
      #
      #   @param regions [WhopSDK::Models::AdGroupUpdateParams::Regions] Locations to target and exclude.
      #
      #   @param starts_at [String] When the ad group starts delivering, as an ISO 8601 timestamp. Omit to start as
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroupUpdateParams::Status] Initial status (default: `active`).
      #
      #   @param title [String] The display name of the ad group.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Audiences < WhopSDK::Internal::Type::BaseModel
        # @!attribute exclude
        #   IDs of saved audiences to exclude from delivery, prefixed `adaud_`.
        #
        #   @return [Array<String>, nil]
        optional :exclude, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute include
        #   IDs of saved audiences to deliver to, prefixed `adaud_`.
        #
        #   @return [Array<String>, nil]
        optional :include, WhopSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(exclude: nil, include: nil)
        #   Saved audiences to deliver to or exclude. Can't be combined with
        #   demographics.automatic.
        #
        #   @param exclude [Array<String>] IDs of saved audiences to exclude from delivery, prefixed `adaud_`.
        #
        #   @param include [Array<String>] IDs of saved audiences to deliver to, prefixed `adaud_`.
      end

      # How delivery bids are set in the ad auction. Target-based strategies use
      # `desired_cost_per_result`.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        MINIMUM_COST = :minimum_cost
        AVERAGE_TARGET = :average_target
        MAXIMUM_TARGET = :maximum_target

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether budget_amount is spent per day (`daily`) or over the ad group's full run
      # (`lifetime`).
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        LIFETIME = :lifetime

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The pixel event optimized for. A standard event, or any custom pixel event name.
      module ConversionEvent
        extend WhopSDK::Internal::Type::Union

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::PURCHASE }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::ADD_TO_CART }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::INITIATED_CHECKOUT }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::ADD_PAYMENT_INFO }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::COMPLETE_REGISTRATION }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::LEAD }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::CONTENT_VIEW }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::SEARCH }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::CONTACT }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::CUSTOMIZE_PRODUCT }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::DONATE }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::FIND_LOCATION }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::SCHEDULE }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::START_TRIAL }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::SUBMIT_APPLICATION }

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::ConversionEvent::SUBSCRIBE }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(WhopSDK::AdGroupUpdateParams::ConversionEvent::TaggedSymbol, String) }
        end

        # @!group

        PURCHASE = :purchase
        ADD_TO_CART = :add_to_cart
        INITIATED_CHECKOUT = :initiated_checkout
        ADD_PAYMENT_INFO = :add_payment_info
        COMPLETE_REGISTRATION = :complete_registration
        LEAD = :lead
        CONTENT_VIEW = :content_view
        SEARCH = :search
        CONTACT = :contact
        CUSTOMIZE_PRODUCT = :customize_product
        DONATE = :donate
        FIND_LOCATION = :find_location
        SCHEDULE = :schedule
        START_TRIAL = :start_trial
        SUBMIT_APPLICATION = :submit_application
        SUBSCRIBE = :subscribe

        # @!endgroup
      end

      # Where the outcome being optimized for occurs, such as a website visit,
      # social-profile visit, messaging conversation, ad interaction, or lead-form
      # submission. The lead form itself is set on the ad.
      module ConversionLocation
        extend WhopSDK::Internal::Type::Enum

        WEBSITE = :website
        PROFILE = :profile
        INSTAGRAM_AND_FACEBOOK = :instagram_and_facebook
        INSTAGRAM_PROFILE = :instagram_profile
        MESSAGING = :messaging
        ON_AD = :on_ad
        INSTANT_FORMS = :instant_forms
        INSTANT_FORMS_AND_MESSENGER = :instant_forms_and_messenger
        WEBSITE_AND_INSTANT_FORMS = :website_and_instant_forms

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Demographics < WhopSDK::Internal::Type::BaseModel
        # @!attribute automatic
        #   Turn on automatic audience targeting (Advantage+ on Meta): the platform can
        #   deliver beyond the ages, genders, and detailed targeting you set, treating them
        #   as suggestions.
        #
        #   @return [Boolean, nil]
        optional :automatic, WhopSDK::Internal::Type::Boolean

        # @!attribute gender
        #   Gender to target.
        #
        #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Demographics::Gender, nil]
        optional :gender, enum: -> { WhopSDK::AdGroupUpdateParams::Demographics::Gender }

        # @!attribute maximum_age
        #   Oldest age to target.
        #
        #   @return [Integer, nil]
        optional :maximum_age, Integer

        # @!attribute minimum_age
        #   Youngest age to target.
        #
        #   @return [Integer, nil]
        optional :minimum_age, Integer

        # @!method initialize(automatic: nil, gender: nil, maximum_age: nil, minimum_age: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdGroupUpdateParams::Demographics} for more details.
        #
        #   Age, gender, and automatic-audience targeting.
        #
        #   @param automatic [Boolean] Turn on automatic audience targeting (Advantage+ on Meta): the platform can deli
        #
        #   @param gender [Symbol, WhopSDK::Models::AdGroupUpdateParams::Demographics::Gender] Gender to target.
        #
        #   @param maximum_age [Integer] Oldest age to target.
        #
        #   @param minimum_age [Integer] Youngest age to target.

        # Gender to target.
        #
        # @see WhopSDK::Models::AdGroupUpdateParams::Demographics#gender
        module Gender
          extend WhopSDK::Internal::Type::Enum

          ALL = :all
          MALE = :male
          FEMALE = :female

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class DetailedTargeting < WhopSDK::Internal::Type::BaseModel
        # @!attribute behaviors
        #   Behavior categories to target, such as frequent travelers.
        #
        #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Behavior>, nil]
        optional :behaviors,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior] }

        # @!attribute demographics
        #   Demographic categories to target, such as life events, industries, work
        #   employers, job titles, schools, or majors.
        #
        #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Demographic>, nil]
        optional :demographics,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic] }

        # @!attribute interests
        #   Interest categories to target, such as an interest in movies.
        #
        #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Interest>, nil]
        optional :interests,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::DetailedTargeting::Interest] }

        # @!method initialize(behaviors: nil, demographics: nil, interests: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting} for more details.
        #
        #   Interest, behavior, and demographic targeting, using categories from the ad
        #   platform's targeting taxonomy. Entries across interests, behaviors, and
        #   demographics are OR'd together (anyone matching any entry is reached), matching
        #   Ads Manager's detailed-targeting box. At most 100 entries per section. Can't be
        #   combined with demographics.automatic, and unavailable to campaigns with
        #   special_ad_categories. Send the complete intended state — a section you omit is
        #   cleared.
        #
        #   @param behaviors [Array<WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Behavior>] Behavior categories to target, such as frequent travelers.
        #
        #   @param demographics [Array<WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Demographic>] Demographic categories to target, such as life events, industries, work employer
        #
        #   @param interests [Array<WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Interest>] Interest categories to target, such as an interest in movies.

        class Behavior < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @return [String]
          required :id, String

          # @!attribute behavior_type
          #   On ad platforms that scope behavior categories, what this one is measured on.
          #   Send back the value the targeting_options endpoint returned alongside the id.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType, nil]
          optional :behavior_type,
                   enum: -> { WhopSDK::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType }

          # @!attribute name
          #   Category name, such as `Frequent travelers`.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute period
          #   On ad platforms that scope behavior categories, how many days of activity the
          #   category covers.
          #
          #   @return [Integer, nil]
          optional :period, Integer

          # @!method initialize(id:, behavior_type: nil, name: nil, period: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Behavior} for more
          #   details.
          #
          #   @param id [String] The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @param behavior_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Behavior::BehaviorType] On ad platforms that scope behavior categories, what this one is measured on. Se
          #
          #   @param name [String] Category name, such as `Frequent travelers`.
          #
          #   @param period [Integer] On ad platforms that scope behavior categories, how many days of activity the ca

          # On ad platforms that scope behavior categories, what this one is measured on.
          # Send back the value the targeting_options endpoint returned alongside the id.
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Behavior#behavior_type
          module BehaviorType
            extend WhopSDK::Internal::Type::Enum

            VIDEO = :video
            CREATOR = :creator
            HASHTAG = :hashtag

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Demographic < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #   Kind of demographic the category belongs to.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Demographic::Type]
          required :type, enum: -> { WhopSDK::AdGroupUpdateParams::DetailedTargeting::Demographic::Type }

          # @!attribute name
          #   Category name, such as `Recently moved`.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id:, type:, name: nil)
          #   @param id [String] The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @param type [Symbol, WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Demographic::Type] Kind of demographic the category belongs to.
          #
          #   @param name [String] Category name, such as `Recently moved`.

          # Kind of demographic the category belongs to.
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::DetailedTargeting::Demographic#type
          module Type
            extend WhopSDK::Internal::Type::Enum

            LIFE_EVENTS = :life_events
            INDUSTRIES = :industries
            INCOME = :income
            FAMILY_STATUSES = :family_statuses
            WORK_EMPLOYERS = :work_employers
            WORK_POSITIONS = :work_positions
            EDUCATION_SCHOOLS = :education_schools
            EDUCATION_MAJORS = :education_majors

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Interest < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   Category name, such as `Movies`.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id:, name: nil)
          #   @param id [String] The ad platform's ID for the category in its targeting taxonomy.
          #
          #   @param name [String] Category name, such as `Movies`.
        end
      end

      class Devices < WhopSDK::Internal::Type::BaseModel
        # @!attribute operating_systems
        #   Operating systems to target. Empty targets all operating systems.
        #
        #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::Devices::OperatingSystem>, nil]
        optional :operating_systems,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem] }

        # @!attribute platforms
        #   Device types to target. Empty targets all devices.
        #
        #   @return [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::Devices::Platform>, nil]
        optional :platforms,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroupUpdateParams::Devices::Platform] }

        # @!method initialize(operating_systems: nil, platforms: nil)
        #   Device platforms and operating systems to target.
        #
        #   @param operating_systems [Array<WhopSDK::Models::AdGroupUpdateParams::Devices::OperatingSystem>] Operating systems to target. Empty targets all operating systems.
        #
        #   @param platforms [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::Devices::Platform>] Device types to target. Empty targets all devices.

        class OperatingSystem < WhopSDK::Internal::Type::BaseModel
          # @!attribute os
          #   Operating system to target.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Devices::OperatingSystem::Os]
          required :os, enum: -> { WhopSDK::AdGroupUpdateParams::Devices::OperatingSystem::Os }

          # @!attribute minimum_version
          #   Lowest OS version to target, such as `18.0`. Omit to target any version.
          #
          #   @return [String, nil]
          optional :minimum_version, String

          # @!method initialize(os:, minimum_version: nil)
          #   @param os [Symbol, WhopSDK::Models::AdGroupUpdateParams::Devices::OperatingSystem::Os] Operating system to target.
          #
          #   @param minimum_version [String] Lowest OS version to target, such as `18.0`. Omit to target any version.

          # Operating system to target.
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::Devices::OperatingSystem#os
          module Os
            extend WhopSDK::Internal::Type::Enum

            IOS = :ios
            ANDROID = :android

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        module Platform
          extend WhopSDK::Internal::Type::Enum

          MOBILE = :mobile
          DESKTOP = :desktop

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class FrequencyCap < WhopSDK::Internal::Type::BaseModel
        # @!attribute maximum_impressions
        #   Most times one person can be shown ads from this ad group within the window.
        #
        #   @return [Integer, nil]
        optional :maximum_impressions, Integer

        # @!attribute per_days
        #   Length of the rolling window, in days.
        #
        #   @return [Integer, nil]
        optional :per_days, Integer

        # @!method initialize(maximum_impressions: nil, per_days: nil)
        #   Cap on how often one person sees ads from this ad group. Only available on
        #   campaigns with the `awareness` objective.
        #
        #   @param maximum_impressions [Integer] Most times one person can be shown ads from this ad group within the window.
        #
        #   @param per_days [Integer] Length of the rolling window, in days.
      end

      module MessageApp
        extend WhopSDK::Internal::Type::Enum

        MESSENGER = :messenger
        INSTAGRAM = :instagram
        WHATSAPP = :whatsapp

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The result the ad group's delivery is optimized to get the most of.
      module OptimizationGoal
        extend WhopSDK::Internal::Type::Enum

        CONVERSIONS = :conversions
        LINK_CLICKS = :link_clicks
        LANDING_PAGE_VIEWS = :landing_page_views
        REACH = :reach
        IMPRESSIONS = :impressions
        ENGAGEMENT = :engagement
        CONVERSATIONS = :conversations
        VIDEO_VIEWS = :video_views
        TWO_SECOND_VIEWS = :two_second_views
        PAGE_LIKES = :page_likes
        SOCIAL_PROFILE = :social_profile
        AD_RECALL_LIFT = :ad_recall_lift
        EVENT_RESPONSES = :event_responses
        REMINDERS_SET = :reminders_set
        LEAD_GENERATION = :lead_generation
        QUALITY_LEAD = :quality_lead
        VALUE = :value
        PROFILE_AND_PAGE_ENGAGEMENT = :profile_and_page_engagement

        # @!method self.values
        #   @return [Array<Symbol>]
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

        variant const: -> { WhopSDK::Models::AdGroupUpdateParams::Placements::AUTOMATIC }

        variant -> { WhopSDK::Models::AdGroupUpdateParams::Placements::UnionMember1Array }

        class UnionMember1 < WhopSDK::Internal::Type::BaseModel
          # @!attribute platform
          #   Platform the ads run on.
          #
          #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Placements::UnionMember1::Platform]
          required :platform, enum: -> { WhopSDK::AdGroupUpdateParams::Placements::UnionMember1::Platform }

          # @!attribute positions
          #   Positions to target within the platform, such as `feed` or `story`. Omit to
          #   target all of the platform's positions.
          #
          #   @return [Array<String>, nil]
          optional :positions, WhopSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(platform:, positions: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdGroupUpdateParams::Placements::UnionMember1} for more
          #   details.
          #
          #   @param platform [Symbol, WhopSDK::Models::AdGroupUpdateParams::Placements::UnionMember1::Platform] Platform the ads run on.
          #
          #   @param positions [Array<String>] Positions to target within the platform, such as `feed` or `story`. Omit to targ

          # Platform the ads run on.
          #
          # @see WhopSDK::Models::AdGroupUpdateParams::Placements::UnionMember1#platform
          module Platform
            extend WhopSDK::Internal::Type::Enum

            FACEBOOK = :facebook
            INSTAGRAM = :instagram
            MESSENGER = :messenger
            AUDIENCE_NETWORK = :audience_network
            THREADS = :threads
            WHATSAPP = :whatsapp

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Symbol, Array<WhopSDK::Models::AdGroupUpdateParams::Placements::UnionMember1>)]

        define_sorbet_constant!(:Variants) do
          T.type_alias do
            T.any(
              WhopSDK::AdGroupUpdateParams::Placements::TaggedSymbol,
              T::Array[WhopSDK::AdGroupUpdateParams::Placements::UnionMember1]
            )
          end
        end

        # @!group

        AUTOMATIC = :automatic

        # @!endgroup

        # @type [WhopSDK::Internal::Type::Converter]
        UnionMember1Array =
          WhopSDK::Internal::Type::ArrayOf[-> { WhopSDK::AdGroupUpdateParams::Placements::UnionMember1 }]
      end

      class Regions < WhopSDK::Internal::Type::BaseModel
        # @!attribute exclude
        #   Locations excluded from targeting. Country groups can't be excluded.
        #
        #   @return [WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude, nil]
        optional :exclude, -> { WhopSDK::AdGroupUpdateParams::Regions::Exclude }

        # @!attribute include
        #   Locations the ad group targets.
        #
        #   @return [WhopSDK::Models::AdGroupUpdateParams::Regions::Include, nil]
        optional :include, -> { WhopSDK::AdGroupUpdateParams::Regions::Include }

        # @!method initialize(exclude: nil, include: nil)
        #   Locations to target and exclude.
        #
        #   @param exclude [WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude] Locations excluded from targeting. Country groups can't be excluded.
        #
        #   @param include [WhopSDK::Models::AdGroupUpdateParams::Regions::Include] Locations the ad group targets.

        # @see WhopSDK::Models::AdGroupUpdateParams::Regions#exclude
        class Exclude < WhopSDK::Internal::Type::BaseModel
          # @!attribute cities
          #   Cities, keyed by the ad platform's location taxonomy.
          #
          #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude::City>, nil]
          optional :cities,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::Regions::Exclude::City] }

          # @!attribute countries
          #   Countries, as ISO 3166-1 alpha-2 codes such as `US`.
          #
          #   @return [Array<String>, nil]
          optional :countries, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute country_groups
          #   Multi-country groups such as `worldwide` or `europe`. Include-only — groups
          #   can't be excluded.
          #
          #   @return [Array<String>, nil]
          optional :country_groups, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_locations
          #   Circular areas, each a coordinate plus a radius. At most 200 across include and
          #   exclude.
          #
          #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude::CustomLocation>, nil]
          optional :custom_locations,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation] }

          # @!attribute regions
          #   US states and DC, as ISO 3166-2 codes such as `US-CA`. US territories (`PR`,
          #   `GU`, `VI`, `AS`, `MP`) and everywhere outside the US are targeted through
          #   `countries`.
          #
          #   @return [Array<String>, nil]
          optional :regions, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute zips
          #   ZIP and postal codes, keyed by the ad platform's location taxonomy. Meta keys
          #   these `COUNTRY:CODE`, as `US:78756` — a bare code is ambiguous, because the same
          #   one exists in several countries. TikTok takes the bare code.
          #
          #   @return [Array<String, WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude::Zip::Key>, nil]
          optional :zips,
                   -> { WhopSDK::Internal::Type::ArrayOf[union: WhopSDK::AdGroupUpdateParams::Regions::Exclude::Zip] }

          # @!method initialize(cities: nil, countries: nil, country_groups: nil, custom_locations: nil, regions: nil, zips: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude} for more details.
          #
          #   Locations excluded from targeting. Country groups can't be excluded.
          #
          #   @param cities [Array<WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude::City>] Cities, keyed by the ad platform's location taxonomy.
          #
          #   @param countries [Array<String>] Countries, as ISO 3166-1 alpha-2 codes such as `US`.
          #
          #   @param country_groups [Array<String>] Multi-country groups such as `worldwide` or `europe`. Include-only — groups can'
          #
          #   @param custom_locations [Array<WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude::CustomLocation>] Circular areas, each a coordinate plus a radius. At most 200 across include and
          #
          #   @param regions [Array<String>] US states and DC, as ISO 3166-2 codes such as `US-CA`. US territories (`PR`, `GU
          #
          #   @param zips [Array<String, WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude::Zip::Key>] ZIP and postal codes, keyed by the ad platform's location taxonomy. Meta keys th

          class City < WhopSDK::Internal::Type::BaseModel
            # @!attribute key
            #   The ad platform's key for the city in its location taxonomy.
            #
            #   @return [String]
            required :key, String

            # @!attribute name
            #   City name, such as `Austin`.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(key:, name: nil)
            #   @param key [String] The ad platform's key for the city in its location taxonomy.
            #
            #   @param name [String] City name, such as `Austin`.
          end

          class CustomLocation < WhopSDK::Internal::Type::BaseModel
            # @!attribute latitude
            #   Latitude of the center point.
            #
            #   @return [Float]
            required :latitude, Float

            # @!attribute longitude
            #   Longitude of the center point.
            #
            #   @return [Float]
            required :longitude, Float

            # @!attribute radius
            #   Radius around the center point: 1-50 miles or 1-80 kilometers.
            #
            #   @return [Float]
            required :radius, Float

            # @!attribute distance_unit
            #   Unit for `radius`. Defaults to `mile`.
            #
            #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit, nil]
            optional :distance_unit,
                     enum: -> { WhopSDK::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit }

            # @!attribute name
            #   Label for the location, such as a city or address.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(latitude:, longitude:, radius:, distance_unit: nil, name: nil)
            #   @param latitude [Float] Latitude of the center point.
            #
            #   @param longitude [Float] Longitude of the center point.
            #
            #   @param radius [Float] Radius around the center point: 1-50 miles or 1-80 kilometers.
            #
            #   @param distance_unit [Symbol, WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude::CustomLocation::DistanceUnit] Unit for `radius`. Defaults to `mile`.
            #
            #   @param name [String] Label for the location, such as a city or address.

            # Unit for `radius`. Defaults to `mile`.
            #
            # @see WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude::CustomLocation#distance_unit
            module DistanceUnit
              extend WhopSDK::Internal::Type::Enum

              MILE = :mile
              KILOMETER = :kilometer

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          module Zip
            extend WhopSDK::Internal::Type::Union

            variant String

            variant -> { WhopSDK::AdGroupUpdateParams::Regions::Exclude::Zip::Key }

            class Key < WhopSDK::Internal::Type::BaseModel
              # @!attribute key
              #   The ad platform's key for the ZIP or postal code.
              #
              #   @return [String]
              required :key, String

              # @!method initialize(key:)
              #   @param key [String] The ad platform's key for the ZIP or postal code.
            end

            # @!method self.variants
            #   @return [Array(String, WhopSDK::Models::AdGroupUpdateParams::Regions::Exclude::Zip::Key)]
          end
        end

        # @see WhopSDK::Models::AdGroupUpdateParams::Regions#include
        class Include < WhopSDK::Internal::Type::BaseModel
          # @!attribute cities
          #   Cities, keyed by the ad platform's location taxonomy.
          #
          #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::Regions::Include::City>, nil]
          optional :cities,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::Regions::Include::City] }

          # @!attribute countries
          #   Countries, as ISO 3166-1 alpha-2 codes such as `US`.
          #
          #   @return [Array<String>, nil]
          optional :countries, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute country_groups
          #   Multi-country groups such as `worldwide` or `europe`. Include-only — groups
          #   can't be excluded.
          #
          #   @return [Array<String>, nil]
          optional :country_groups, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_locations
          #   Circular areas, each a coordinate plus a radius. At most 200 across include and
          #   exclude.
          #
          #   @return [Array<WhopSDK::Models::AdGroupUpdateParams::Regions::Include::CustomLocation>, nil]
          optional :custom_locations,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation] }

          # @!attribute regions
          #   US states and DC, as ISO 3166-2 codes such as `US-CA`. US territories (`PR`,
          #   `GU`, `VI`, `AS`, `MP`) and everywhere outside the US are targeted through
          #   `countries`.
          #
          #   @return [Array<String>, nil]
          optional :regions, WhopSDK::Internal::Type::ArrayOf[String]

          # @!attribute zips
          #   ZIP and postal codes, keyed by the ad platform's location taxonomy. Meta keys
          #   these `COUNTRY:CODE`, as `US:78756` — a bare code is ambiguous, because the same
          #   one exists in several countries. TikTok takes the bare code.
          #
          #   @return [Array<String, WhopSDK::Models::AdGroupUpdateParams::Regions::Include::Zip::Key>, nil]
          optional :zips,
                   -> { WhopSDK::Internal::Type::ArrayOf[union: WhopSDK::AdGroupUpdateParams::Regions::Include::Zip] }

          # @!method initialize(cities: nil, countries: nil, country_groups: nil, custom_locations: nil, regions: nil, zips: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdGroupUpdateParams::Regions::Include} for more details.
          #
          #   Locations the ad group targets.
          #
          #   @param cities [Array<WhopSDK::Models::AdGroupUpdateParams::Regions::Include::City>] Cities, keyed by the ad platform's location taxonomy.
          #
          #   @param countries [Array<String>] Countries, as ISO 3166-1 alpha-2 codes such as `US`.
          #
          #   @param country_groups [Array<String>] Multi-country groups such as `worldwide` or `europe`. Include-only — groups can'
          #
          #   @param custom_locations [Array<WhopSDK::Models::AdGroupUpdateParams::Regions::Include::CustomLocation>] Circular areas, each a coordinate plus a radius. At most 200 across include and
          #
          #   @param regions [Array<String>] US states and DC, as ISO 3166-2 codes such as `US-CA`. US territories (`PR`, `GU
          #
          #   @param zips [Array<String, WhopSDK::Models::AdGroupUpdateParams::Regions::Include::Zip::Key>] ZIP and postal codes, keyed by the ad platform's location taxonomy. Meta keys th

          class City < WhopSDK::Internal::Type::BaseModel
            # @!attribute key
            #   The ad platform's key for the city in its location taxonomy.
            #
            #   @return [String]
            required :key, String

            # @!attribute name
            #   City name, such as `Austin`.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(key:, name: nil)
            #   @param key [String] The ad platform's key for the city in its location taxonomy.
            #
            #   @param name [String] City name, such as `Austin`.
          end

          class CustomLocation < WhopSDK::Internal::Type::BaseModel
            # @!attribute latitude
            #   Latitude of the center point.
            #
            #   @return [Float]
            required :latitude, Float

            # @!attribute longitude
            #   Longitude of the center point.
            #
            #   @return [Float]
            required :longitude, Float

            # @!attribute radius
            #   Radius around the center point: 1-50 miles or 1-80 kilometers.
            #
            #   @return [Float]
            required :radius, Float

            # @!attribute distance_unit
            #   Unit for `radius`. Defaults to `mile`.
            #
            #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit, nil]
            optional :distance_unit,
                     enum: -> { WhopSDK::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit }

            # @!attribute name
            #   Label for the location, such as a city or address.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(latitude:, longitude:, radius:, distance_unit: nil, name: nil)
            #   @param latitude [Float] Latitude of the center point.
            #
            #   @param longitude [Float] Longitude of the center point.
            #
            #   @param radius [Float] Radius around the center point: 1-50 miles or 1-80 kilometers.
            #
            #   @param distance_unit [Symbol, WhopSDK::Models::AdGroupUpdateParams::Regions::Include::CustomLocation::DistanceUnit] Unit for `radius`. Defaults to `mile`.
            #
            #   @param name [String] Label for the location, such as a city or address.

            # Unit for `radius`. Defaults to `mile`.
            #
            # @see WhopSDK::Models::AdGroupUpdateParams::Regions::Include::CustomLocation#distance_unit
            module DistanceUnit
              extend WhopSDK::Internal::Type::Enum

              MILE = :mile
              KILOMETER = :kilometer

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          module Zip
            extend WhopSDK::Internal::Type::Union

            variant String

            variant -> { WhopSDK::AdGroupUpdateParams::Regions::Include::Zip::Key }

            class Key < WhopSDK::Internal::Type::BaseModel
              # @!attribute key
              #   The ad platform's key for the ZIP or postal code.
              #
              #   @return [String]
              required :key, String

              # @!method initialize(key:)
              #   @param key [String] The ad platform's key for the ZIP or postal code.
            end

            # @!method self.variants
            #   @return [Array(String, WhopSDK::Models::AdGroupUpdateParams::Regions::Include::Zip::Key)]
          end
        end
      end

      # Initial status (default: `active`).
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
