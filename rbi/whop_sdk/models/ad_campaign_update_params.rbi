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

      # CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
      # maximum_target (bid cap). Switching to minimum_cost clears the cap amounts
      # stored on the campaign's ad groups. CBO only.
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
      # per the campaign's existing budget type.
      sig { returns(T.nilable(Float)) }
      attr_reader :budget_amount

      sig { params(budget_amount: Float).void }
      attr_writer :budget_amount

      # Which level owns the budget — the campaign (CBO) or each ad group (ABO). Only
      # changeable before the campaign is live on Meta; switching to ad_campaign
      # requires budget_amount in the same request, and switching to ad_group clears the
      # campaign budget.
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

      # Campaign schedule end (ISO 8601). CBO only.
      sig { returns(T.nilable(String)) }
      attr_reader :ends_at

      sig { params(ends_at: String).void }
      attr_writer :ends_at

      # Campaign schedule start (ISO 8601). CBO only.
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

      sig do
        params(
          id: String,
          bid_type: WhopSDK::AdCampaignUpdateParams::BidType::OrSymbol,
          budget_amount: Float,
          budget_optimization:
            WhopSDK::AdCampaignUpdateParams::BudgetOptimization::OrSymbol,
          ends_at: String,
          starts_at: String,
          status: WhopSDK::AdCampaignUpdateParams::Status::OrSymbol,
          title: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
        # maximum_target (bid cap). Switching to minimum_cost clears the cap amounts
        # stored on the campaign's ad groups. CBO only.
        bid_type: nil,
        # The campaign budget, in the account's currency. Interpreted as daily or lifetime
        # per the campaign's existing budget type.
        budget_amount: nil,
        # Which level owns the budget — the campaign (CBO) or each ad group (ABO). Only
        # changeable before the campaign is live on Meta; switching to ad_campaign
        # requires budget_amount in the same request, and switching to ad_group clears the
        # campaign budget.
        budget_optimization: nil,
        # Campaign schedule end (ISO 8601). CBO only.
        ends_at: nil,
        # Campaign schedule start (ISO 8601). CBO only.
        starts_at: nil,
        # Set to active to launch a draft campaign (moderates and pushes it live).
        # Live-campaign pause and resume use the pause and unpause actions.
        status: nil,
        # The name of the campaign.
        title: nil,
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
            ends_at: String,
            starts_at: String,
            status: WhopSDK::AdCampaignUpdateParams::Status::OrSymbol,
            title: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # CBO bid strategy: minimum_cost (lowest cost), average_target (cost cap), or
      # maximum_target (bid cap). Switching to minimum_cost clears the cap amounts
      # stored on the campaign's ad groups. CBO only.
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

      # Which level owns the budget — the campaign (CBO) or each ad group (ABO). Only
      # changeable before the campaign is live on Meta; switching to ad_campaign
      # requires budget_amount in the same request, and switching to ad_group clears the
      # campaign budget.
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
