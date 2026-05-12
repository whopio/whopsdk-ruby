# typed: strong

module WhopSDK
  module Models
    class AdGroupUpdateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AdGroupUpdateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for this ad group.
      sig { returns(String) }
      attr_accessor :id

      # The ad campaign this ad group belongs to.
      sig { returns(WhopSDK::Models::AdGroupUpdateResponse::AdCampaign) }
      attr_reader :ad_campaign

      sig do
        params(
          ad_campaign:
            WhopSDK::Models::AdGroupUpdateResponse::AdCampaign::OrHash
        ).void
      end
      attr_writer :ad_campaign

      # Budget amount in dollars.
      sig { returns(T.nilable(Float)) }
      attr_accessor :budget

      # The budget type for an ad campaign or ad group.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::AdGroupUpdateResponse::BudgetType::TaggedSymbol
          )
        )
      end
      attr_accessor :budget_type

      # When the ad group was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The external ad platform this ad group is running on (e.g., meta, tiktok).
      sig do
        returns(WhopSDK::Models::AdGroupUpdateResponse::Platform::TaggedSymbol)
      end
      attr_accessor :platform

      # Current operational status of the ad group.
      sig do
        returns(WhopSDK::Models::AdGroupUpdateResponse::Status::TaggedSymbol)
      end
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
          ad_campaign:
            WhopSDK::Models::AdGroupUpdateResponse::AdCampaign::OrHash,
          budget: T.nilable(Float),
          budget_type:
            T.nilable(
              WhopSDK::Models::AdGroupUpdateResponse::BudgetType::OrSymbol
            ),
          created_at: Time,
          platform: WhopSDK::Models::AdGroupUpdateResponse::Platform::OrSymbol,
          status: WhopSDK::Models::AdGroupUpdateResponse::Status::OrSymbol,
          title: T.nilable(String),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for this ad group.
        id:,
        # The ad campaign this ad group belongs to.
        ad_campaign:,
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
            ad_campaign: WhopSDK::Models::AdGroupUpdateResponse::AdCampaign,
            budget: T.nilable(Float),
            budget_type:
              T.nilable(
                WhopSDK::Models::AdGroupUpdateResponse::BudgetType::TaggedSymbol
              ),
            created_at: Time,
            platform:
              WhopSDK::Models::AdGroupUpdateResponse::Platform::TaggedSymbol,
            status:
              WhopSDK::Models::AdGroupUpdateResponse::Status::TaggedSymbol,
            title: T.nilable(String),
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class AdCampaign < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdGroupUpdateResponse::AdCampaign,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for this ad campaign.
        sig { returns(String) }
        attr_accessor :id

        # The ad campaign this ad group belongs to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for this ad campaign.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      # The budget type for an ad campaign or ad group.
      module BudgetType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdGroupUpdateResponse::BudgetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(
            :daily,
            WhopSDK::Models::AdGroupUpdateResponse::BudgetType::TaggedSymbol
          )
        LIFETIME =
          T.let(
            :lifetime,
            WhopSDK::Models::AdGroupUpdateResponse::BudgetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdGroupUpdateResponse::BudgetType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The external ad platform this ad group is running on (e.g., meta, tiktok).
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdGroupUpdateResponse::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(
            :meta,
            WhopSDK::Models::AdGroupUpdateResponse::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::Models::AdGroupUpdateResponse::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdGroupUpdateResponse::Platform::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Current operational status of the ad group.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdGroupUpdateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::AdGroupUpdateResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            WhopSDK::Models::AdGroupUpdateResponse::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            WhopSDK::Models::AdGroupUpdateResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdGroupUpdateResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::AdGroupUpdateResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(
            :flagged,
            WhopSDK::Models::AdGroupUpdateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdGroupUpdateResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
