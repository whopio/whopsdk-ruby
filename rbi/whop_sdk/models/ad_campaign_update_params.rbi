# typed: strong

module WhopSDK
  module Models
    class AdCampaignUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AdCampaignUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Array of creative set IDs to link to this campaign.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :ad_creative_set_ids

      # Budget amount in dollars.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      # The budget type for an ad campaign or ad group.
      sig do
        returns(
          T.nilable(WhopSDK::AdCampaignUpdateParams::BudgetType::OrSymbol)
        )
      end
      attr_accessor :budget_type

      # Unified campaign configuration (conversion goal, budget, bidding, etc.).
      sig { returns(T.nilable(WhopSDK::AdCampaignUpdateParams::Config)) }
      attr_reader :config

      sig do
        params(
          config: T.nilable(WhopSDK::AdCampaignUpdateParams::Config::OrHash)
        ).void
      end
      attr_writer :config

      # Daily budget in dollars (minimum $5).
      sig { returns(T.nilable(Float)) }
      attr_accessor :daily_budget

      # The unique identifier of the product (access pass) to promote.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # Array of ISO3166 country codes for territory targeting.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :target_country_codes

      # The title of the ad campaign. Must be max 100 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          id: String,
          ad_creative_set_ids: T.nilable(T::Array[String]),
          budget: T.nilable(Float),
          budget_type:
            T.nilable(WhopSDK::AdCampaignUpdateParams::BudgetType::OrSymbol),
          config: T.nilable(WhopSDK::AdCampaignUpdateParams::Config::OrHash),
          daily_budget: T.nilable(Float),
          product_id: T.nilable(String),
          target_country_codes: T.nilable(T::Array[String]),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Array of creative set IDs to link to this campaign.
        ad_creative_set_ids: nil,
        # Budget amount in dollars.
        budget: nil,
        # The budget type for an ad campaign or ad group.
        budget_type: nil,
        # Unified campaign configuration (conversion goal, budget, bidding, etc.).
        config: nil,
        # Daily budget in dollars (minimum $5).
        daily_budget: nil,
        # The unique identifier of the product (access pass) to promote.
        product_id: nil,
        # Array of ISO3166 country codes for territory targeting.
        target_country_codes: nil,
        # The title of the ad campaign. Must be max 100 characters.
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ad_creative_set_ids: T.nilable(T::Array[String]),
            budget: T.nilable(Float),
            budget_type:
              T.nilable(WhopSDK::AdCampaignUpdateParams::BudgetType::OrSymbol),
            config: T.nilable(WhopSDK::AdCampaignUpdateParams::Config),
            daily_budget: T.nilable(Float),
            product_id: T.nilable(String),
            target_country_codes: T.nilable(T::Array[String]),
            title: T.nilable(String),
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
            T.all(Symbol, WhopSDK::AdCampaignUpdateParams::BudgetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(
            :daily,
            WhopSDK::AdCampaignUpdateParams::BudgetType::TaggedSymbol
          )
        LIFETIME =
          T.let(
            :lifetime,
            WhopSDK::AdCampaignUpdateParams::BudgetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignUpdateParams::BudgetType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Config < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdCampaignUpdateParams::Config,
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
              WhopSDK::AdCampaignUpdateParams::Config::BidStrategy::OrSymbol
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
              WhopSDK::AdCampaignUpdateParams::Config::Objective::OrSymbol
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
            T.nilable(WhopSDK::AdCampaignUpdateParams::Config::Status::OrSymbol)
          )
        end
        attr_accessor :status

        # Unified campaign configuration (conversion goal, budget, bidding, etc.).
        sig do
          params(
            bid_amount: T.nilable(Integer),
            bid_strategy:
              T.nilable(
                WhopSDK::AdCampaignUpdateParams::Config::BidStrategy::OrSymbol
              ),
            budget_optimization: T.nilable(T::Boolean),
            end_time: T.nilable(String),
            lifetime_budget: T.nilable(Integer),
            objective:
              T.nilable(
                WhopSDK::AdCampaignUpdateParams::Config::Objective::OrSymbol
              ),
            special_categories: T.nilable(T::Array[String]),
            start_time: T.nilable(String),
            status:
              T.nilable(
                WhopSDK::AdCampaignUpdateParams::Config::Status::OrSymbol
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
                  WhopSDK::AdCampaignUpdateParams::Config::BidStrategy::OrSymbol
                ),
              budget_optimization: T.nilable(T::Boolean),
              end_time: T.nilable(String),
              lifetime_budget: T.nilable(Integer),
              objective:
                T.nilable(
                  WhopSDK::AdCampaignUpdateParams::Config::Objective::OrSymbol
                ),
              special_categories: T.nilable(T::Array[String]),
              start_time: T.nilable(String),
              status:
                T.nilable(
                  WhopSDK::AdCampaignUpdateParams::Config::Status::OrSymbol
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
                WhopSDK::AdCampaignUpdateParams::Config::BidStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOWEST_COST =
            T.let(
              :lowest_cost,
              WhopSDK::AdCampaignUpdateParams::Config::BidStrategy::TaggedSymbol
            )
          BID_CAP =
            T.let(
              :bid_cap,
              WhopSDK::AdCampaignUpdateParams::Config::BidStrategy::TaggedSymbol
            )
          COST_CAP =
            T.let(
              :cost_cap,
              WhopSDK::AdCampaignUpdateParams::Config::BidStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdateParams::Config::BidStrategy::TaggedSymbol
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
              T.all(Symbol, WhopSDK::AdCampaignUpdateParams::Config::Objective)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWARENESS =
            T.let(
              :awareness,
              WhopSDK::AdCampaignUpdateParams::Config::Objective::TaggedSymbol
            )
          TRAFFIC =
            T.let(
              :traffic,
              WhopSDK::AdCampaignUpdateParams::Config::Objective::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :engagement,
              WhopSDK::AdCampaignUpdateParams::Config::Objective::TaggedSymbol
            )
          LEADS =
            T.let(
              :leads,
              WhopSDK::AdCampaignUpdateParams::Config::Objective::TaggedSymbol
            )
          SALES =
            T.let(
              :sales,
              WhopSDK::AdCampaignUpdateParams::Config::Objective::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdateParams::Config::Objective::TaggedSymbol
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
              T.all(Symbol, WhopSDK::AdCampaignUpdateParams::Config::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::AdCampaignUpdateParams::Config::Status::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              WhopSDK::AdCampaignUpdateParams::Config::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdateParams::Config::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
