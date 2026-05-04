# typed: strong

module WhopSDK
  module Models
    class AdCampaignRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AdCampaignRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the ad campaign.
      sig { returns(String) }
      attr_accessor :id

      # Available budget in dollars, capped at daily budget minus today's spend for
      # daily campaigns
      sig { returns(Float) }
      attr_accessor :available_budget

      # The ledger account being charged for platform balance billing (null if using
      # card)
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::AdCampaignRetrieveResponse::BillingLedgerAccount
          )
        )
      end
      attr_reader :billing_ledger_account

      sig do
        params(
          billing_ledger_account:
            T.nilable(
              WhopSDK::Models::AdCampaignRetrieveResponse::BillingLedgerAccount::OrHash
            )
        ).void
      end
      attr_writer :billing_ledger_account

      # Number of clicks
      sig { returns(Integer) }
      attr_accessor :clicks_count

      # Meta campaign configuration (objective, budget, bidding, etc.). Null for
      # non-Meta campaigns — use `tiktokConfig` for TikTok.
      sig do
        returns(T.nilable(WhopSDK::Models::AdCampaignRetrieveResponse::Config))
      end
      attr_reader :config

      sig do
        params(
          config:
            T.nilable(
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::OrHash
            )
        ).void
      end
      attr_writer :config

      # The datetime the ad campaign was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The user who created the campaign
      sig do
        returns(WhopSDK::Models::AdCampaignRetrieveResponse::CreatedByUser)
      end
      attr_reader :created_by_user

      sig do
        params(
          created_by_user:
            WhopSDK::Models::AdCampaignRetrieveResponse::CreatedByUser::OrHash
        ).void
      end
      attr_writer :created_by_user

      # Effective daily budget in dollars — sum of ad group budgets when set, otherwise
      # campaign-level daily budget
      sig { returns(T.nilable(Float)) }
      attr_accessor :daily_budget

      # Number of impressions (views)
      sig { returns(Integer) }
      attr_accessor :impressions_count

      # If temporarily paused, the timestamp when the campaign will auto-resume
      sig { returns(T.nilable(Time)) }
      attr_accessor :paused_until

      # The payment method used for daily billing (null if using platform balance)
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::Variants
          )
        )
      end
      attr_accessor :payment_method

      # The platforms where an ad campaign can run.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::AdCampaignRetrieveResponse::Platform::TaggedSymbol
          )
        )
      end
      attr_accessor :platform

      # The access pass being promoted. Null for campaigns that don't target a specific
      # product.
      sig do
        returns(T.nilable(WhopSDK::Models::AdCampaignRetrieveResponse::Product))
      end
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(
              WhopSDK::Models::AdCampaignRetrieveResponse::Product::OrHash
            )
        ).void
      end
      attr_writer :product

      # Number of purchases
      sig { returns(Integer) }
      attr_accessor :purchases_count

      # Remaining balance in dollars
      sig { returns(Float) }
      attr_accessor :remaining_balance

      # Return on Ad Spend (ROAS) percentage - revenue generated divided by ad spend
      sig { returns(Float) }
      attr_accessor :return_on_ad_spend

      # Total revenue generated from users who converted through this campaign
      sig { returns(Float) }
      attr_accessor :revenue

      # Current status of the campaign (active, paused, or inactive)
      sig do
        returns(
          WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # Array of ISO3166 country codes for territory targeting
      sig { returns(T::Array[String]) }
      attr_accessor :target_country_codes

      # The title of the ad campaign
      sig { returns(String) }
      attr_accessor :title

      # Amount spent today in dollars
      sig { returns(Float) }
      attr_accessor :todays_spend

      # Total credits added to the campaign in dollars
      sig { returns(Float) }
      attr_accessor :total_credits

      # Total amount spent on conversions in dollars
      sig { returns(Float) }
      attr_accessor :total_spend

      # The datetime the ad campaign was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # An advertising campaign running on an external platform or within Whop.
      sig do
        params(
          id: String,
          available_budget: Float,
          billing_ledger_account:
            T.nilable(
              WhopSDK::Models::AdCampaignRetrieveResponse::BillingLedgerAccount::OrHash
            ),
          clicks_count: Integer,
          config:
            T.nilable(
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::OrHash
            ),
          created_at: Time,
          created_by_user:
            WhopSDK::Models::AdCampaignRetrieveResponse::CreatedByUser::OrHash,
          daily_budget: T.nilable(Float),
          impressions_count: Integer,
          paused_until: T.nilable(Time),
          payment_method:
            T.nilable(
              T.any(
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::BasePaymentMethod::OrHash,
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CardPaymentMethod::OrHash,
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::UsBankAccountPaymentMethod::OrHash,
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CashappPaymentMethod::OrHash,
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::IdealPaymentMethod::OrHash,
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::SepaDebitPaymentMethod::OrHash
              )
            ),
          platform:
            T.nilable(
              WhopSDK::Models::AdCampaignRetrieveResponse::Platform::OrSymbol
            ),
          product:
            T.nilable(
              WhopSDK::Models::AdCampaignRetrieveResponse::Product::OrHash
            ),
          purchases_count: Integer,
          remaining_balance: Float,
          return_on_ad_spend: Float,
          revenue: Float,
          status: WhopSDK::Models::AdCampaignRetrieveResponse::Status::OrSymbol,
          target_country_codes: T::Array[String],
          title: String,
          todays_spend: Float,
          total_credits: Float,
          total_spend: Float,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the ad campaign.
        id:,
        # Available budget in dollars, capped at daily budget minus today's spend for
        # daily campaigns
        available_budget:,
        # The ledger account being charged for platform balance billing (null if using
        # card)
        billing_ledger_account:,
        # Number of clicks
        clicks_count:,
        # Meta campaign configuration (objective, budget, bidding, etc.). Null for
        # non-Meta campaigns — use `tiktokConfig` for TikTok.
        config:,
        # The datetime the ad campaign was created.
        created_at:,
        # The user who created the campaign
        created_by_user:,
        # Effective daily budget in dollars — sum of ad group budgets when set, otherwise
        # campaign-level daily budget
        daily_budget:,
        # Number of impressions (views)
        impressions_count:,
        # If temporarily paused, the timestamp when the campaign will auto-resume
        paused_until:,
        # The payment method used for daily billing (null if using platform balance)
        payment_method:,
        # The platforms where an ad campaign can run.
        platform:,
        # The access pass being promoted. Null for campaigns that don't target a specific
        # product.
        product:,
        # Number of purchases
        purchases_count:,
        # Remaining balance in dollars
        remaining_balance:,
        # Return on Ad Spend (ROAS) percentage - revenue generated divided by ad spend
        return_on_ad_spend:,
        # Total revenue generated from users who converted through this campaign
        revenue:,
        # Current status of the campaign (active, paused, or inactive)
        status:,
        # Array of ISO3166 country codes for territory targeting
        target_country_codes:,
        # The title of the ad campaign
        title:,
        # Amount spent today in dollars
        todays_spend:,
        # Total credits added to the campaign in dollars
        total_credits:,
        # Total amount spent on conversions in dollars
        total_spend:,
        # The datetime the ad campaign was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            available_budget: Float,
            billing_ledger_account:
              T.nilable(
                WhopSDK::Models::AdCampaignRetrieveResponse::BillingLedgerAccount
              ),
            clicks_count: Integer,
            config:
              T.nilable(WhopSDK::Models::AdCampaignRetrieveResponse::Config),
            created_at: Time,
            created_by_user:
              WhopSDK::Models::AdCampaignRetrieveResponse::CreatedByUser,
            daily_budget: T.nilable(Float),
            impressions_count: Integer,
            paused_until: T.nilable(Time),
            payment_method:
              T.nilable(
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::Variants
              ),
            platform:
              T.nilable(
                WhopSDK::Models::AdCampaignRetrieveResponse::Platform::TaggedSymbol
              ),
            product:
              T.nilable(WhopSDK::Models::AdCampaignRetrieveResponse::Product),
            purchases_count: Integer,
            remaining_balance: Float,
            return_on_ad_spend: Float,
            revenue: Float,
            status:
              WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol,
            target_country_codes: T::Array[String],
            title: String,
            todays_spend: Float,
            total_credits: Float,
            total_spend: Float,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class BillingLedgerAccount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCampaignRetrieveResponse::BillingLedgerAccount,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the ledger account.
        sig { returns(String) }
        attr_accessor :id

        # The ledger account being charged for platform balance billing (null if using
        # card)
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the ledger account.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Config < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCampaignRetrieveResponse::Config,
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
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::BidStrategy::TaggedSymbol
            )
          )
        end
        attr_accessor :bid_strategy

        # Whether campaign budget optimization (CBO) is enabled, allowing the platform to
        # distribute budget across ad groups.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :budget_optimization

        # The scheduled end time of the campaign (ISO8601).
        sig { returns(T.nilable(String)) }
        attr_accessor :end_time

        # The campaign objective that determines how Meta optimizes delivery.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::Objective::TaggedSymbol
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
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::Status::TaggedSymbol
            )
          )
        end
        attr_accessor :status

        # Meta campaign configuration (objective, budget, bidding, etc.). Null for
        # non-Meta campaigns — use `tiktokConfig` for TikTok.
        sig do
          params(
            bid_amount: T.nilable(Integer),
            bid_strategy:
              T.nilable(
                WhopSDK::Models::AdCampaignRetrieveResponse::Config::BidStrategy::OrSymbol
              ),
            budget_optimization: T.nilable(T::Boolean),
            end_time: T.nilable(String),
            objective:
              T.nilable(
                WhopSDK::Models::AdCampaignRetrieveResponse::Config::Objective::OrSymbol
              ),
            special_categories: T.nilable(T::Array[String]),
            start_time: T.nilable(String),
            status:
              T.nilable(
                WhopSDK::Models::AdCampaignRetrieveResponse::Config::Status::OrSymbol
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
                  WhopSDK::Models::AdCampaignRetrieveResponse::Config::BidStrategy::TaggedSymbol
                ),
              budget_optimization: T.nilable(T::Boolean),
              end_time: T.nilable(String),
              objective:
                T.nilable(
                  WhopSDK::Models::AdCampaignRetrieveResponse::Config::Objective::TaggedSymbol
                ),
              special_categories: T.nilable(T::Array[String]),
              start_time: T.nilable(String),
              status:
                T.nilable(
                  WhopSDK::Models::AdCampaignRetrieveResponse::Config::Status::TaggedSymbol
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
                WhopSDK::Models::AdCampaignRetrieveResponse::Config::BidStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOWEST_COST =
            T.let(
              :lowest_cost,
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::BidStrategy::TaggedSymbol
            )
          BID_CAP =
            T.let(
              :bid_cap,
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::BidStrategy::TaggedSymbol
            )
          COST_CAP =
            T.let(
              :cost_cap,
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::BidStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdCampaignRetrieveResponse::Config::BidStrategy::TaggedSymbol
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
                WhopSDK::Models::AdCampaignRetrieveResponse::Config::Objective
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWARENESS =
            T.let(
              :awareness,
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::Objective::TaggedSymbol
            )
          TRAFFIC =
            T.let(
              :traffic,
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::Objective::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :engagement,
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::Objective::TaggedSymbol
            )
          LEADS =
            T.let(
              :leads,
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::Objective::TaggedSymbol
            )
          SALES =
            T.let(
              :sales,
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::Objective::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdCampaignRetrieveResponse::Config::Objective::TaggedSymbol
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
                WhopSDK::Models::AdCampaignRetrieveResponse::Config::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::Status::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              WhopSDK::Models::AdCampaignRetrieveResponse::Config::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::AdCampaignRetrieveResponse::Config::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class CreatedByUser < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCampaignRetrieveResponse::CreatedByUser,
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

        # The user who created the campaign
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

      # The payment method used for daily billing (null if using platform balance)
      module PaymentMethod
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.nilable(
              T.any(
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::BasePaymentMethod,
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CardPaymentMethod,
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::UsBankAccountPaymentMethod,
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CashappPaymentMethod,
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::IdealPaymentMethod,
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::SepaDebitPaymentMethod
              )
            )
          end

        class BasePaymentMethod < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::BasePaymentMethod,
                WhopSDK::Internal::AnyHash
              )
            end

          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          sig { returns(String) }
          attr_accessor :id

          # The time of the event in ISO 8601 UTC format with millisecond precision
          sig { returns(Time) }
          attr_accessor :created_at

          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
          attr_accessor :payment_method_type

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # A saved payment method with no type-specific details available.
          sig do
            params(
              id: String,
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Represents a unique identifier that is Base64 obfuscated. It is often used to
            # refetch an object or as key for a cache. The ID type appears in a JSON response
            # as a String; however, it is not intended to be human-readable. When expected as
            # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
            # input value will be accepted as an ID.
            id:,
            # The time of the event in ISO 8601 UTC format with millisecond precision
            created_at:,
            # The type of payment instrument stored on file (e.g., card, us_bank_account,
            # cashapp, ideal, sepa_debit).
            payment_method_type:,
            # The typename of this object
            typename: :BasePaymentMethod
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
                typename: Symbol
              }
            )
          end
          def to_hash
          end
        end

        class CardPaymentMethod < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CardPaymentMethod,
                WhopSDK::Internal::AnyHash
              )
            end

          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          sig { returns(String) }
          attr_accessor :id

          # The card-specific details for this payment method, including brand, last four
          # digits, and expiration.
          sig do
            returns(
              WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CardPaymentMethod::Card
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CardPaymentMethod::Card::OrHash
            ).void
          end
          attr_writer :card

          # The time of the event in ISO 8601 UTC format with millisecond precision
          sig { returns(Time) }
          attr_accessor :created_at

          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
          attr_accessor :payment_method_type

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # A saved card payment method, including brand, last four digits, and expiration
          # details.
          sig do
            params(
              id: String,
              card:
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CardPaymentMethod::Card::OrHash,
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Represents a unique identifier that is Base64 obfuscated. It is often used to
            # refetch an object or as key for a cache. The ID type appears in a JSON response
            # as a String; however, it is not intended to be human-readable. When expected as
            # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
            # input value will be accepted as an ID.
            id:,
            # The card-specific details for this payment method, including brand, last four
            # digits, and expiration.
            card:,
            # The time of the event in ISO 8601 UTC format with millisecond precision
            created_at:,
            # The type of payment instrument stored on file (e.g., card, us_bank_account,
            # cashapp, ideal, sepa_debit).
            payment_method_type:,
            # The typename of this object
            typename: :CardPaymentMethod
          )
          end

          sig do
            override.returns(
              {
                id: String,
                card:
                  WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CardPaymentMethod::Card,
                created_at: Time,
                payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
                typename: Symbol
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CardPaymentMethod::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Possible card brands that a payment token can have
            sig { returns(T.nilable(WhopSDK::CardBrands::TaggedSymbol)) }
            attr_accessor :brand

            # The two-digit expiration month of the card (1-12). Null if not available.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :exp_month

            # The two-digit expiration year of the card (e.g., 27 for 2027). Null if not
            # available.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :exp_year

            # The last four digits of the card number. Null if not available.
            sig { returns(T.nilable(String)) }
            attr_accessor :last4

            # The card-specific details for this payment method, including brand, last four
            # digits, and expiration.
            sig do
              params(
                brand: T.nilable(WhopSDK::CardBrands::OrSymbol),
                exp_month: T.nilable(Integer),
                exp_year: T.nilable(Integer),
                last4: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Possible card brands that a payment token can have
              brand:,
              # The two-digit expiration month of the card (1-12). Null if not available.
              exp_month:,
              # The two-digit expiration year of the card (e.g., 27 for 2027). Null if not
              # available.
              exp_year:,
              # The last four digits of the card number. Null if not available.
              last4:
            )
            end

            sig do
              override.returns(
                {
                  brand: T.nilable(WhopSDK::CardBrands::TaggedSymbol),
                  exp_month: T.nilable(Integer),
                  exp_year: T.nilable(Integer),
                  last4: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end

        class UsBankAccountPaymentMethod < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::UsBankAccountPaymentMethod,
                WhopSDK::Internal::AnyHash
              )
            end

          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          sig { returns(String) }
          attr_accessor :id

          # The time of the event in ISO 8601 UTC format with millisecond precision
          sig { returns(Time) }
          attr_accessor :created_at

          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
          attr_accessor :payment_method_type

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # The bank account-specific details for this payment method, including bank name
          # and last four digits.
          sig do
            returns(
              WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::UsBankAccountPaymentMethod::UsBankAccount
            )
          end
          attr_reader :us_bank_account

          sig do
            params(
              us_bank_account:
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::UsBankAccountPaymentMethod::UsBankAccount::OrHash
            ).void
          end
          attr_writer :us_bank_account

          # A saved US bank account payment method, including bank name, last four digits,
          # and account type.
          sig do
            params(
              id: String,
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
              us_bank_account:
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::UsBankAccountPaymentMethod::UsBankAccount::OrHash,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Represents a unique identifier that is Base64 obfuscated. It is often used to
            # refetch an object or as key for a cache. The ID type appears in a JSON response
            # as a String; however, it is not intended to be human-readable. When expected as
            # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
            # input value will be accepted as an ID.
            id:,
            # The time of the event in ISO 8601 UTC format with millisecond precision
            created_at:,
            # The type of payment instrument stored on file (e.g., card, us_bank_account,
            # cashapp, ideal, sepa_debit).
            payment_method_type:,
            # The bank account-specific details for this payment method, including bank name
            # and last four digits.
            us_bank_account:,
            # The typename of this object
            typename: :UsBankAccountPaymentMethod
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
                typename: Symbol,
                us_bank_account:
                  WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::UsBankAccountPaymentMethod::UsBankAccount
              }
            )
          end
          def to_hash
          end

          class UsBankAccount < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::UsBankAccountPaymentMethod::UsBankAccount,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The type of bank account (e.g., checking, savings).
            sig { returns(String) }
            attr_accessor :account_type

            # The name of the financial institution holding the account.
            sig { returns(String) }
            attr_accessor :bank_name

            # The last four digits of the bank account number.
            sig { returns(String) }
            attr_accessor :last4

            # The bank account-specific details for this payment method, including bank name
            # and last four digits.
            sig do
              params(
                account_type: String,
                bank_name: String,
                last4: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The type of bank account (e.g., checking, savings).
              account_type:,
              # The name of the financial institution holding the account.
              bank_name:,
              # The last four digits of the bank account number.
              last4:
            )
            end

            sig do
              override.returns(
                { account_type: String, bank_name: String, last4: String }
              )
            end
            def to_hash
            end
          end
        end

        class CashappPaymentMethod < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CashappPaymentMethod,
                WhopSDK::Internal::AnyHash
              )
            end

          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          sig { returns(String) }
          attr_accessor :id

          # The Cash App-specific details for this payment method, including cashtag and
          # buyer ID.
          sig do
            returns(
              WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CashappPaymentMethod::Cashapp
            )
          end
          attr_reader :cashapp

          sig do
            params(
              cashapp:
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CashappPaymentMethod::Cashapp::OrHash
            ).void
          end
          attr_writer :cashapp

          # The time of the event in ISO 8601 UTC format with millisecond precision
          sig { returns(Time) }
          attr_accessor :created_at

          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
          attr_accessor :payment_method_type

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # A saved Cash App payment method, including the buyer's cashtag and unique
          # identifier.
          sig do
            params(
              id: String,
              cashapp:
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CashappPaymentMethod::Cashapp::OrHash,
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Represents a unique identifier that is Base64 obfuscated. It is often used to
            # refetch an object or as key for a cache. The ID type appears in a JSON response
            # as a String; however, it is not intended to be human-readable. When expected as
            # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
            # input value will be accepted as an ID.
            id:,
            # The Cash App-specific details for this payment method, including cashtag and
            # buyer ID.
            cashapp:,
            # The time of the event in ISO 8601 UTC format with millisecond precision
            created_at:,
            # The type of payment instrument stored on file (e.g., card, us_bank_account,
            # cashapp, ideal, sepa_debit).
            payment_method_type:,
            # The typename of this object
            typename: :CashappPaymentMethod
          )
          end

          sig do
            override.returns(
              {
                id: String,
                cashapp:
                  WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CashappPaymentMethod::Cashapp,
                created_at: Time,
                payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
                typename: Symbol
              }
            )
          end
          def to_hash
          end

          class Cashapp < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::CashappPaymentMethod::Cashapp,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The unique and immutable identifier assigned by Cash App to the buyer. Null if
            # not available.
            sig { returns(T.nilable(String)) }
            attr_accessor :buyer_id

            # The public cashtag handle of the buyer on Cash App. Null if not available.
            sig { returns(T.nilable(String)) }
            attr_accessor :cashtag

            # The Cash App-specific details for this payment method, including cashtag and
            # buyer ID.
            sig do
              params(
                buyer_id: T.nilable(String),
                cashtag: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The unique and immutable identifier assigned by Cash App to the buyer. Null if
              # not available.
              buyer_id:,
              # The public cashtag handle of the buyer on Cash App. Null if not available.
              cashtag:
            )
            end

            sig do
              override.returns(
                { buyer_id: T.nilable(String), cashtag: T.nilable(String) }
              )
            end
            def to_hash
            end
          end
        end

        class IdealPaymentMethod < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::IdealPaymentMethod,
                WhopSDK::Internal::AnyHash
              )
            end

          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          sig { returns(String) }
          attr_accessor :id

          # The time of the event in ISO 8601 UTC format with millisecond precision
          sig { returns(Time) }
          attr_accessor :created_at

          # The iDEAL-specific details for this payment method, including bank name and BIC.
          sig do
            returns(
              WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::IdealPaymentMethod::Ideal
            )
          end
          attr_reader :ideal

          sig do
            params(
              ideal:
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::IdealPaymentMethod::Ideal::OrHash
            ).void
          end
          attr_writer :ideal

          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
          attr_accessor :payment_method_type

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # A saved iDEAL payment method, including the customer's bank name and BIC code.
          sig do
            params(
              id: String,
              created_at: Time,
              ideal:
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::IdealPaymentMethod::Ideal::OrHash,
              payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Represents a unique identifier that is Base64 obfuscated. It is often used to
            # refetch an object or as key for a cache. The ID type appears in a JSON response
            # as a String; however, it is not intended to be human-readable. When expected as
            # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
            # input value will be accepted as an ID.
            id:,
            # The time of the event in ISO 8601 UTC format with millisecond precision
            created_at:,
            # The iDEAL-specific details for this payment method, including bank name and BIC.
            ideal:,
            # The type of payment instrument stored on file (e.g., card, us_bank_account,
            # cashapp, ideal, sepa_debit).
            payment_method_type:,
            # The typename of this object
            typename: :IdealPaymentMethod
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                ideal:
                  WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::IdealPaymentMethod::Ideal,
                payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
                typename: Symbol
              }
            )
          end
          def to_hash
          end

          class Ideal < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::IdealPaymentMethod::Ideal,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The name of the customer's bank used for the iDEAL transaction. Null if not
            # available.
            sig { returns(T.nilable(String)) }
            attr_accessor :bank

            # The Bank Identifier Code (BIC/SWIFT) of the customer's bank. Null if not
            # available.
            sig { returns(T.nilable(String)) }
            attr_accessor :bic

            # The iDEAL-specific details for this payment method, including bank name and BIC.
            sig do
              params(bank: T.nilable(String), bic: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # The name of the customer's bank used for the iDEAL transaction. Null if not
              # available.
              bank:,
              # The Bank Identifier Code (BIC/SWIFT) of the customer's bank. Null if not
              # available.
              bic:
            )
            end

            sig do
              override.returns(
                { bank: T.nilable(String), bic: T.nilable(String) }
              )
            end
            def to_hash
            end
          end
        end

        class SepaDebitPaymentMethod < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::SepaDebitPaymentMethod,
                WhopSDK::Internal::AnyHash
              )
            end

          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          sig { returns(String) }
          attr_accessor :id

          # The time of the event in ISO 8601 UTC format with millisecond precision
          sig { returns(Time) }
          attr_accessor :created_at

          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
          attr_accessor :payment_method_type

          # The SEPA Direct Debit-specific details for this payment method, including bank
          # code and last four IBAN digits.
          sig do
            returns(
              WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::SepaDebitPaymentMethod::SepaDebit
            )
          end
          attr_reader :sepa_debit

          sig do
            params(
              sepa_debit:
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::SepaDebitPaymentMethod::SepaDebit::OrHash
            ).void
          end
          attr_writer :sepa_debit

          # The typename of this object
          sig { returns(Symbol) }
          attr_accessor :typename

          # A saved SEPA Direct Debit payment method, including the bank code, country, and
          # last four IBAN digits.
          sig do
            params(
              id: String,
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
              sepa_debit:
                WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::SepaDebitPaymentMethod::SepaDebit::OrHash,
              typename: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Represents a unique identifier that is Base64 obfuscated. It is often used to
            # refetch an object or as key for a cache. The ID type appears in a JSON response
            # as a String; however, it is not intended to be human-readable. When expected as
            # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
            # input value will be accepted as an ID.
            id:,
            # The time of the event in ISO 8601 UTC format with millisecond precision
            created_at:,
            # The type of payment instrument stored on file (e.g., card, us_bank_account,
            # cashapp, ideal, sepa_debit).
            payment_method_type:,
            # The SEPA Direct Debit-specific details for this payment method, including bank
            # code and last four IBAN digits.
            sepa_debit:,
            # The typename of this object
            typename: :SepaDebitPaymentMethod
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
                sepa_debit:
                  WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::SepaDebitPaymentMethod::SepaDebit,
                typename: Symbol
              }
            )
          end
          def to_hash
          end

          class SepaDebit < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::SepaDebitPaymentMethod::SepaDebit,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The bank code of the financial institution associated with this SEPA account.
            # Null if not available.
            sig { returns(T.nilable(String)) }
            attr_accessor :bank_code

            # The branch code of the financial institution associated with this SEPA account.
            # Null if not available.
            sig { returns(T.nilable(String)) }
            attr_accessor :branch_code

            # The two-letter ISO country code where the bank account is located. Null if not
            # available.
            sig { returns(T.nilable(String)) }
            attr_accessor :country

            # The last four digits of the IBAN associated with this SEPA account. Null if not
            # available.
            sig { returns(T.nilable(String)) }
            attr_accessor :last4

            # The SEPA Direct Debit-specific details for this payment method, including bank
            # code and last four IBAN digits.
            sig do
              params(
                bank_code: T.nilable(String),
                branch_code: T.nilable(String),
                country: T.nilable(String),
                last4: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The bank code of the financial institution associated with this SEPA account.
              # Null if not available.
              bank_code:,
              # The branch code of the financial institution associated with this SEPA account.
              # Null if not available.
              branch_code:,
              # The two-letter ISO country code where the bank account is located. Null if not
              # available.
              country:,
              # The last four digits of the IBAN associated with this SEPA account. Null if not
              # available.
              last4:
            )
            end

            sig do
              override.returns(
                {
                  bank_code: T.nilable(String),
                  branch_code: T.nilable(String),
                  country: T.nilable(String),
                  last4: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignRetrieveResponse::PaymentMethod::Variants
            ]
          )
        end
        def self.variants
        end
      end

      # The platforms where an ad campaign can run.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdCampaignRetrieveResponse::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META =
          T.let(
            :meta,
            WhopSDK::Models::AdCampaignRetrieveResponse::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::Models::AdCampaignRetrieveResponse::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignRetrieveResponse::Platform::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AdCampaignRetrieveResponse::Product,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The URL slug used in the product's public link (e.g., 'my-product' in
        # whop.com/company/my-product).
        sig { returns(String) }
        attr_accessor :route

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # The access pass being promoted. Null for campaigns that don't target a specific
        # product.
        sig do
          params(id: String, route: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the product.
          id:,
          # The URL slug used in the product's public link (e.g., 'my-product' in
          # whop.com/company/my-product).
          route:,
          # The display name of the product shown to customers on the product page and in
          # search results.
          title:
        )
        end

        sig { override.returns({ id: String, route: String, title: String }) }
        def to_hash
        end
      end

      # Current status of the campaign (active, paused, or inactive)
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AdCampaignRetrieveResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
          )
        STALE =
          T.let(
            :stale,
            WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
          )
        PENDING_REFUND =
          T.let(
            :pending_refund,
            WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :payment_failed,
            WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
          )
        DRAFT =
          T.let(
            :draft,
            WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
          )
        FLAGGED =
          T.let(
            :flagged,
            WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::AdCampaignRetrieveResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
