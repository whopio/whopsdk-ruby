# typed: strong

module WhopSDK
  module Models
    class AdGroupRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AdGroupRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for this ad group.
      sig { returns(String) }
      attr_accessor :id

      # The ad campaign this ad group belongs to.
      sig { returns(WhopSDK::Models::AdGroupRetrieveResponse::AdCampaign) }
      attr_reader :ad_campaign

      sig do
        params(
          ad_campaign:
            WhopSDK::Models::AdGroupRetrieveResponse::AdCampaign::OrHash
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
            WhopSDK::Models::AdGroupRetrieveResponse::BudgetType::TaggedSymbol
          )
        )
      end
      attr_accessor :budget_type

      # When the ad group was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The external ad platform this ad group is running on (e.g., meta, tiktok).
      sig do
        returns(
          WhopSDK::Models::AdGroupRetrieveResponse::Platform::TaggedSymbol
        )
      end
      attr_accessor :platform

      # Current operational status of the ad group.
      sig do
        returns(WhopSDK::Models::AdGroupRetrieveResponse::Status::TaggedSymbol)
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
            WhopSDK::Models::AdGroupRetrieveResponse::AdCampaign::OrHash,
          budget: T.nilable(Float),
          budget_type:
            T.nilable(
              WhopSDK::Models::AdGroupRetrieveResponse::BudgetType::OrSymbol
            ),
          created_at: Time,
          platform:
            WhopSDK::Models::AdGroupRetrieveResponse::Platform::OrSymbol,
          status: WhopSDK::Models::AdGroupRetrieveResponse::Status::OrSymbol,
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
            ad_campaign: WhopSDK::Models::AdGroupRetrieveResponse::AdCampaign,
            budget: T.nilable(Float),
            budget_type:
              T.nilable(
                WhopSDK::Models::AdGroupRetrieveResponse::BudgetType::TaggedSymbol
              ),
            created_at: Time,
            platform:
              WhopSDK::Models::AdGroupRetrieveResponse::Platform::TaggedSymbol,
            status:
              WhopSDK::Models::AdGroupRetrieveResponse::Status::TaggedSymbol,
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
              WhopSDK::Models::AdGroupRetrieveResponse::AdCampaign,
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
            T.all(Symbol, WhopSDK::Models::AdGroupRetrieveResponse::BudgetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(
            :daily,
            WhopSDK::Models::AdGroupRetrieveResponse::BudgetType::TaggedSymbol
          )
        LIFETIME =
          T.let(
            :lifetime,
            WhopSDK::Models::AdGroupRetrieveResponse::BudgetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdGroupRetrieveResponse::BudgetType::TaggedSymbol
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
            T.all(Symbol, WhopSDK::Models::AdGroupRetrieveResponse::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(
            :meta,
            WhopSDK::Models::AdGroupRetrieveResponse::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::Models::AdGroupRetrieveResponse::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdGroupRetrieveResponse::Platform::TaggedSymbol
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
            T.all(Symbol, WhopSDK::Models::AdGroupRetrieveResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::AdGroupRetrieveResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            WhopSDK::Models::AdGroupRetrieveResponse::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            WhopSDK::Models::AdGroupRetrieveResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdGroupRetrieveResponse::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            WhopSDK::Models::AdGroupRetrieveResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(
            :flagged,
            WhopSDK::Models::AdGroupRetrieveResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdGroupRetrieveResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
