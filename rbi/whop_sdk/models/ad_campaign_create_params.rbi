# typed: strong

module WhopSDK
  module Models
    class AdCampaignCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdCampaignCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The company ID to create this ad campaign for.
      sig { returns(String) }
      attr_accessor :company_id

      # Unified campaign configuration (conversion goal, budget, bidding, etc.).
      sig { returns(WhopSDK::AdCampaignCreateParams::Config) }
      attr_reader :config

      sig do
        params(config: WhopSDK::AdCampaignCreateParams::Config::OrHash).void
      end
      attr_writer :config

      # The ad platform to run on (e.g., meta, tiktok).
      sig { returns(WhopSDK::AdCampaignCreateParams::Platform::OrSymbol) }
      attr_accessor :platform

      # The title of the ad campaign. Must be max 100 characters.
      sig { returns(String) }
      attr_accessor :title

      # Array of creative set IDs to link to this campaign.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :ad_creative_set_ids

      # Budget amount in dollars.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      # The budget type for an ad campaign or ad group.
      sig do
        returns(
          T.nilable(WhopSDK::AdCampaignCreateParams::BudgetType::OrSymbol)
        )
      end
      attr_accessor :budget_type

      # Daily budget in dollars (minimum $5). Required unless lifetime_budget is set in
      # config.
      sig { returns(T.nilable(Float)) }
      attr_accessor :daily_budget

      # The unique identifier of the product to promote.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # Array of ISO3166 country codes for territory targeting.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :target_country_codes

      sig do
        params(
          company_id: String,
          config: WhopSDK::AdCampaignCreateParams::Config::OrHash,
          platform: WhopSDK::AdCampaignCreateParams::Platform::OrSymbol,
          title: String,
          ad_creative_set_ids: T.nilable(T::Array[String]),
          budget: T.nilable(Float),
          budget_type:
            T.nilable(WhopSDK::AdCampaignCreateParams::BudgetType::OrSymbol),
          daily_budget: T.nilable(Float),
          product_id: T.nilable(String),
          target_country_codes: T.nilable(T::Array[String]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The company ID to create this ad campaign for.
        company_id:,
        # Unified campaign configuration (conversion goal, budget, bidding, etc.).
        config:,
        # The ad platform to run on (e.g., meta, tiktok).
        platform:,
        # The title of the ad campaign. Must be max 100 characters.
        title:,
        # Array of creative set IDs to link to this campaign.
        ad_creative_set_ids: nil,
        # Budget amount in dollars.
        budget: nil,
        # The budget type for an ad campaign or ad group.
        budget_type: nil,
        # Daily budget in dollars (minimum $5). Required unless lifetime_budget is set in
        # config.
        daily_budget: nil,
        # The unique identifier of the product to promote.
        product_id: nil,
        # Array of ISO3166 country codes for territory targeting.
        target_country_codes: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            config: WhopSDK::AdCampaignCreateParams::Config,
            platform: WhopSDK::AdCampaignCreateParams::Platform::OrSymbol,
            title: String,
            ad_creative_set_ids: T.nilable(T::Array[String]),
            budget: T.nilable(Float),
            budget_type:
              T.nilable(WhopSDK::AdCampaignCreateParams::BudgetType::OrSymbol),
            daily_budget: T.nilable(Float),
            product_id: T.nilable(String),
            target_country_codes: T.nilable(T::Array[String]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Config < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdCampaignCreateParams::Config,
              WhopSDK::Internal::AnyHash
            )
          end

        # Bid cap amount in cents. Only used when bid_strategy is bid_cap.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :bid_amount

        # The bidding strategy used to optimize spend for this campaign.
        sig do
          returns(
            T.nilable(
              WhopSDK::AdCampaignCreateParams::Config::BidStrategy::OrSymbol
            )
          )
        end
        attr_accessor :bid_strategy

        # Whether campaign budget optimization (CBO) is enabled, allowing the platform to
        # distribute budget across ad groups.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :budget_optimization

        # The scheduled end time of the campaign (ISO8601).
        sig { returns(T.nilable(String)) }
        attr_accessor :end_time

        # Represents non-fractional signed whole numeric values. Int can represent values
        # between -(2^31) and 2^31 - 1.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lifetime_budget

        # The campaign objective that determines how Meta optimizes delivery.
        sig do
          returns(
            T.nilable(
              WhopSDK::AdCampaignCreateParams::Config::Objective::OrSymbol
            )
          )
        end
        attr_accessor :objective

        # Special ad categories required by the platform (e.g., housing, employment,
        # credit).
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :special_categories

        # The scheduled start time of the campaign (ISO8601).
        sig { returns(T.nilable(String)) }
        attr_accessor :start_time

        # The campaign status as set by the advertiser (active or paused).
        sig do
          returns(
            T.nilable(WhopSDK::AdCampaignCreateParams::Config::Status::OrSymbol)
          )
        end
        attr_accessor :status

        # Unified campaign configuration (conversion goal, budget, bidding, etc.).
        sig do
          params(
            bid_amount: T.nilable(Integer),
            bid_strategy:
              T.nilable(
                WhopSDK::AdCampaignCreateParams::Config::BidStrategy::OrSymbol
              ),
            budget_optimization: T.nilable(T::Boolean),
            end_time: T.nilable(String),
            lifetime_budget: T.nilable(Integer),
            objective:
              T.nilable(
                WhopSDK::AdCampaignCreateParams::Config::Objective::OrSymbol
              ),
            special_categories: T.nilable(T::Array[String]),
            start_time: T.nilable(String),
            status:
              T.nilable(
                WhopSDK::AdCampaignCreateParams::Config::Status::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Bid cap amount in cents. Only used when bid_strategy is bid_cap.
          bid_amount: nil,
          # The bidding strategy used to optimize spend for this campaign.
          bid_strategy: nil,
          # Whether campaign budget optimization (CBO) is enabled, allowing the platform to
          # distribute budget across ad groups.
          budget_optimization: nil,
          # The scheduled end time of the campaign (ISO8601).
          end_time: nil,
          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          lifetime_budget: nil,
          # The campaign objective that determines how Meta optimizes delivery.
          objective: nil,
          # Special ad categories required by the platform (e.g., housing, employment,
          # credit).
          special_categories: nil,
          # The scheduled start time of the campaign (ISO8601).
          start_time: nil,
          # The campaign status as set by the advertiser (active or paused).
          status: nil
        )
        end

        sig do
          override.returns(
            {
              bid_amount: T.nilable(Integer),
              bid_strategy:
                T.nilable(
                  WhopSDK::AdCampaignCreateParams::Config::BidStrategy::OrSymbol
                ),
              budget_optimization: T.nilable(T::Boolean),
              end_time: T.nilable(String),
              lifetime_budget: T.nilable(Integer),
              objective:
                T.nilable(
                  WhopSDK::AdCampaignCreateParams::Config::Objective::OrSymbol
                ),
              special_categories: T.nilable(T::Array[String]),
              start_time: T.nilable(String),
              status:
                T.nilable(
                  WhopSDK::AdCampaignCreateParams::Config::Status::OrSymbol
                )
            }
          )
        end
        def to_hash
        end

        # The bidding strategy used to optimize spend for this campaign.
        module BidStrategy
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AdCampaignCreateParams::Config::BidStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOWEST_COST =
            T.let(
              :lowest_cost,
              WhopSDK::AdCampaignCreateParams::Config::BidStrategy::TaggedSymbol
            )
          BID_CAP =
            T.let(
              :bid_cap,
              WhopSDK::AdCampaignCreateParams::Config::BidStrategy::TaggedSymbol
            )
          COST_CAP =
            T.let(
              :cost_cap,
              WhopSDK::AdCampaignCreateParams::Config::BidStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignCreateParams::Config::BidStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The campaign objective that determines how Meta optimizes delivery.
        module Objective
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdCampaignCreateParams::Config::Objective)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWARENESS =
            T.let(
              :awareness,
              WhopSDK::AdCampaignCreateParams::Config::Objective::TaggedSymbol
            )
          TRAFFIC =
            T.let(
              :traffic,
              WhopSDK::AdCampaignCreateParams::Config::Objective::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :engagement,
              WhopSDK::AdCampaignCreateParams::Config::Objective::TaggedSymbol
            )
          LEADS =
            T.let(
              :leads,
              WhopSDK::AdCampaignCreateParams::Config::Objective::TaggedSymbol
            )
          SALES =
            T.let(
              :sales,
              WhopSDK::AdCampaignCreateParams::Config::Objective::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignCreateParams::Config::Objective::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The campaign status as set by the advertiser (active or paused).
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::AdCampaignCreateParams::Config::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::AdCampaignCreateParams::Config::Status::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              WhopSDK::AdCampaignCreateParams::Config::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignCreateParams::Config::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The ad platform to run on (e.g., meta, tiktok).
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignCreateParams::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(:meta, WhopSDK::AdCampaignCreateParams::Platform::TaggedSymbol)
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::AdCampaignCreateParams::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignCreateParams::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The budget type for an ad campaign or ad group.
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignCreateParams::BudgetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(
            :daily,
            WhopSDK::AdCampaignCreateParams::BudgetType::TaggedSymbol
          )
        LIFETIME =
          T.let(
            :lifetime,
            WhopSDK::AdCampaignCreateParams::BudgetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignCreateParams::BudgetType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
