# typed: strong

module WhopSDK
  module Models
    class AdGroupCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdGroupCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ad campaign to create the ad group in.
      sig { returns(String) }
      attr_accessor :ad_campaign_id

      # Saved-audience targeting: { include, exclude } arrays of audience IDs.
      # Incompatible with demographics.automatic (Advantage+).
      sig { returns(T.nilable(T.anything)) }
      attr_reader :audiences

      sig { params(audiences: T.anything).void }
      attr_writer :audiences

      # Bid strategy.
      sig do
        returns(T.nilable(WhopSDK::AdGroupCreateParams::BidType::OrSymbol))
      end
      attr_reader :bid_type

      sig do
        params(bid_type: WhopSDK::AdGroupCreateParams::BidType::OrSymbol).void
      end
      attr_writer :bid_type

      # Ad-set budget in dollars (ABO only; omit under CBO).
      sig { returns(T.nilable(Float)) }
      attr_reader :budget_amount

      sig { params(budget_amount: Float).void }
      attr_writer :budget_amount

      # Whether the budget is daily or lifetime.
      sig do
        returns(T.nilable(WhopSDK::AdGroupCreateParams::BudgetType::OrSymbol))
      end
      attr_reader :budget_type

      sig do
        params(
          budget_type: WhopSDK::AdGroupCreateParams::BudgetType::OrSymbol
        ).void
      end
      attr_writer :budget_type

      # The pixel event optimized for. A standard event, or any custom pixel event name.
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::AdGroupCreateParams::ConversionEvent::OrSymbol,
              String
            )
          )
        )
      end
      attr_accessor :conversion_event

      # Where results happen: website (conversions), profile (IG/FB engagement),
      # messaging (DM), on_ad (engagement on the ad, surface follows the optimization
      # goal), or the lead destinations (instant_forms, instant_forms_and_messenger,
      # website_and_instant_forms). The lead form itself is set on the ad.
      sig do
        returns(
          T.nilable(WhopSDK::AdGroupCreateParams::ConversionLocation::OrSymbol)
        )
      end
      attr_reader :conversion_location

      sig do
        params(
          conversion_location:
            WhopSDK::AdGroupCreateParams::ConversionLocation::OrSymbol
        ).void
      end
      attr_writer :conversion_location

      # Demographic targeting: { automatic, minimum_age, maximum_age, gender }.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :demographics

      sig { params(demographics: T.anything).void }
      attr_writer :demographics

      # Target/cap cost for average_target / maximum_target.
      sig { returns(T.nilable(Float)) }
      attr_reader :desired_cost_per_result

      sig { params(desired_cost_per_result: Float).void }
      attr_writer :desired_cost_per_result

      # Detailed targeting: { interests: [{id, name}], behaviors: [{id, name}],
      # demographics: [{id, name, type}] } where type is one of life_events, industries,
      # income, family_statuses. IDs come from Meta's targeting taxonomy. At most 100
      # entries per section. Incompatible with demographics.automatic (Advantage+) and
      # Special Ad Category campaigns. Sending the field states complete intent —
      # omitted sections clear their stored entries.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :detailed_targeting

      sig { params(detailed_targeting: T.anything).void }
      attr_writer :detailed_targeting

      # Device targeting: { platforms, operating_systems: [{ os, minimum_version }] }.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :devices

      sig { params(devices: T.anything).void }
      attr_writer :devices

      # Run Meta dynamic (Advantage+) creative for this ad set. Set at creation;
      # immutable afterward.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :dynamic_creative

      sig { params(dynamic_creative: T::Boolean).void }
      attr_writer :dynamic_creative

      # Schedule end, ISO 8601.
      sig { returns(T.nilable(String)) }
      attr_reader :ends_at

      sig { params(ends_at: String).void }
      attr_writer :ends_at

      # { maximum_impressions, per_days } — only valid for reach optimization.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :frequency_cap

      sig { params(frequency_cap: T.anything).void }
      attr_writer :frequency_cap

      # Languages to target as ISO 639 codes (e.g. en, es). Empty/omitted = all
      # languages.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :languages

      sig { params(languages: T::Array[String]).void }
      attr_writer :languages

      # Required when conversion_location is messaging: which apps to message on.
      # Combinations map to the matching Meta destination.
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::AdGroupCreateParams::MessageApp::OrSymbol]
          )
        )
      end
      attr_reader :message_apps

      sig do
        params(
          message_apps:
            T::Array[WhopSDK::AdGroupCreateParams::MessageApp::OrSymbol]
        ).void
      end
      attr_writer :message_apps

      # Daily spend floor within the budget.
      sig { returns(T.nilable(Float)) }
      attr_reader :minimum_daily_spend

      sig { params(minimum_daily_spend: Float).void }
      attr_writer :minimum_daily_spend

      # What the ad group optimizes for (e.g. conversions, link_clicks, reach).
      sig { returns(T.nilable(String)) }
      attr_reader :optimization_goal

      sig { params(optimization_goal: String).void }
      attr_writer :optimization_goal

      # 'automatic' (Advantage+) or a list of { platform, positions }. Omit positions to
      # target all of a platform's.
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
      sig { returns(T.nilable(T.anything)) }
      attr_reader :placements

      sig { params(placements: T.anything).void }
      attr_writer :placements

      # Geo targeting: { include / exclude: { countries (ISO 3166-1), country_groups
      # (include-only, e.g. 'worldwide' for global reach), regions (ISO 3166-2 states,
      # e.g. US-CA), cities (keyed), zips, custom_locations } }. custom_locations
      # entries are pin + radius: { latitude, longitude, radius, distance_unit ('mile'
      # default, or 'kilometer'), name (optional label) }. Radius 1-50 miles or 1-80 km;
      # at most 200 custom locations across include and exclude.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :regions

      sig { params(regions: T.anything).void }
      attr_writer :regions

      # Schedule start, ISO 8601.
      sig { returns(T.nilable(String)) }
      attr_reader :starts_at

      sig { params(starts_at: String).void }
      attr_writer :starts_at

      # Initial status (default: active).
      sig { returns(T.nilable(WhopSDK::AdGroupCreateParams::Status::OrSymbol)) }
      attr_reader :status

      sig do
        params(status: WhopSDK::AdGroupCreateParams::Status::OrSymbol).void
      end
      attr_writer :status

      # The display name of the ad group.
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      sig do
        params(
          ad_campaign_id: String,
          audiences: T.anything,
          bid_type: WhopSDK::AdGroupCreateParams::BidType::OrSymbol,
          budget_amount: Float,
          budget_type: WhopSDK::AdGroupCreateParams::BudgetType::OrSymbol,
          conversion_event:
            T.nilable(
              T.any(
                WhopSDK::AdGroupCreateParams::ConversionEvent::OrSymbol,
                String
              )
            ),
          conversion_location:
            WhopSDK::AdGroupCreateParams::ConversionLocation::OrSymbol,
          demographics: T.anything,
          desired_cost_per_result: Float,
          detailed_targeting: T.anything,
          devices: T.anything,
          dynamic_creative: T::Boolean,
          ends_at: String,
          frequency_cap: T.anything,
          languages: T::Array[String],
          message_apps:
            T::Array[WhopSDK::AdGroupCreateParams::MessageApp::OrSymbol],
          minimum_daily_spend: Float,
          optimization_goal: String,
          placements: T.anything,
          regions: T.anything,
          starts_at: String,
          status: WhopSDK::AdGroupCreateParams::Status::OrSymbol,
          title: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ad campaign to create the ad group in.
        ad_campaign_id:,
        # Saved-audience targeting: { include, exclude } arrays of audience IDs.
        # Incompatible with demographics.automatic (Advantage+).
        audiences: nil,
        # Bid strategy.
        bid_type: nil,
        # Ad-set budget in dollars (ABO only; omit under CBO).
        budget_amount: nil,
        # Whether the budget is daily or lifetime.
        budget_type: nil,
        # The pixel event optimized for. A standard event, or any custom pixel event name.
        conversion_event: nil,
        # Where results happen: website (conversions), profile (IG/FB engagement),
        # messaging (DM), on_ad (engagement on the ad, surface follows the optimization
        # goal), or the lead destinations (instant_forms, instant_forms_and_messenger,
        # website_and_instant_forms). The lead form itself is set on the ad.
        conversion_location: nil,
        # Demographic targeting: { automatic, minimum_age, maximum_age, gender }.
        demographics: nil,
        # Target/cap cost for average_target / maximum_target.
        desired_cost_per_result: nil,
        # Detailed targeting: { interests: [{id, name}], behaviors: [{id, name}],
        # demographics: [{id, name, type}] } where type is one of life_events, industries,
        # income, family_statuses. IDs come from Meta's targeting taxonomy. At most 100
        # entries per section. Incompatible with demographics.automatic (Advantage+) and
        # Special Ad Category campaigns. Sending the field states complete intent —
        # omitted sections clear their stored entries.
        detailed_targeting: nil,
        # Device targeting: { platforms, operating_systems: [{ os, minimum_version }] }.
        devices: nil,
        # Run Meta dynamic (Advantage+) creative for this ad set. Set at creation;
        # immutable afterward.
        dynamic_creative: nil,
        # Schedule end, ISO 8601.
        ends_at: nil,
        # { maximum_impressions, per_days } — only valid for reach optimization.
        frequency_cap: nil,
        # Languages to target as ISO 639 codes (e.g. en, es). Empty/omitted = all
        # languages.
        languages: nil,
        # Required when conversion_location is messaging: which apps to message on.
        # Combinations map to the matching Meta destination.
        message_apps: nil,
        # Daily spend floor within the budget.
        minimum_daily_spend: nil,
        # What the ad group optimizes for (e.g. conversions, link_clicks, reach).
        optimization_goal: nil,
        # 'automatic' (Advantage+) or a list of { platform, positions }. Omit positions to
        # target all of a platform's.
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
        # Geo targeting: { include / exclude: { countries (ISO 3166-1), country_groups
        # (include-only, e.g. 'worldwide' for global reach), regions (ISO 3166-2 states,
        # e.g. US-CA), cities (keyed), zips, custom_locations } }. custom_locations
        # entries are pin + radius: { latitude, longitude, radius, distance_unit ('mile'
        # default, or 'kilometer'), name (optional label) }. Radius 1-50 miles or 1-80 km;
        # at most 200 custom locations across include and exclude.
        regions: nil,
        # Schedule start, ISO 8601.
        starts_at: nil,
        # Initial status (default: active).
        status: nil,
        # The display name of the ad group.
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            ad_campaign_id: String,
            audiences: T.anything,
            bid_type: WhopSDK::AdGroupCreateParams::BidType::OrSymbol,
            budget_amount: Float,
            budget_type: WhopSDK::AdGroupCreateParams::BudgetType::OrSymbol,
            conversion_event:
              T.nilable(
                T.any(
                  WhopSDK::AdGroupCreateParams::ConversionEvent::OrSymbol,
                  String
                )
              ),
            conversion_location:
              WhopSDK::AdGroupCreateParams::ConversionLocation::OrSymbol,
            demographics: T.anything,
            desired_cost_per_result: Float,
            detailed_targeting: T.anything,
            devices: T.anything,
            dynamic_creative: T::Boolean,
            ends_at: String,
            frequency_cap: T.anything,
            languages: T::Array[String],
            message_apps:
              T::Array[WhopSDK::AdGroupCreateParams::MessageApp::OrSymbol],
            minimum_daily_spend: Float,
            optimization_goal: String,
            placements: T.anything,
            regions: T.anything,
            starts_at: String,
            status: WhopSDK::AdGroupCreateParams::Status::OrSymbol,
            title: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Bid strategy.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroupCreateParams::BidType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINIMUM_COST =
          T.let(
            :minimum_cost,
            WhopSDK::AdGroupCreateParams::BidType::TaggedSymbol
          )
        AVERAGE_TARGET =
          T.let(
            :average_target,
            WhopSDK::AdGroupCreateParams::BidType::TaggedSymbol
          )
        MAXIMUM_TARGET =
          T.let(
            :maximum_target,
            WhopSDK::AdGroupCreateParams::BidType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupCreateParams::BidType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Whether the budget is daily or lifetime.
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupCreateParams::BudgetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(:daily, WhopSDK::AdGroupCreateParams::BudgetType::TaggedSymbol)
        LIFETIME =
          T.let(
            :lifetime,
            WhopSDK::AdGroupCreateParams::BudgetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupCreateParams::BudgetType::TaggedSymbol]
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
              WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol,
              String
            )
          end

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupCreateParams::ConversionEvent::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupCreateParams::ConversionEvent)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURCHASE =
          T.let(
            :purchase,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        ADD_TO_CART =
          T.let(
            :add_to_cart,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        INITIATED_CHECKOUT =
          T.let(
            :initiated_checkout,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        ADD_PAYMENT_INFO =
          T.let(
            :add_payment_info,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        COMPLETE_REGISTRATION =
          T.let(
            :complete_registration,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        LEAD =
          T.let(
            :lead,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        CONTENT_VIEW =
          T.let(
            :content_view,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        SEARCH =
          T.let(
            :search,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        CONTACT =
          T.let(
            :contact,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        CUSTOMIZE_PRODUCT =
          T.let(
            :customize_product,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        DONATE =
          T.let(
            :donate,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        FIND_LOCATION =
          T.let(
            :find_location,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        SCHEDULE =
          T.let(
            :schedule,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        START_TRIAL =
          T.let(
            :start_trial,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        SUBMIT_APPLICATION =
          T.let(
            :submit_application,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
        SUBSCRIBE =
          T.let(
            :subscribe,
            WhopSDK::AdGroupCreateParams::ConversionEvent::TaggedSymbol
          )
      end

      # Where results happen: website (conversions), profile (IG/FB engagement),
      # messaging (DM), on_ad (engagement on the ad, surface follows the optimization
      # goal), or the lead destinations (instant_forms, instant_forms_and_messenger,
      # website_and_instant_forms). The lead form itself is set on the ad.
      module ConversionLocation
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupCreateParams::ConversionLocation)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEBSITE =
          T.let(
            :website,
            WhopSDK::AdGroupCreateParams::ConversionLocation::TaggedSymbol
          )
        PROFILE =
          T.let(
            :profile,
            WhopSDK::AdGroupCreateParams::ConversionLocation::TaggedSymbol
          )
        MESSAGING =
          T.let(
            :messaging,
            WhopSDK::AdGroupCreateParams::ConversionLocation::TaggedSymbol
          )
        ON_AD =
          T.let(
            :on_ad,
            WhopSDK::AdGroupCreateParams::ConversionLocation::TaggedSymbol
          )
        INSTANT_FORMS =
          T.let(
            :instant_forms,
            WhopSDK::AdGroupCreateParams::ConversionLocation::TaggedSymbol
          )
        INSTANT_FORMS_AND_MESSENGER =
          T.let(
            :instant_forms_and_messenger,
            WhopSDK::AdGroupCreateParams::ConversionLocation::TaggedSymbol
          )
        WEBSITE_AND_INSTANT_FORMS =
          T.let(
            :website_and_instant_forms,
            WhopSDK::AdGroupCreateParams::ConversionLocation::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AdGroupCreateParams::ConversionLocation::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module MessageApp
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdGroupCreateParams::MessageApp)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSENGER =
          T.let(
            :messenger,
            WhopSDK::AdGroupCreateParams::MessageApp::TaggedSymbol
          )
        INSTAGRAM =
          T.let(
            :instagram,
            WhopSDK::AdGroupCreateParams::MessageApp::TaggedSymbol
          )
        WHATSAPP =
          T.let(
            :whatsapp,
            WhopSDK::AdGroupCreateParams::MessageApp::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupCreateParams::MessageApp::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Initial status (default: active).
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AdGroupCreateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, WhopSDK::AdGroupCreateParams::Status::TaggedSymbol)
        PAUSED =
          T.let(:paused, WhopSDK::AdGroupCreateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdGroupCreateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
