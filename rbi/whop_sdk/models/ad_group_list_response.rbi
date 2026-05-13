# typed: strong

module WhopSDK
  module Models
    class AdGroupListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AdGroupListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for this ad group.
      sig { returns(String) }
      attr_accessor :id

      # Budget amount in dollars.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      # The budget type for an ad campaign or ad group.
      sig { returns(T.nilable(WhopSDK::AdBudgetType::TaggedSymbol)) }
      attr_accessor :budget_type

      # When the ad group was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The external ad platform this ad group is running on (e.g., meta, tiktok).
      sig { returns(WhopSDK::AdCampaignPlatform::TaggedSymbol) }
      attr_accessor :platform

      # Current operational status of the ad group.
      sig { returns(WhopSDK::AdGroupStatus::TaggedSymbol) }
      attr_accessor :status

      # Human-readable name shown on the external platform.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # When the ad group was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An ad group (ad set) belonging to an ad campaign.
      sig do
        params(
          id: String,
          budget: T.nilable(Float),
          budget_type: T.nilable(WhopSDK::AdBudgetType::OrSymbol),
          created_at: Time,
          platform: WhopSDK::AdCampaignPlatform::OrSymbol,
          status: WhopSDK::AdGroupStatus::OrSymbol,
          title: T.nilable(String),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for this ad group.
        id:,
        # Budget amount in dollars.
        budget:,
        # The budget type for an ad campaign or ad group.
        budget_type:,
        # When the ad group was created.
        created_at:,
        # The external ad platform this ad group is running on (e.g., meta, tiktok).
        platform:,
        # Current operational status of the ad group.
        status:,
        # Human-readable name shown on the external platform.
        title:,
        # When the ad group was last updated.
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
            status: WhopSDK::AdGroupStatus::TaggedSymbol,
            title: T.nilable(String),
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
