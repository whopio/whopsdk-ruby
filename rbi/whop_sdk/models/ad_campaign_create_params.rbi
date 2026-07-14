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

      # The goal the campaign optimizes toward.
      sig { returns(WhopSDK::AdCampaignCreateParams::Objective::OrSymbol) }
      attr_accessor :objective

      # The ad network the campaign runs on.
      sig { returns(WhopSDK::AdCampaignCreateParams::Platform::OrSymbol) }
      attr_accessor :platform

      # The title of the campaign.
      sig { returns(String) }
      attr_accessor :title

      # The account to create the campaign under. Defaults to the account-scoped key's
      # own account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
      # maximum_target (bid cap). CBO only.
      sig do
        returns(T.nilable(WhopSDK::AdCampaignCreateParams::BidType::OrSymbol))
      end
      attr_reader :bid_type

      sig do
        params(
          bid_type: WhopSDK::AdCampaignCreateParams::BidType::OrSymbol
        ).void
      end
      attr_writer :bid_type

      # The campaign budget, in USD. Required for CBO (budget_optimization:
      # ad_campaign); omit for ABO.
      sig { returns(T.nilable(Float)) }
      attr_reader :budget_amount

      sig { params(budget_amount: Float).void }
      attr_writer :budget_amount

      # Which level owns the budget — the campaign (CBO) or each ad group (ABO).
      # Defaults to ad_group.
      sig do
        returns(
          T.nilable(
            WhopSDK::AdCampaignCreateParams::BudgetOptimization::OrSymbol
          )
        )
      end
      attr_reader :budget_optimization

      sig do
        params(
          budget_optimization:
            WhopSDK::AdCampaignCreateParams::BudgetOptimization::OrSymbol
        ).void
      end
      attr_writer :budget_optimization

      # Whether the budget is spent per day or over the campaign's lifetime. Defaults to
      # daily.
      sig do
        returns(
          T.nilable(WhopSDK::AdCampaignCreateParams::BudgetType::OrSymbol)
        )
      end
      attr_reader :budget_type

      sig do
        params(
          budget_type: WhopSDK::AdCampaignCreateParams::BudgetType::OrSymbol
        ).void
      end
      attr_writer :budget_type

      # Target/cap cost per result in USD for average_target / maximum_target bidding.
      # CBO only.
      sig { returns(T.nilable(Float)) }
      attr_reader :desired_cost_per_result

      sig { params(desired_cost_per_result: Float).void }
      attr_writer :desired_cost_per_result

      # Campaign schedule end (ISO 8601). CBO only.
      sig { returns(T.nilable(String)) }
      attr_reader :ends_at

      sig { params(ends_at: String).void }
      attr_writer :ends_at

      # Regulated categories the campaign falls under. Ads in these categories are
      # subject to extra targeting restrictions.
      sig do
        returns(
          T.nilable(
            T::Array[
              WhopSDK::AdCampaignCreateParams::SpecialAdCategory::OrSymbol
            ]
          )
        )
      end
      attr_reader :special_ad_categories

      sig do
        params(
          special_ad_categories:
            T::Array[
              WhopSDK::AdCampaignCreateParams::SpecialAdCategory::OrSymbol
            ]
        ).void
      end
      attr_writer :special_ad_categories

      # Campaign schedule start (ISO 8601). CBO only.
      sig { returns(T.nilable(String)) }
      attr_reader :starts_at

      sig { params(starts_at: String).void }
      attr_writer :starts_at

      sig do
        params(
          objective: WhopSDK::AdCampaignCreateParams::Objective::OrSymbol,
          platform: WhopSDK::AdCampaignCreateParams::Platform::OrSymbol,
          title: String,
          account_id: String,
          bid_type: WhopSDK::AdCampaignCreateParams::BidType::OrSymbol,
          budget_amount: Float,
          budget_optimization:
            WhopSDK::AdCampaignCreateParams::BudgetOptimization::OrSymbol,
          budget_type: WhopSDK::AdCampaignCreateParams::BudgetType::OrSymbol,
          desired_cost_per_result: Float,
          ends_at: String,
          special_ad_categories:
            T::Array[
              WhopSDK::AdCampaignCreateParams::SpecialAdCategory::OrSymbol
            ],
          starts_at: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The goal the campaign optimizes toward.
        objective:,
        # The ad network the campaign runs on.
        platform:,
        # The title of the campaign.
        title:,
        # The account to create the campaign under. Defaults to the account-scoped key's
        # own account.
        account_id: nil,
        # CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
        # maximum_target (bid cap). CBO only.
        bid_type: nil,
        # The campaign budget, in USD. Required for CBO (budget_optimization:
        # ad_campaign); omit for ABO.
        budget_amount: nil,
        # Which level owns the budget — the campaign (CBO) or each ad group (ABO).
        # Defaults to ad_group.
        budget_optimization: nil,
        # Whether the budget is spent per day or over the campaign's lifetime. Defaults to
        # daily.
        budget_type: nil,
        # Target/cap cost per result in USD for average_target / maximum_target bidding.
        # CBO only.
        desired_cost_per_result: nil,
        # Campaign schedule end (ISO 8601). CBO only.
        ends_at: nil,
        # Regulated categories the campaign falls under. Ads in these categories are
        # subject to extra targeting restrictions.
        special_ad_categories: nil,
        # Campaign schedule start (ISO 8601). CBO only.
        starts_at: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            objective: WhopSDK::AdCampaignCreateParams::Objective::OrSymbol,
            platform: WhopSDK::AdCampaignCreateParams::Platform::OrSymbol,
            title: String,
            account_id: String,
            bid_type: WhopSDK::AdCampaignCreateParams::BidType::OrSymbol,
            budget_amount: Float,
            budget_optimization:
              WhopSDK::AdCampaignCreateParams::BudgetOptimization::OrSymbol,
            budget_type: WhopSDK::AdCampaignCreateParams::BudgetType::OrSymbol,
            desired_cost_per_result: Float,
            ends_at: String,
            special_ad_categories:
              T::Array[
                WhopSDK::AdCampaignCreateParams::SpecialAdCategory::OrSymbol
              ],
            starts_at: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The goal the campaign optimizes toward.
      module Objective
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignCreateParams::Objective)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWARENESS =
          T.let(
            :awareness,
            WhopSDK::AdCampaignCreateParams::Objective::TaggedSymbol
          )
        TRAFFIC =
          T.let(
            :traffic,
            WhopSDK::AdCampaignCreateParams::Objective::TaggedSymbol
          )
        ENGAGEMENT =
          T.let(
            :engagement,
            WhopSDK::AdCampaignCreateParams::Objective::TaggedSymbol
          )
        LEADS =
          T.let(
            :leads,
            WhopSDK::AdCampaignCreateParams::Objective::TaggedSymbol
          )
        SALES =
          T.let(
            :sales,
            WhopSDK::AdCampaignCreateParams::Objective::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignCreateParams::Objective::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The ad network the campaign runs on.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignCreateParams::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(:meta, WhopSDK::AdCampaignCreateParams::Platform::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignCreateParams::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
      # maximum_target (bid cap). CBO only.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignCreateParams::BidType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINIMUM_COST =
          T.let(
            :minimum_cost,
            WhopSDK::AdCampaignCreateParams::BidType::TaggedSymbol
          )
        AVERAGE_TARGET =
          T.let(
            :average_target,
            WhopSDK::AdCampaignCreateParams::BidType::TaggedSymbol
          )
        MAXIMUM_TARGET =
          T.let(
            :maximum_target,
            WhopSDK::AdCampaignCreateParams::BidType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignCreateParams::BidType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Which level owns the budget — the campaign (CBO) or each ad group (ABO).
      # Defaults to ad_group.
      module BudgetOptimization
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignCreateParams::BudgetOptimization)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD_CAMPAIGN =
          T.let(
            :ad_campaign,
            WhopSDK::AdCampaignCreateParams::BudgetOptimization::TaggedSymbol
          )
        AD_GROUP =
          T.let(
            :ad_group,
            WhopSDK::AdCampaignCreateParams::BudgetOptimization::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AdCampaignCreateParams::BudgetOptimization::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Whether the budget is spent per day or over the campaign's lifetime. Defaults to
      # daily.
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

      module SpecialAdCategory
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignCreateParams::SpecialAdCategory)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HOUSING =
          T.let(
            :housing,
            WhopSDK::AdCampaignCreateParams::SpecialAdCategory::TaggedSymbol
          )
        EMPLOYMENT =
          T.let(
            :employment,
            WhopSDK::AdCampaignCreateParams::SpecialAdCategory::TaggedSymbol
          )
        FINANCIAL_PRODUCTS =
          T.let(
            :financial_products,
            WhopSDK::AdCampaignCreateParams::SpecialAdCategory::TaggedSymbol
          )
        POLITICS =
          T.let(
            :politics,
            WhopSDK::AdCampaignCreateParams::SpecialAdCategory::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AdCampaignCreateParams::SpecialAdCategory::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
