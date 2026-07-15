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

      # Saved-audience targeting: { include, exclude } arrays of audience IDs.
      # Incompatible with demographics.automatic (Advantage+).
      sig { returns(T.nilable(T.anything)) }
      attr_reader :audiences

      sig { params(audiences: T.anything).void }
      attr_writer :audiences

      # Bid strategy.
      sig do
        returns(T.nilable(WhopSDK::AdGroupUpdateParams::BidType::OrSymbol))
      end
      attr_reader :bid_type

      sig do
        params(bid_type: WhopSDK::AdGroupUpdateParams::BidType::OrSymbol).void
      end
      attr_writer :bid_type

      # Ad-set budget in dollars (ABO only; omit under CBO).
      sig { returns(T.nilable(Float)) }
      attr_reader :budget_amount

      sig { params(budget_amount: Float).void }
      attr_writer :budget_amount

      # Whether the budget is daily or lifetime.
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

      # Where results happen: website (conversions), profile (IG/FB engagement),
      # messaging (DM), on_ad (engagement on the ad, surface follows the optimization
      # goal), or the lead destinations (instant_forms, instant_forms_and_messenger,
      # website_and_instant_forms). The lead form itself is set on the ad.
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

      # Device targeting: { platforms, operating_systems: [{ os, minimum_version }] }.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :devices

      sig { params(devices: T.anything).void }
      attr_writer :devices

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

      # Geo targeting: { include / exclude: { countries (ISO 3166-1), regions
      # (states/provinces as ISO 3166-2, e.g. US-CA), cities (keyed), zips,
      # custom_locations } }. custom_locations entries are pin + radius: { latitude,
      # longitude, radius, distance_unit ('mile' default, or 'kilometer'), name
      # (optional display label) }. Radius must be 1-50 miles or 1-80 km; at most 200
      # custom locations across include and exclude.
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

      sig do
        params(
          id: String,
          audiences: T.anything,
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
          demographics: T.anything,
          desired_cost_per_result: Float,
          devices: T.anything,
          ends_at: String,
          frequency_cap: T.anything,
          languages: T::Array[String],
          message_apps:
            T::Array[WhopSDK::AdGroupUpdateParams::MessageApp::OrSymbol],
          minimum_daily_spend: Float,
          optimization_goal: String,
          placements: T.anything,
          regions: T.anything,
          starts_at: String,
          status: WhopSDK::AdGroupUpdateParams::Status::OrSymbol,
          title: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
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
        # Device targeting: { platforms, operating_systems: [{ os, minimum_version }] }.
        devices: nil,
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
        # Geo targeting: { include / exclude: { countries (ISO 3166-1), regions
        # (states/provinces as ISO 3166-2, e.g. US-CA), cities (keyed), zips,
        # custom_locations } }. custom_locations entries are pin + radius: { latitude,
        # longitude, radius, distance_unit ('mile' default, or 'kilometer'), name
        # (optional display label) }. Radius must be 1-50 miles or 1-80 km; at most 200
        # custom locations across include and exclude.
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
            id: String,
            audiences: T.anything,
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
            demographics: T.anything,
            desired_cost_per_result: Float,
            devices: T.anything,
            ends_at: String,
            frequency_cap: T.anything,
            languages: T::Array[String],
            message_apps:
              T::Array[WhopSDK::AdGroupUpdateParams::MessageApp::OrSymbol],
            minimum_daily_spend: Float,
            optimization_goal: String,
            placements: T.anything,
            regions: T.anything,
            starts_at: String,
            status: WhopSDK::AdGroupUpdateParams::Status::OrSymbol,
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

      # Whether the budget is daily or lifetime.
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

      # Where results happen: website (conversions), profile (IG/FB engagement),
      # messaging (DM), on_ad (engagement on the ad, surface follows the optimization
      # goal), or the lead destinations (instant_forms, instant_forms_and_messenger,
      # website_and_instant_forms). The lead form itself is set on the ad.
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

      # Initial status (default: active).
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
