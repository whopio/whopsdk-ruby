# typed: strong

module WhopSDK
  module Models
    class AdCampaignUpdatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::AdCampaignUpdatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      sig { returns(WhopSDK::AdCampaignUpdatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::AdCampaignUpdatedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::AdCampaignUpdatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"ad_campaign.updated"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::AdCampaignUpdatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the ad campaign, prefixed `adcamp_`.
        sig { returns(String) }
        attr_accessor :id

        # The campaign's budget, in the ad account's currency. `null` when each ad group
        # sets its own budget instead.
        sig { returns(T.nilable(Float)) }
        attr_accessor :budget_amount

        # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
        # individually (`ad_group`).
        sig do
          returns(
            T.nilable(
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetOptimization::TaggedSymbol
            )
          )
        end
        attr_accessor :budget_optimization

        # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
        # run (`lifetime`).
        sig do
          returns(
            T.nilable(
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetType::TaggedSymbol
            )
          )
        end
        attr_accessor :budget_type

        # When the campaign was created, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :created_at

        # Whether the campaign's ads are delivering right now, and if not, why. When
        # several states apply at once, the highest-precedence one is returned.
        sig do
          returns(
            WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
          )
        end
        attr_accessor :delivery_status

        sig do
          returns(T::Array[WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue])
        end
        attr_accessor :issues

        # The goal the campaign optimizes toward.
        sig do
          returns(
            T.nilable(
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective::TaggedSymbol
            )
          )
        end
        attr_accessor :objective

        # The event the campaign optimizes for when a single goal is set campaign-wide.
        # `null` when each ad group sets its own optimization_goal.
        sig { returns(T.nilable(String)) }
        attr_accessor :optimization_goal

        # The ad network the campaign runs on.
        sig do
          returns(
            WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Platform::TaggedSymbol
          )
        end
        attr_accessor :platform

        sig do
          returns(
            T::Array[
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory::TaggedSymbol
            ]
          )
        end
        attr_accessor :special_ad_categories

        # The lifecycle status of the ad campaign.
        sig do
          returns(
            WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Display name of the ad campaign.
        sig { returns(String) }
        attr_accessor :title

        # When the campaign was last updated, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :updated_at

        # How delivery bids in the ad auction: `minimum_cost` gets the most results for
        # the budget, `average_target` holds an average cost per result, and
        # `maximum_target` never bids above a cap.
        sig do
          returns(
            T.nilable(
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BidType::TaggedSymbol
            )
          )
        end
        attr_accessor :bid_type

        sig do
          params(
            id: String,
            budget_amount: T.nilable(Float),
            budget_optimization:
              T.nilable(
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetOptimization::OrSymbol
              ),
            budget_type:
              T.nilable(
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetType::OrSymbol
              ),
            created_at: String,
            delivery_status:
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::OrSymbol,
            issues:
              T::Array[
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue::OrHash
              ],
            objective:
              T.nilable(
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective::OrSymbol
              ),
            optimization_goal: T.nilable(String),
            platform:
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Platform::OrSymbol,
            special_ad_categories:
              T::Array[
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory::OrSymbol
              ],
            status:
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::OrSymbol,
            title: String,
            updated_at: String,
            bid_type:
              T.nilable(
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BidType::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the ad campaign, prefixed `adcamp_`.
          id:,
          # The campaign's budget, in the ad account's currency. `null` when each ad group
          # sets its own budget instead.
          budget_amount:,
          # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
          # individually (`ad_group`).
          budget_optimization:,
          # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
          # run (`lifetime`).
          budget_type:,
          # When the campaign was created, as an ISO 8601 timestamp.
          created_at:,
          # Whether the campaign's ads are delivering right now, and if not, why. When
          # several states apply at once, the highest-precedence one is returned.
          delivery_status:,
          issues:,
          # The goal the campaign optimizes toward.
          objective:,
          # The event the campaign optimizes for when a single goal is set campaign-wide.
          # `null` when each ad group sets its own optimization_goal.
          optimization_goal:,
          # The ad network the campaign runs on.
          platform:,
          special_ad_categories:,
          # The lifecycle status of the ad campaign.
          status:,
          # Display name of the ad campaign.
          title:,
          # When the campaign was last updated, as an ISO 8601 timestamp.
          updated_at:,
          # How delivery bids in the ad auction: `minimum_cost` gets the most results for
          # the budget, `average_target` holds an average cost per result, and
          # `maximum_target` never bids above a cap.
          bid_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              budget_amount: T.nilable(Float),
              budget_optimization:
                T.nilable(
                  WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetOptimization::TaggedSymbol
                ),
              budget_type:
                T.nilable(
                  WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetType::TaggedSymbol
                ),
              created_at: String,
              delivery_status:
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol,
              issues:
                T::Array[WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue],
              objective:
                T.nilable(
                  WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective::TaggedSymbol
                ),
              optimization_goal: T.nilable(String),
              platform:
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Platform::TaggedSymbol,
              special_ad_categories:
                T::Array[
                  WhopSDK::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory::TaggedSymbol
                ],
              status:
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol,
              title: String,
              updated_at: String,
              bid_type:
                T.nilable(
                  WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BidType::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        # Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group
        # individually (`ad_group`).
        module BudgetOptimization
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetOptimization
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AD_CAMPAIGN =
            T.let(
              :ad_campaign,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetOptimization::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :ad_group,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetOptimization::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetOptimization::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether `budget_amount` is spent per day (`daily`) or over the campaign's full
        # run (`lifetime`).
        module BudgetType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAILY =
            T.let(
              :daily,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetType::TaggedSymbol
            )
          LIFETIME =
            T.let(
              :lifetime,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BudgetType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the campaign's ads are delivering right now, and if not, why. When
        # several states apply at once, the highest-precedence one is returned.
        module DeliveryStatus
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYMENT_FAILED =
            T.let(
              :payment_failed,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          ALL_ADS_REJECTED =
            T.let(
              :all_ads_rejected,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          DRAFT =
            T.let(
              :draft,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          NO_AD_GROUPS =
            T.let(
              :no_ad_groups,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          NO_ADS =
            T.let(
              :no_ads,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          ISSUES =
            T.let(
              :issues,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :scheduled,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          AD_GROUPS_OFF =
            T.let(
              :ad_groups_off,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::DeliveryStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Issue < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue,
                WhopSDK::Internal::AnyHash
              )
            end

          # Unique identifier for the issue.
          sig { returns(String) }
          attr_accessor :id

          # A description of what the issue is and how it can be resolved.
          sig { returns(String) }
          attr_accessor :message

          # The ID of the campaign, ad group, or ad the issue is attached to.
          sig { returns(T.nilable(String)) }
          attr_accessor :resource_id

          # The type of resource the issue is attached to.
          sig do
            returns(
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
            )
          end
          attr_accessor :resource_type

          # Open issues affecting the campaign and its descendant ad groups and ads.
          sig do
            params(
              id: String,
              message: String,
              resource_id: T.nilable(String),
              resource_type:
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the issue.
            id:,
            # A description of what the issue is and how it can be resolved.
            message:,
            # The ID of the campaign, ad group, or ad the issue is attached to.
            resource_id:,
            # The type of resource the issue is attached to.
            resource_type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                message: String,
                resource_id: T.nilable(String),
                resource_type:
                  WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The type of resource the issue is attached to.
          module ResourceType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AD_CAMPAIGN =
              T.let(
                :ad_campaign,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
              )
            AD_GROUP =
              T.let(
                :ad_group,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
              )
            AD =
              T.let(
                :ad,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Issue::ResourceType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The goal the campaign optimizes toward.
        module Objective
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWARENESS =
            T.let(
              :awareness,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective::TaggedSymbol
            )
          TRAFFIC =
            T.let(
              :traffic,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :engagement,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective::TaggedSymbol
            )
          LEADS =
            T.let(
              :leads,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective::TaggedSymbol
            )
          SALES =
            T.let(
              :sales,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Objective::TaggedSymbol
              ]
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
              T.all(
                Symbol,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Platform
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          META =
            T.let(
              :meta,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Platform::TaggedSymbol
            )
          TIKTOK =
            T.let(
              :tiktok,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Platform::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Platform::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Regulated categories the campaign is declared under. Ads in these categories are
        # subject to extra targeting restrictions. Empty when none apply.
        module SpecialAdCategory
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HOUSING =
            T.let(
              :housing,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory::TaggedSymbol
            )
          EMPLOYMENT =
            T.let(
              :employment,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory::TaggedSymbol
            )
          FINANCIAL_PRODUCTS =
            T.let(
              :financial_products,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory::TaggedSymbol
            )
          POLITICS =
            T.let(
              :politics,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::SpecialAdCategory::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The lifecycle status of the ad campaign.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          STALE =
            T.let(
              :stale,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          PENDING_REFUND =
            T.let(
              :pending_refund,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          PAYMENT_FAILED =
            T.let(
              :payment_failed,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          DRAFT =
            T.let(
              :draft,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          IN_REVIEW =
            T.let(
              :in_review,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          FLAGGED =
            T.let(
              :flagged,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          IMPORTING =
            T.let(
              :importing,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          IMPORTED =
            T.let(
              :imported,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )
          DUPLICATING =
            T.let(
              :duplicating,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # How delivery bids in the ad auction: `minimum_cost` gets the most results for
        # the budget, `average_target` holds an average cost per result, and
        # `maximum_target` never bids above a cap.
        module BidType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BidType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MINIMUM_COST =
            T.let(
              :minimum_cost,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BidType::TaggedSymbol
            )
          AVERAGE_TARGET =
            T.let(
              :average_target,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BidType::TaggedSymbol
            )
          MAXIMUM_TARGET =
            T.let(
              :maximum_target,
              WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BidType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::AdCampaignUpdatedWebhookEvent::Data::BidType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
