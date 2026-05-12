# typed: strong

module WhopSDK
  module Models
    class AdCampaignListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AdCampaignListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for this ad campaign.
      sig { returns(String) }
      attr_accessor :id

      # Total budget in dollars.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      # The budget type for an ad campaign or ad group.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::AdCampaignListResponse::BudgetType::TaggedSymbol
          )
        )
      end
      attr_accessor :budget_type

      # When the ad campaign was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The external ad platform this campaign is running on (e.g., meta, tiktok).
      sig do
        returns(WhopSDK::Models::AdCampaignListResponse::Platform::TaggedSymbol)
      end
      attr_accessor :platform

      # Current status of the campaign (active, paused, or inactive).
      sig do
        returns(WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol)
      end
      attr_accessor :status

      # The campaign name shown in the Whop dashboard.
      sig { returns(String) }
      attr_accessor :title

      # Total amount spent in dollars.
      sig { returns(Float) }
      attr_accessor :total_spend

      # When the ad campaign was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An advertising campaign running on an external platform or within Whop.
      sig do
        params(
          id: String,
          budget: T.nilable(Float),
          budget_type:
            T.nilable(
              WhopSDK::Models::AdCampaignListResponse::BudgetType::OrSymbol
            ),
          created_at: Time,
          platform: WhopSDK::Models::AdCampaignListResponse::Platform::OrSymbol,
          status: WhopSDK::Models::AdCampaignListResponse::Status::OrSymbol,
          title: String,
          total_spend: Float,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for this ad campaign.
        id:,
        # Total budget in dollars.
        budget:,
        # The budget type for an ad campaign or ad group.
        budget_type:,
        # When the ad campaign was created.
        created_at:,
        # The external ad platform this campaign is running on (e.g., meta, tiktok).
        platform:,
        # Current status of the campaign (active, paused, or inactive).
        status:,
        # The campaign name shown in the Whop dashboard.
        title:,
        # Total amount spent in dollars.
        total_spend:,
        # When the ad campaign was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            budget: T.nilable(Float),
            budget_type:
              T.nilable(
                WhopSDK::Models::AdCampaignListResponse::BudgetType::TaggedSymbol
              ),
            created_at: Time,
            platform:
              WhopSDK::Models::AdCampaignListResponse::Platform::TaggedSymbol,
            status:
              WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol,
            title: String,
            total_spend: Float,
            updated_at: Time
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
            T.all(Symbol, WhopSDK::Models::AdCampaignListResponse::BudgetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(
            :daily,
            WhopSDK::Models::AdCampaignListResponse::BudgetType::TaggedSymbol
          )
        LIFETIME =
          T.let(
            :lifetime,
            WhopSDK::Models::AdCampaignListResponse::BudgetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignListResponse::BudgetType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The external ad platform this campaign is running on (e.g., meta, tiktok).
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdCampaignListResponse::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(
            :meta,
            WhopSDK::Models::AdCampaignListResponse::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::Models::AdCampaignListResponse::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignListResponse::Platform::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Current status of the campaign (active, paused, or inactive).
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdCampaignListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :payment_failed,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        DRAFT =
          T.let(
            :draft,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(
            :flagged,
            WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignListResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
