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
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::AdGroupListResponse::BudgetType::TaggedSymbol
          )
        )
      end
      attr_accessor :budget_type

      # When the ad group was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The external ad platform this ad group is running on (e.g., meta, tiktok).
      sig do
        returns(WhopSDK::Models::AdGroupListResponse::Platform::TaggedSymbol)
      end
      attr_accessor :platform

      # Current operational status of the ad group.
      sig do
        returns(WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol)
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
          budget: T.nilable(Float),
          budget_type:
            T.nilable(
              WhopSDK::Models::AdGroupListResponse::BudgetType::OrSymbol
            ),
          created_at: Time,
          platform: WhopSDK::Models::AdGroupListResponse::Platform::OrSymbol,
          status: WhopSDK::Models::AdGroupListResponse::Status::OrSymbol,
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
            budget_type:
              T.nilable(
                WhopSDK::Models::AdGroupListResponse::BudgetType::TaggedSymbol
              ),
            created_at: Time,
            platform:
              WhopSDK::Models::AdGroupListResponse::Platform::TaggedSymbol,
            status: WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol,
            title: T.nilable(String),
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
            T.all(Symbol, WhopSDK::Models::AdGroupListResponse::BudgetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(
            :daily,
            WhopSDK::Models::AdGroupListResponse::BudgetType::TaggedSymbol
          )
        LIFETIME =
          T.let(
            :lifetime,
            WhopSDK::Models::AdGroupListResponse::BudgetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdGroupListResponse::BudgetType::TaggedSymbol
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
            T.all(Symbol, WhopSDK::Models::AdGroupListResponse::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(
            :meta,
            WhopSDK::Models::AdGroupListResponse::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::Models::AdGroupListResponse::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdGroupListResponse::Platform::TaggedSymbol
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
            T.all(Symbol, WhopSDK::Models::AdGroupListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(
            :flagged,
            WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::AdGroupListResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
