# typed: strong

module WhopSDK
  module Models
    class AdCampaignPauseResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AdCampaignPauseResponse,
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
            WhopSDK::Models::AdCampaignPauseResponse::BudgetType::TaggedSymbol
          )
        )
      end
      attr_accessor :budget_type

      # When the ad campaign was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The user who created this ad campaign.
      sig { returns(WhopSDK::Models::AdCampaignPauseResponse::CreatedByUser) }
      attr_reader :created_by_user

      sig do
        params(
          created_by_user:
            WhopSDK::Models::AdCampaignPauseResponse::CreatedByUser::OrHash
        ).void
      end
      attr_writer :created_by_user

      # Meta-specific campaign configuration (objective, budget mode, etc.). Null for
      # non-Meta campaigns.
      sig do
        returns(T.nilable(WhopSDK::Models::AdCampaignPauseResponse::MetaConfig))
      end
      attr_reader :meta_config

      sig do
        params(
          meta_config:
            T.nilable(
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::OrHash
            )
        ).void
      end
      attr_writer :meta_config

      # The external ad platform this campaign is running on (e.g., meta, tiktok).
      sig do
        returns(
          WhopSDK::Models::AdCampaignPauseResponse::Platform::TaggedSymbol
        )
      end
      attr_accessor :platform

      # Current status of the campaign (active, paused, or inactive).
      sig do
        returns(WhopSDK::Models::AdCampaignPauseResponse::Status::TaggedSymbol)
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
              WhopSDK::Models::AdCampaignPauseResponse::BudgetType::OrSymbol
            ),
          created_at: Time,
          created_by_user:
            WhopSDK::Models::AdCampaignPauseResponse::CreatedByUser::OrHash,
          meta_config:
            T.nilable(
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::OrHash
            ),
          platform:
            WhopSDK::Models::AdCampaignPauseResponse::Platform::OrSymbol,
          status: WhopSDK::Models::AdCampaignPauseResponse::Status::OrSymbol,
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
        # The user who created this ad campaign.
        created_by_user:,
        # Meta-specific campaign configuration (objective, budget mode, etc.). Null for
        # non-Meta campaigns.
        meta_config:,
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
                WhopSDK::Models::AdCampaignPauseResponse::BudgetType::TaggedSymbol
              ),
            created_at: Time,
            created_by_user:
              WhopSDK::Models::AdCampaignPauseResponse::CreatedByUser,
            meta_config:
              T.nilable(WhopSDK::Models::AdCampaignPauseResponse::MetaConfig),
            platform:
              WhopSDK::Models::AdCampaignPauseResponse::Platform::TaggedSymbol,
            status:
              WhopSDK::Models::AdCampaignPauseResponse::Status::TaggedSymbol,
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
            T.all(Symbol, WhopSDK::Models::AdCampaignPauseResponse::BudgetType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY =
          T.let(
            :daily,
            WhopSDK::Models::AdCampaignPauseResponse::BudgetType::TaggedSymbol
          )
        LIFETIME =
          T.let(
            :lifetime,
            WhopSDK::Models::AdCampaignPauseResponse::BudgetType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignPauseResponse::BudgetType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class CreatedByUser < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCampaignPauseResponse::CreatedByUser,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user who created this ad campaign.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end

      class MetaConfig < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig,
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
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::BidStrategy::TaggedSymbol
            )
          )
        end
        attr_accessor :bid_strategy

        # Whether campaign budget optimization (CBO) is enabled, allowing the platform to
        # distribute budget across ad groups.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :budget_optimization

        # The actual delivery status, accounting for platform overrides (e.g., in_review,
        # rejected).
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus::TaggedSymbol
            )
          )
        end
        attr_accessor :effective_status

        # The scheduled end time of the campaign (ISO8601).
        sig { returns(T.nilable(String)) }
        attr_accessor :end_time

        # The campaign objective that determines how Meta optimizes delivery.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Objective::TaggedSymbol
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
            T.nilable(
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Status::TaggedSymbol
            )
          )
        end
        attr_accessor :status

        # Meta-specific campaign configuration (objective, budget mode, etc.). Null for
        # non-Meta campaigns.
        sig do
          params(
            bid_amount: T.nilable(Integer),
            bid_strategy:
              T.nilable(
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::BidStrategy::OrSymbol
              ),
            budget_optimization: T.nilable(T::Boolean),
            effective_status:
              T.nilable(
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus::OrSymbol
              ),
            end_time: T.nilable(String),
            objective:
              T.nilable(
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Objective::OrSymbol
              ),
            special_categories: T.nilable(T::Array[String]),
            start_time: T.nilable(String),
            status:
              T.nilable(
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Status::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Bid cap amount in cents. Only used when bid_strategy is bid_cap.
          bid_amount:,
          # The bidding strategy used to optimize spend for this campaign.
          bid_strategy:,
          # Whether campaign budget optimization (CBO) is enabled, allowing the platform to
          # distribute budget across ad groups.
          budget_optimization:,
          # The actual delivery status, accounting for platform overrides (e.g., in_review,
          # rejected).
          effective_status:,
          # The scheduled end time of the campaign (ISO8601).
          end_time:,
          # The campaign objective that determines how Meta optimizes delivery.
          objective:,
          # Special ad categories required by the platform (e.g., housing, employment,
          # credit).
          special_categories:,
          # The scheduled start time of the campaign (ISO8601).
          start_time:,
          # The campaign status as set by the advertiser (active or paused).
          status:
        )
        end

        sig do
          override.returns(
            {
              bid_amount: T.nilable(Integer),
              bid_strategy:
                T.nilable(
                  WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::BidStrategy::TaggedSymbol
                ),
              budget_optimization: T.nilable(T::Boolean),
              effective_status:
                T.nilable(
                  WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus::TaggedSymbol
                ),
              end_time: T.nilable(String),
              objective:
                T.nilable(
                  WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Objective::TaggedSymbol
                ),
              special_categories: T.nilable(T::Array[String]),
              start_time: T.nilable(String),
              status:
                T.nilable(
                  WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Status::TaggedSymbol
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
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::BidStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOWEST_COST =
            T.let(
              :lowest_cost,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::BidStrategy::TaggedSymbol
            )
          BID_CAP =
            T.let(
              :bid_cap,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::BidStrategy::TaggedSymbol
            )
          COST_CAP =
            T.let(
              :cost_cap,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::BidStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::BidStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The actual delivery status, accounting for platform overrides (e.g., in_review,
        # rejected).
        module EffectiveStatus
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus::TaggedSymbol
            )
          DELETED =
            T.let(
              :deleted,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus::TaggedSymbol
            )
          IN_REVIEW =
            T.let(
              :in_review,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus::TaggedSymbol
            )
          WITH_ISSUES =
            T.let(
              :with_issues,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::EffectiveStatus::TaggedSymbol
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
              T.all(
                Symbol,
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Objective
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWARENESS =
            T.let(
              :awareness,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Objective::TaggedSymbol
            )
          TRAFFIC =
            T.let(
              :traffic,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Objective::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :engagement,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Objective::TaggedSymbol
            )
          LEADS =
            T.let(
              :leads,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Objective::TaggedSymbol
            )
          SALES =
            T.let(
              :sales,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Objective::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Objective::TaggedSymbol
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
              T.all(
                Symbol,
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Status::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdCampaignPauseResponse::MetaConfig::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The external ad platform this campaign is running on (e.g., meta, tiktok).
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdCampaignPauseResponse::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(
            :meta,
            WhopSDK::Models::AdCampaignPauseResponse::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::Models::AdCampaignPauseResponse::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignPauseResponse::Platform::TaggedSymbol
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
            T.all(Symbol, WhopSDK::Models::AdCampaignPauseResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::AdCampaignPauseResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            WhopSDK::Models::AdCampaignPauseResponse::Status::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :payment_failed,
            WhopSDK::Models::AdCampaignPauseResponse::Status::TaggedSymbol
          )
        DRAFT =
          T.let(
            :draft,
            WhopSDK::Models::AdCampaignPauseResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdCampaignPauseResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(
            :flagged,
            WhopSDK::Models::AdCampaignPauseResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignPauseResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
