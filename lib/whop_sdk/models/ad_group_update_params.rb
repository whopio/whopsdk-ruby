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
      #   Saved-audience targeting: { include, exclude } arrays of audience IDs.
      #   Incompatible with demographics.automatic (Advantage+).
      #
      #   @return [Object, nil]
      optional :audiences, WhopSDK::Internal::Type::Unknown

      # @!attribute bid_type
      #   Bid strategy.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::BidType, nil]
      optional :bid_type, enum: -> { WhopSDK::AdGroupUpdateParams::BidType }

      # @!attribute budget_amount
      #   Ad-set budget in dollars (ABO only; omit under CBO).
      #
      #   @return [Float, nil]
      optional :budget_amount, Float

      # @!attribute budget_type
      #   Whether the budget is daily or lifetime.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::BudgetType, nil]
      optional :budget_type, enum: -> { WhopSDK::AdGroupUpdateParams::BudgetType }

      # @!attribute conversion_event
      #   The pixel event optimized for. A standard event, or any custom pixel event name.
      #
      #   @return [Symbol, String, WhopSDK::Models::AdGroupUpdateParams::ConversionEvent, nil]
      optional :conversion_event, union: -> { WhopSDK::AdGroupUpdateParams::ConversionEvent }, nil?: true

      # @!attribute conversion_location
      #   Where results happen: website (conversions), profile (IG/FB engagement),
      #   messaging (DM), on_ad (engagement on the ad, surface follows the optimization
      #   goal), or the lead destinations (instant_forms, instant_forms_and_messenger,
      #   website_and_instant_forms). The lead form itself is set on the ad.
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::ConversionLocation, nil]
      optional :conversion_location, enum: -> { WhopSDK::AdGroupUpdateParams::ConversionLocation }

      # @!attribute demographics
      #   Demographic targeting: { automatic, minimum_age, maximum_age, gender }.
      #
      #   @return [Object, nil]
      optional :demographics, WhopSDK::Internal::Type::Unknown

      # @!attribute desired_cost_per_result
      #   Target/cap cost for average_target / maximum_target.
      #
      #   @return [Float, nil]
      optional :desired_cost_per_result, Float

      # @!attribute devices
      #   Device targeting: { platforms, operating_systems: [{ os, minimum_version }] }.
      #
      #   @return [Object, nil]
      optional :devices, WhopSDK::Internal::Type::Unknown

      # @!attribute ends_at
      #   Schedule end, ISO 8601.
      #
      #   @return [String, nil]
      optional :ends_at, String

      # @!attribute frequency_cap
      #   { maximum_impressions, per_days } — only valid for reach optimization.
      #
      #   @return [Object, nil]
      optional :frequency_cap, WhopSDK::Internal::Type::Unknown

      # @!attribute languages
      #   Languages to target as ISO 639 codes (e.g. en, es). Empty/omitted = all
      #   languages.
      #
      #   @return [Array<String>, nil]
      optional :languages, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute message_apps
      #   Required when conversion_location is messaging: which apps to message on.
      #   Combinations map to the matching Meta destination.
      #
      #   @return [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::MessageApp>, nil]
      optional :message_apps,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AdGroupUpdateParams::MessageApp] }

      # @!attribute minimum_daily_spend
      #   Daily spend floor within the budget.
      #
      #   @return [Float, nil]
      optional :minimum_daily_spend, Float

      # @!attribute optimization_goal
      #   What the ad group optimizes for (e.g. conversions, link_clicks, reach).
      #
      #   @return [String, nil]
      optional :optimization_goal, String

      # @!attribute placements
      #   'automatic' (Advantage+) or a list of { platform, positions }. Omit positions to
      #   target all of a platform's.
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
      #   @return [Object, nil]
      optional :placements, WhopSDK::Internal::Type::Unknown

      # @!attribute regions
      #   Geo targeting: { include / exclude: { countries (ISO 3166-1), regions
      #   (states/provinces as ISO 3166-2, e.g. US-CA), cities (keyed), zips } }.
      #
      #   @return [Object, nil]
      optional :regions, WhopSDK::Internal::Type::Unknown

      # @!attribute starts_at
      #   Schedule start, ISO 8601.
      #
      #   @return [String, nil]
      optional :starts_at, String

      # @!attribute status
      #   Initial status (default: active).
      #
      #   @return [Symbol, WhopSDK::Models::AdGroupUpdateParams::Status, nil]
      optional :status, enum: -> { WhopSDK::AdGroupUpdateParams::Status }

      # @!attribute title
      #   The display name of the ad group.
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(id:, audiences: nil, bid_type: nil, budget_amount: nil, budget_type: nil, conversion_event: nil, conversion_location: nil, demographics: nil, desired_cost_per_result: nil, devices: nil, ends_at: nil, frequency_cap: nil, languages: nil, message_apps: nil, minimum_daily_spend: nil, optimization_goal: nil, placements: nil, regions: nil, starts_at: nil, status: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdGroupUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param audiences [Object] Saved-audience targeting: { include, exclude } arrays of audience IDs. Incompati
      #
      #   @param bid_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::BidType] Bid strategy.
      #
      #   @param budget_amount [Float] Ad-set budget in dollars (ABO only; omit under CBO).
      #
      #   @param budget_type [Symbol, WhopSDK::Models::AdGroupUpdateParams::BudgetType] Whether the budget is daily or lifetime.
      #
      #   @param conversion_event [Symbol, String, WhopSDK::Models::AdGroupUpdateParams::ConversionEvent, nil] The pixel event optimized for. A standard event, or any custom pixel event name.
      #
      #   @param conversion_location [Symbol, WhopSDK::Models::AdGroupUpdateParams::ConversionLocation] Where results happen: website (conversions), profile (IG/FB engagement), messagi
      #
      #   @param demographics [Object] Demographic targeting: { automatic, minimum_age, maximum_age, gender }.
      #
      #   @param desired_cost_per_result [Float] Target/cap cost for average_target / maximum_target.
      #
      #   @param devices [Object] Device targeting: { platforms, operating_systems: [{ os, minimum_version }] }.
      #
      #   @param ends_at [String] Schedule end, ISO 8601.
      #
      #   @param frequency_cap [Object] { maximum_impressions, per_days } — only valid for reach optimization.
      #
      #   @param languages [Array<String>] Languages to target as ISO 639 codes (e.g. en, es). Empty/omitted = all language
      #
      #   @param message_apps [Array<Symbol, WhopSDK::Models::AdGroupUpdateParams::MessageApp>] Required when conversion_location is messaging: which apps to message on. Combin
      #
      #   @param minimum_daily_spend [Float] Daily spend floor within the budget.
      #
      #   @param optimization_goal [String] What the ad group optimizes for (e.g. conversions, link_clicks, reach).
      #
      #   @param placements [Object] 'automatic' (Advantage+) or a list of { platform, positions }. Omit positions to
      #
      #   @param regions [Object] Geo targeting: { include / exclude: { countries (ISO 3166-1), regions (states/pr
      #
      #   @param starts_at [String] Schedule start, ISO 8601.
      #
      #   @param status [Symbol, WhopSDK::Models::AdGroupUpdateParams::Status] Initial status (default: active).
      #
      #   @param title [String] The display name of the ad group.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Bid strategy.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        MINIMUM_COST = :minimum_cost
        AVERAGE_TARGET = :average_target
        MAXIMUM_TARGET = :maximum_target

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether the budget is daily or lifetime.
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

      # Where results happen: website (conversions), profile (IG/FB engagement),
      # messaging (DM), on_ad (engagement on the ad, surface follows the optimization
      # goal), or the lead destinations (instant_forms, instant_forms_and_messenger,
      # website_and_instant_forms). The lead form itself is set on the ad.
      module ConversionLocation
        extend WhopSDK::Internal::Type::Enum

        WEBSITE = :website
        PROFILE = :profile
        MESSAGING = :messaging
        ON_AD = :on_ad
        INSTANT_FORMS = :instant_forms
        INSTANT_FORMS_AND_MESSENGER = :instant_forms_and_messenger
        WEBSITE_AND_INSTANT_FORMS = :website_and_instant_forms

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module MessageApp
        extend WhopSDK::Internal::Type::Enum

        MESSENGER = :messenger
        INSTAGRAM = :instagram
        WHATSAPP = :whatsapp

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Initial status (default: active).
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
