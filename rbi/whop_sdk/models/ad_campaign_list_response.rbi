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
      sig { returns(T.nilable(WhopSDK::AdBudgetType::TaggedSymbol)) }
      attr_accessor :budget_type

      # When the ad campaign was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The external ad platform this campaign is running on (e.g., meta, tiktok).
      sig { returns(WhopSDK::AdCampaignPlatform::TaggedSymbol) }
      attr_accessor :platform

      # Current status of the campaign (active, paused, or inactive).
      sig { returns(WhopSDK::AdCampaignStatus::TaggedSymbol) }
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
          budget_type: T.nilable(WhopSDK::AdBudgetType::OrSymbol),
          created_at: Time,
          platform: WhopSDK::AdCampaignPlatform::OrSymbol,
          status: WhopSDK::AdCampaignStatus::OrSymbol,
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
            budget_type: T.nilable(WhopSDK::AdBudgetType::TaggedSymbol),
            created_at: Time,
            platform: WhopSDK::AdCampaignPlatform::TaggedSymbol,
            status: WhopSDK::AdCampaignStatus::TaggedSymbol,
            title: String,
            total_spend: Float,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
