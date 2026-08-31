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

      # How delivery bids in the ad auction: `minimum_cost` gets the most results for
      # the budget, `average_target` holds an average cost per result, `maximum_target`
      # never bids above a cap. Switching to `minimum_cost` clears the cap amounts
      # stored on the campaign's ad groups. Only for campaigns that own the budget.
      sig do
        returns(T.nilable(WhopSDK::AdCampaignUpdateParams::BidType::OrSymbol))
      end
      attr_reader :bid_type

      sig do
        params(
          bid_type: WhopSDK::AdCampaignUpdateParams::BidType::OrSymbol
        ).void
      end
      attr_writer :bid_type

      # The campaign budget, in the account's currency. Interpreted as daily or lifetime
      # per the campaign's budget type, including a budget_type sent in the same
      # request.
      sig { returns(T.nilable(Float)) }
      attr_reader :budget_amount

      sig { params(budget_amount: Float).void }
      attr_writer :budget_amount

      # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
      # individually (`ad_group`). Only changeable before the campaign is live on the ad
      # network; switching to `ad_campaign` requires budget_amount in the same request,
      # and switching to `ad_group` clears the campaign budget.
      sig do
        returns(
          T.nilable(
            WhopSDK::AdCampaignUpdateParams::BudgetOptimization::OrSymbol
          )
        )
      end
      attr_reader :budget_optimization

      sig do
        params(
          budget_optimization:
            WhopSDK::AdCampaignUpdateParams::BudgetOptimization::OrSymbol
        ).void
      end
      attr_writer :budget_optimization

      # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
      # run (`lifetime`). Only changeable while the campaign is a draft; send
      # budget_amount in the same request so the amount lands on the new type.
      sig do
        returns(
          T.nilable(WhopSDK::AdCampaignUpdateParams::BudgetType::OrSymbol)
        )
      end
      attr_reader :budget_type

      sig do
        params(
          budget_type: WhopSDK::AdCampaignUpdateParams::BudgetType::OrSymbol
        ).void
      end
      attr_writer :budget_type

      # When the campaign stops delivering, as an ISO 8601 timestamp. Only for campaigns
      # that own the budget.
      sig { returns(T.nilable(String)) }
      attr_reader :ends_at

      sig { params(ends_at: String).void }
      attr_writer :ends_at

      # Regulated categories the campaign falls under. Editable on any campaign, draft
      # or launched; pass an empty array to clear.
      sig do
        returns(
          T.nilable(
            T::Array[
              WhopSDK::AdCampaignUpdateParams::SpecialAdCategory::OrSymbol
            ]
          )
        )
      end
      attr_reader :special_ad_categories

      sig do
        params(
          special_ad_categories:
            T::Array[
              WhopSDK::AdCampaignUpdateParams::SpecialAdCategory::OrSymbol
            ]
        ).void
      end
      attr_writer :special_ad_categories

      # When the campaign starts delivering, as an ISO 8601 timestamp. Only for
      # campaigns that own the budget.
      sig { returns(T.nilable(String)) }
      attr_reader :starts_at

      sig { params(starts_at: String).void }
      attr_writer :starts_at

      # Set to active to launch a draft campaign (moderates and pushes it live).
      # Live-campaign pause and resume use the pause and unpause actions.
      sig do
        returns(T.nilable(WhopSDK::AdCampaignUpdateParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: WhopSDK::AdCampaignUpdateParams::Status::OrSymbol).void
      end
      attr_writer :status

      # The name of the campaign.
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
          bid_type: WhopSDK::AdCampaignUpdateParams::BidType::OrSymbol,
          budget_amount: Float,
          budget_optimization:
            WhopSDK::AdCampaignUpdateParams::BudgetOptimization::OrSymbol,
          budget_type: WhopSDK::AdCampaignUpdateParams::BudgetType::OrSymbol,
          ends_at: String,
          special_ad_categories:
            T::Array[
              WhopSDK::AdCampaignUpdateParams::SpecialAdCategory::OrSymbol
            ],
          starts_at: String,
          status: WhopSDK::AdCampaignUpdateParams::Status::OrSymbol,
          title: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # How delivery bids in the ad auction: `minimum_cost` gets the most results for
        # the budget, `average_target` holds an average cost per result, `maximum_target`
        # never bids above a cap. Switching to `minimum_cost` clears the cap amounts
        # stored on the campaign's ad groups. Only for campaigns that own the budget.
        bid_type: nil,
        # The campaign budget, in the account's currency. Interpreted as daily or lifetime
        # per the campaign's budget type, including a budget_type sent in the same
        # request.
        budget_amount: nil,
        # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
        # individually (`ad_group`). Only changeable before the campaign is live on the ad
        # network; switching to `ad_campaign` requires budget_amount in the same request,
        # and switching to `ad_group` clears the campaign budget.
        budget_optimization: nil,
        # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
        # run (`lifetime`). Only changeable while the campaign is a draft; send
        # budget_amount in the same request so the amount lands on the new type.
        budget_type: nil,
        # When the campaign stops delivering, as an ISO 8601 timestamp. Only for campaigns
        # that own the budget.
        ends_at: nil,
        # Regulated categories the campaign falls under. Editable on any campaign, draft
        # or launched; pass an empty array to clear.
        special_ad_categories: nil,
        # When the campaign starts delivering, as an ISO 8601 timestamp. Only for
        # campaigns that own the budget.
        starts_at: nil,
        # Set to active to launch a draft campaign (moderates and pushes it live).
        # Live-campaign pause and resume use the pause and unpause actions.
        status: nil,
        # The name of the campaign.
        title: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bid_type: WhopSDK::AdCampaignUpdateParams::BidType::OrSymbol,
            budget_amount: Float,
            budget_optimization:
              WhopSDK::AdCampaignUpdateParams::BudgetOptimization::OrSymbol,
            budget_type: WhopSDK::AdCampaignUpdateParams::BudgetType::OrSymbol,
            ends_at: String,
            special_ad_categories:
              T::Array[
                WhopSDK::AdCampaignUpdateParams::SpecialAdCategory::OrSymbol
              ],
            starts_at: String,
            status: WhopSDK::AdCampaignUpdateParams::Status::OrSymbol,
            title: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # How delivery bids in the ad auction: `minimum_cost` gets the most results for
      # the budget, `average_target` holds an average cost per result, `maximum_target`
      # never bids above a cap. Switching to `minimum_cost` clears the cap amounts
      # stored on the campaign's ad groups. Only for campaigns that own the budget.
      module BidType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignUpdateParams::BidType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINIMUM_COST =
          T.let(
            :minimum_cost,
            WhopSDK::AdCampaignUpdateParams::BidType::TaggedSymbol
          )
        AVERAGE_TARGET =
          T.let(
            :average_target,
            WhopSDK::AdCampaignUpdateParams::BidType::TaggedSymbol
          )
        MAXIMUM_TARGET =
          T.let(
            :maximum_target,
            WhopSDK::AdCampaignUpdateParams::BidType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignUpdateParams::BidType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
      # individually (`ad_group`). Only changeable before the campaign is live on the ad
      # network; switching to `ad_campaign` requires budget_amount in the same request,
      # and switching to `ad_group` clears the campaign budget.
      module BudgetOptimization
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignUpdateParams::BudgetOptimization)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD_CAMPAIGN =
          T.let(
            :ad_campaign,
            WhopSDK::AdCampaignUpdateParams::BudgetOptimization::TaggedSymbol
          )
        AD_GROUP =
          T.let(
            :ad_group,
            WhopSDK::AdCampaignUpdateParams::BudgetOptimization::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AdCampaignUpdateParams::BudgetOptimization::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
      # run (`lifetime`). Only changeable while the campaign is a draft; send
      # budget_amount in the same request so the amount lands on the new type.
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

      module SpecialAdCategory
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignUpdateParams::SpecialAdCategory)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HOUSING =
          T.let(
            :housing,
            WhopSDK::AdCampaignUpdateParams::SpecialAdCategory::TaggedSymbol
          )
        EMPLOYMENT =
          T.let(
            :employment,
            WhopSDK::AdCampaignUpdateParams::SpecialAdCategory::TaggedSymbol
          )
        FINANCIAL_PRODUCTS =
          T.let(
            :financial_products,
            WhopSDK::AdCampaignUpdateParams::SpecialAdCategory::TaggedSymbol
          )
        POLITICS =
          T.let(
            :politics,
            WhopSDK::AdCampaignUpdateParams::SpecialAdCategory::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AdCampaignUpdateParams::SpecialAdCategory::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Set to active to launch a draft campaign (moderates and pushes it live).
      # Live-campaign pause and resume use the pause and unpause actions.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AdCampaignUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, WhopSDK::AdCampaignUpdateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AdCampaignUpdateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
