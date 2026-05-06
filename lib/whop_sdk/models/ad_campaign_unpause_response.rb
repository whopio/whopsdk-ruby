# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#unpause
    class AdCampaignUnpauseResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the ad campaign.
      #
      #   @return [String]
      required :id, String

      # @!attribute available_budget
      #   Available budget in dollars, capped at daily budget minus today's spend for
      #   daily campaigns
      #
      #   @return [Float]
      required :available_budget, Float

      # @!attribute billing_ledger_account
      #   The ledger account being charged for platform balance billing (null if using
      #   card)
      #
      #   @return [WhopSDK::Models::AdCampaignUnpauseResponse::BillingLedgerAccount, nil]
      required :billing_ledger_account,
               -> { WhopSDK::Models::AdCampaignUnpauseResponse::BillingLedgerAccount },
               nil?: true

      # @!attribute clicks_count
      #   Number of clicks
      #
      #   @return [Integer]
      required :clicks_count, Integer

      # @!attribute config
      #   Meta campaign configuration (objective, budget, bidding, etc.). Null for
      #   non-Meta campaigns — use `tiktokConfig` for TikTok.
      #
      #   @return [WhopSDK::Models::AdCampaignUnpauseResponse::Config, nil]
      required :config, -> { WhopSDK::Models::AdCampaignUnpauseResponse::Config }, nil?: true

      # @!attribute created_at
      #   The datetime the ad campaign was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by_user
      #   The user who created the campaign
      #
      #   @return [WhopSDK::Models::AdCampaignUnpauseResponse::CreatedByUser]
      required :created_by_user, -> { WhopSDK::Models::AdCampaignUnpauseResponse::CreatedByUser }

      # @!attribute daily_budget
      #   Effective daily budget in dollars — sum of ad group budgets when set, otherwise
      #   campaign-level daily budget
      #
      #   @return [Float, nil]
      required :daily_budget, Float, nil?: true

      # @!attribute impressions_count
      #   Number of impressions (views)
      #
      #   @return [Integer]
      required :impressions_count, Integer

      # @!attribute paused_until
      #   If temporarily paused, the timestamp when the campaign will auto-resume
      #
      #   @return [Time, nil]
      required :paused_until, Time, nil?: true

      # @!attribute payment_method
      #   The payment method used for daily billing (null if using platform balance)
      #
      #   @return [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::BasePaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CardPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::UsBankAccountPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CashappPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::IdealPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::SepaDebitPaymentMethod, nil]
      required :payment_method, union: -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod }

      # @!attribute platform
      #   The platforms where an ad campaign can run.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignUnpauseResponse::Platform, nil]
      required :platform, enum: -> { WhopSDK::Models::AdCampaignUnpauseResponse::Platform }, nil?: true

      # @!attribute product
      #   The access pass being promoted. Null for campaigns that don't target a specific
      #   product.
      #
      #   @return [WhopSDK::Models::AdCampaignUnpauseResponse::Product, nil]
      required :product, -> { WhopSDK::Models::AdCampaignUnpauseResponse::Product }, nil?: true

      # @!attribute purchases_count
      #   Number of purchases
      #
      #   @return [Integer]
      required :purchases_count, Integer

      # @!attribute remaining_balance
      #   Remaining balance in dollars
      #
      #   @return [Float]
      required :remaining_balance, Float

      # @!attribute return_on_ad_spend
      #   Return on Ad Spend (ROAS) percentage - revenue generated divided by ad spend
      #
      #   @return [Float]
      required :return_on_ad_spend, Float

      # @!attribute revenue
      #   Total revenue generated from users who converted through this campaign
      #
      #   @return [Float]
      required :revenue, Float

      # @!attribute status
      #   Current status of the campaign (active, paused, or inactive)
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignUnpauseResponse::Status]
      required :status, enum: -> { WhopSDK::Models::AdCampaignUnpauseResponse::Status }

      # @!attribute target_country_codes
      #   Array of ISO3166 country codes for territory targeting
      #
      #   @return [Array<String>]
      required :target_country_codes, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute title
      #   The title of the ad campaign
      #
      #   @return [String]
      required :title, String

      # @!attribute todays_spend
      #   Amount spent today in dollars
      #
      #   @return [Float]
      required :todays_spend, Float

      # @!attribute total_credits
      #   Total credits added to the campaign in dollars
      #
      #   @return [Float]
      required :total_credits, Float

      # @!attribute total_spend
      #   Total amount spent on conversions in dollars
      #
      #   @return [Float]
      required :total_spend, Float

      # @!attribute updated_at
      #   The datetime the ad campaign was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, available_budget:, billing_ledger_account:, clicks_count:, config:, created_at:, created_by_user:, daily_budget:, impressions_count:, paused_until:, payment_method:, platform:, product:, purchases_count:, remaining_balance:, return_on_ad_spend:, revenue:, status:, target_country_codes:, title:, todays_spend:, total_credits:, total_spend:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignUnpauseResponse} for more details.
      #
      #   An advertising campaign running on an external platform or within Whop.
      #
      #   @param id [String] The unique identifier for the ad campaign.
      #
      #   @param available_budget [Float] Available budget in dollars, capped at daily budget minus today's spend for dail
      #
      #   @param billing_ledger_account [WhopSDK::Models::AdCampaignUnpauseResponse::BillingLedgerAccount, nil] The ledger account being charged for platform balance billing (null if using car
      #
      #   @param clicks_count [Integer] Number of clicks
      #
      #   @param config [WhopSDK::Models::AdCampaignUnpauseResponse::Config, nil] Meta campaign configuration (objective, budget, bidding, etc.). Null for non-Met
      #
      #   @param created_at [Time] The datetime the ad campaign was created.
      #
      #   @param created_by_user [WhopSDK::Models::AdCampaignUnpauseResponse::CreatedByUser] The user who created the campaign
      #
      #   @param daily_budget [Float, nil] Effective daily budget in dollars — sum of ad group budgets when set, otherwise
      #
      #   @param impressions_count [Integer] Number of impressions (views)
      #
      #   @param paused_until [Time, nil] If temporarily paused, the timestamp when the campaign will auto-resume
      #
      #   @param payment_method [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::BasePaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CardPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::UsBankAccountPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CashappPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::IdealPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::SepaDebitPaymentMethod, nil] The payment method used for daily billing (null if using platform balance)
      #
      #   @param platform [Symbol, WhopSDK::Models::AdCampaignUnpauseResponse::Platform, nil] The platforms where an ad campaign can run.
      #
      #   @param product [WhopSDK::Models::AdCampaignUnpauseResponse::Product, nil] The access pass being promoted. Null for campaigns that don't target a specific
      #
      #   @param purchases_count [Integer] Number of purchases
      #
      #   @param remaining_balance [Float] Remaining balance in dollars
      #
      #   @param return_on_ad_spend [Float] Return on Ad Spend (ROAS) percentage - revenue generated divided by ad spend
      #
      #   @param revenue [Float] Total revenue generated from users who converted through this campaign
      #
      #   @param status [Symbol, WhopSDK::Models::AdCampaignUnpauseResponse::Status] Current status of the campaign (active, paused, or inactive)
      #
      #   @param target_country_codes [Array<String>] Array of ISO3166 country codes for territory targeting
      #
      #   @param title [String] The title of the ad campaign
      #
      #   @param todays_spend [Float] Amount spent today in dollars
      #
      #   @param total_credits [Float] Total credits added to the campaign in dollars
      #
      #   @param total_spend [Float] Total amount spent on conversions in dollars
      #
      #   @param updated_at [Time] The datetime the ad campaign was last updated.

      # @see WhopSDK::Models::AdCampaignUnpauseResponse#billing_ledger_account
      class BillingLedgerAccount < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the ledger account.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The ledger account being charged for platform balance billing (null if using
        #   card)
        #
        #   @param id [String] The unique identifier for the ledger account.
      end

      # @see WhopSDK::Models::AdCampaignUnpauseResponse#config
      class Config < WhopSDK::Internal::Type::BaseModel
        # @!attribute bid_amount
        #   Bid cap amount in cents. Only used when bid_strategy is bid_cap.
        #
        #   @return [Integer, nil]
        required :bid_amount, Integer, nil?: true

        # @!attribute bid_strategy
        #   The bidding strategy used to optimize spend for this campaign.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignUnpauseResponse::Config::BidStrategy, nil]
        required :bid_strategy,
                 enum: -> { WhopSDK::Models::AdCampaignUnpauseResponse::Config::BidStrategy },
                 nil?: true

        # @!attribute budget_optimization
        #   Whether campaign budget optimization (CBO) is enabled, allowing the platform to
        #   distribute budget across ad groups.
        #
        #   @return [Boolean, nil]
        required :budget_optimization, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute end_time
        #   The scheduled end time of the campaign (ISO8601).
        #
        #   @return [String, nil]
        required :end_time, String, nil?: true

        # @!attribute objective
        #   The campaign objective that determines how Meta optimizes delivery.
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignUnpauseResponse::Config::Objective, nil]
        required :objective,
                 enum: -> { WhopSDK::Models::AdCampaignUnpauseResponse::Config::Objective },
                 nil?: true

        # @!attribute special_categories
        #   Special ad categories required by the platform (e.g., housing, employment,
        #   credit).
        #
        #   @return [Array<String>, nil]
        required :special_categories, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute start_time
        #   The scheduled start time of the campaign (ISO8601).
        #
        #   @return [String, nil]
        required :start_time, String, nil?: true

        # @!attribute status
        #   The campaign status as set by the advertiser (active or paused).
        #
        #   @return [Symbol, WhopSDK::Models::AdCampaignUnpauseResponse::Config::Status, nil]
        required :status, enum: -> { WhopSDK::Models::AdCampaignUnpauseResponse::Config::Status }, nil?: true

        # @!method initialize(bid_amount:, bid_strategy:, budget_optimization:, end_time:, objective:, special_categories:, start_time:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdCampaignUnpauseResponse::Config} for more details.
        #
        #   Meta campaign configuration (objective, budget, bidding, etc.). Null for
        #   non-Meta campaigns — use `tiktokConfig` for TikTok.
        #
        #   @param bid_amount [Integer, nil] Bid cap amount in cents. Only used when bid_strategy is bid_cap.
        #
        #   @param bid_strategy [Symbol, WhopSDK::Models::AdCampaignUnpauseResponse::Config::BidStrategy, nil] The bidding strategy used to optimize spend for this campaign.
        #
        #   @param budget_optimization [Boolean, nil] Whether campaign budget optimization (CBO) is enabled, allowing the platform to
        #
        #   @param end_time [String, nil] The scheduled end time of the campaign (ISO8601).
        #
        #   @param objective [Symbol, WhopSDK::Models::AdCampaignUnpauseResponse::Config::Objective, nil] The campaign objective that determines how Meta optimizes delivery.
        #
        #   @param special_categories [Array<String>, nil] Special ad categories required by the platform (e.g., housing, employment, credi
        #
        #   @param start_time [String, nil] The scheduled start time of the campaign (ISO8601).
        #
        #   @param status [Symbol, WhopSDK::Models::AdCampaignUnpauseResponse::Config::Status, nil] The campaign status as set by the advertiser (active or paused).

        # The bidding strategy used to optimize spend for this campaign.
        #
        # @see WhopSDK::Models::AdCampaignUnpauseResponse::Config#bid_strategy
        module BidStrategy
          extend WhopSDK::Internal::Type::Enum

          LOWEST_COST = :lowest_cost
          BID_CAP = :bid_cap
          COST_CAP = :cost_cap

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The campaign objective that determines how Meta optimizes delivery.
        #
        # @see WhopSDK::Models::AdCampaignUnpauseResponse::Config#objective
        module Objective
          extend WhopSDK::Internal::Type::Enum

          AWARENESS = :awareness
          TRAFFIC = :traffic
          ENGAGEMENT = :engagement
          LEADS = :leads
          SALES = :sales

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The campaign status as set by the advertiser (active or paused).
        #
        # @see WhopSDK::Models::AdCampaignUnpauseResponse::Config#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          ACTIVE = :active
          PAUSED = :paused

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::AdCampaignUnpauseResponse#created_by_user
      class CreatedByUser < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who created the campaign
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end

      # The payment method used for daily billing (null if using platform balance)
      #
      # @see WhopSDK::Models::AdCampaignUnpauseResponse#payment_method
      module PaymentMethod
        extend WhopSDK::Internal::Type::Union

        discriminator :typename

        # A saved payment method with no type-specific details available.
        variant :BasePaymentMethod,
                -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::BasePaymentMethod }

        # A saved card payment method, including brand, last four digits, and expiration details.
        variant :CardPaymentMethod,
                -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CardPaymentMethod }

        # A saved US bank account payment method, including bank name, last four digits, and account type.
        variant :UsBankAccountPaymentMethod,
                -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::UsBankAccountPaymentMethod }

        # A saved Cash App payment method, including the buyer's cashtag and unique identifier.
        variant :CashappPaymentMethod,
                -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CashappPaymentMethod }

        # A saved iDEAL payment method, including the customer's bank name and BIC code.
        variant :IdealPaymentMethod,
                -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::IdealPaymentMethod }

        # A saved SEPA Direct Debit payment method, including the bank code, country, and last four IBAN digits.
        variant :SepaDebitPaymentMethod,
                -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::SepaDebitPaymentMethod }

        class BasePaymentMethod < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Represents a unique identifier that is Base64 obfuscated. It is often used to
          #   refetch an object or as key for a cache. The ID type appears in a JSON response
          #   as a String; however, it is not intended to be human-readable. When expected as
          #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          #   input value will be accepted as an ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute payment_method_type
          #   The type of payment instrument stored on file (e.g., card, us_bank_account,
          #   cashapp, ideal, sepa_debit).
          #
          #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
          required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :BasePaymentMethod]
          required :typename, const: :BasePaymentMethod

          # @!method initialize(id:, created_at:, payment_method_type:, typename: :BasePaymentMethod)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::BasePaymentMethod}
          #   for more details.
          #
          #   A saved payment method with no type-specific details available.
          #
          #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
          #
          #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
          #
          #   @param typename [Symbol, :BasePaymentMethod] The typename of this object
        end

        class CardPaymentMethod < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Represents a unique identifier that is Base64 obfuscated. It is often used to
          #   refetch an object or as key for a cache. The ID type appears in a JSON response
          #   as a String; however, it is not intended to be human-readable. When expected as
          #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          #   input value will be accepted as an ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute card
          #   The card-specific details for this payment method, including brand, last four
          #   digits, and expiration.
          #
          #   @return [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CardPaymentMethod::Card]
          required :card, -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CardPaymentMethod::Card }

          # @!attribute created_at
          #   The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute payment_method_type
          #   The type of payment instrument stored on file (e.g., card, us_bank_account,
          #   cashapp, ideal, sepa_debit).
          #
          #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
          required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :CardPaymentMethod]
          required :typename, const: :CardPaymentMethod

          # @!method initialize(id:, card:, created_at:, payment_method_type:, typename: :CardPaymentMethod)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CardPaymentMethod}
          #   for more details.
          #
          #   A saved card payment method, including brand, last four digits, and expiration
          #   details.
          #
          #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
          #
          #   @param card [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CardPaymentMethod::Card] The card-specific details for this payment method, including brand, last four di
          #
          #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
          #
          #   @param typename [Symbol, :CardPaymentMethod] The typename of this object

          # @see WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CardPaymentMethod#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute brand
            #   Possible card brands that a payment token can have
            #
            #   @return [Symbol, WhopSDK::Models::CardBrands, nil]
            required :brand, enum: -> { WhopSDK::CardBrands }, nil?: true

            # @!attribute exp_month
            #   The two-digit expiration month of the card (1-12). Null if not available.
            #
            #   @return [Integer, nil]
            required :exp_month, Integer, nil?: true

            # @!attribute exp_year
            #   The two-digit expiration year of the card (e.g., 27 for 2027). Null if not
            #   available.
            #
            #   @return [Integer, nil]
            required :exp_year, Integer, nil?: true

            # @!attribute last4
            #   The last four digits of the card number. Null if not available.
            #
            #   @return [String, nil]
            required :last4, String, nil?: true

            # @!method initialize(brand:, exp_month:, exp_year:, last4:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CardPaymentMethod::Card}
            #   for more details.
            #
            #   The card-specific details for this payment method, including brand, last four
            #   digits, and expiration.
            #
            #   @param brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
            #
            #   @param exp_month [Integer, nil] The two-digit expiration month of the card (1-12). Null if not available.
            #
            #   @param exp_year [Integer, nil] The two-digit expiration year of the card (e.g., 27 for 2027). Null if not avail
            #
            #   @param last4 [String, nil] The last four digits of the card number. Null if not available.
          end
        end

        class UsBankAccountPaymentMethod < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Represents a unique identifier that is Base64 obfuscated. It is often used to
          #   refetch an object or as key for a cache. The ID type appears in a JSON response
          #   as a String; however, it is not intended to be human-readable. When expected as
          #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          #   input value will be accepted as an ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute payment_method_type
          #   The type of payment instrument stored on file (e.g., card, us_bank_account,
          #   cashapp, ideal, sepa_debit).
          #
          #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
          required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :UsBankAccountPaymentMethod]
          required :typename, const: :UsBankAccountPaymentMethod

          # @!attribute us_bank_account
          #   The bank account-specific details for this payment method, including bank name
          #   and last four digits.
          #
          #   @return [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::UsBankAccountPaymentMethod::UsBankAccount]
          required :us_bank_account,
                   -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::UsBankAccountPaymentMethod::UsBankAccount }

          # @!method initialize(id:, created_at:, payment_method_type:, us_bank_account:, typename: :UsBankAccountPaymentMethod)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::UsBankAccountPaymentMethod}
          #   for more details.
          #
          #   A saved US bank account payment method, including bank name, last four digits,
          #   and account type.
          #
          #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
          #
          #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
          #
          #   @param us_bank_account [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::UsBankAccountPaymentMethod::UsBankAccount] The bank account-specific details for this payment method, including bank name a
          #
          #   @param typename [Symbol, :UsBankAccountPaymentMethod] The typename of this object

          # @see WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::UsBankAccountPaymentMethod#us_bank_account
          class UsBankAccount < WhopSDK::Internal::Type::BaseModel
            # @!attribute account_type
            #   The type of bank account (e.g., checking, savings).
            #
            #   @return [String]
            required :account_type, String

            # @!attribute bank_name
            #   The name of the financial institution holding the account.
            #
            #   @return [String]
            required :bank_name, String

            # @!attribute last4
            #   The last four digits of the bank account number.
            #
            #   @return [String]
            required :last4, String

            # @!method initialize(account_type:, bank_name:, last4:)
            #   The bank account-specific details for this payment method, including bank name
            #   and last four digits.
            #
            #   @param account_type [String] The type of bank account (e.g., checking, savings).
            #
            #   @param bank_name [String] The name of the financial institution holding the account.
            #
            #   @param last4 [String] The last four digits of the bank account number.
          end
        end

        class CashappPaymentMethod < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Represents a unique identifier that is Base64 obfuscated. It is often used to
          #   refetch an object or as key for a cache. The ID type appears in a JSON response
          #   as a String; however, it is not intended to be human-readable. When expected as
          #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          #   input value will be accepted as an ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute cashapp
          #   The Cash App-specific details for this payment method, including cashtag and
          #   buyer ID.
          #
          #   @return [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CashappPaymentMethod::Cashapp]
          required :cashapp,
                   -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CashappPaymentMethod::Cashapp }

          # @!attribute created_at
          #   The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute payment_method_type
          #   The type of payment instrument stored on file (e.g., card, us_bank_account,
          #   cashapp, ideal, sepa_debit).
          #
          #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
          required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :CashappPaymentMethod]
          required :typename, const: :CashappPaymentMethod

          # @!method initialize(id:, cashapp:, created_at:, payment_method_type:, typename: :CashappPaymentMethod)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CashappPaymentMethod}
          #   for more details.
          #
          #   A saved Cash App payment method, including the buyer's cashtag and unique
          #   identifier.
          #
          #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
          #
          #   @param cashapp [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CashappPaymentMethod::Cashapp] The Cash App-specific details for this payment method, including cashtag and buy
          #
          #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
          #
          #   @param typename [Symbol, :CashappPaymentMethod] The typename of this object

          # @see WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CashappPaymentMethod#cashapp
          class Cashapp < WhopSDK::Internal::Type::BaseModel
            # @!attribute buyer_id
            #   The unique and immutable identifier assigned by Cash App to the buyer. Null if
            #   not available.
            #
            #   @return [String, nil]
            required :buyer_id, String, nil?: true

            # @!attribute cashtag
            #   The public cashtag handle of the buyer on Cash App. Null if not available.
            #
            #   @return [String, nil]
            required :cashtag, String, nil?: true

            # @!method initialize(buyer_id:, cashtag:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CashappPaymentMethod::Cashapp}
            #   for more details.
            #
            #   The Cash App-specific details for this payment method, including cashtag and
            #   buyer ID.
            #
            #   @param buyer_id [String, nil] The unique and immutable identifier assigned by Cash App to the buyer. Null if n
            #
            #   @param cashtag [String, nil] The public cashtag handle of the buyer on Cash App. Null if not available.
          end
        end

        class IdealPaymentMethod < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Represents a unique identifier that is Base64 obfuscated. It is often used to
          #   refetch an object or as key for a cache. The ID type appears in a JSON response
          #   as a String; however, it is not intended to be human-readable. When expected as
          #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          #   input value will be accepted as an ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute ideal
          #   The iDEAL-specific details for this payment method, including bank name and BIC.
          #
          #   @return [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::IdealPaymentMethod::Ideal]
          required :ideal,
                   -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::IdealPaymentMethod::Ideal }

          # @!attribute payment_method_type
          #   The type of payment instrument stored on file (e.g., card, us_bank_account,
          #   cashapp, ideal, sepa_debit).
          #
          #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
          required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :IdealPaymentMethod]
          required :typename, const: :IdealPaymentMethod

          # @!method initialize(id:, created_at:, ideal:, payment_method_type:, typename: :IdealPaymentMethod)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::IdealPaymentMethod}
          #   for more details.
          #
          #   A saved iDEAL payment method, including the customer's bank name and BIC code.
          #
          #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
          #
          #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @param ideal [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::IdealPaymentMethod::Ideal] The iDEAL-specific details for this payment method, including bank name and BIC.
          #
          #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
          #
          #   @param typename [Symbol, :IdealPaymentMethod] The typename of this object

          # @see WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::IdealPaymentMethod#ideal
          class Ideal < WhopSDK::Internal::Type::BaseModel
            # @!attribute bank
            #   The name of the customer's bank used for the iDEAL transaction. Null if not
            #   available.
            #
            #   @return [String, nil]
            required :bank, String, nil?: true

            # @!attribute bic
            #   The Bank Identifier Code (BIC/SWIFT) of the customer's bank. Null if not
            #   available.
            #
            #   @return [String, nil]
            required :bic, String, nil?: true

            # @!method initialize(bank:, bic:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::IdealPaymentMethod::Ideal}
            #   for more details.
            #
            #   The iDEAL-specific details for this payment method, including bank name and BIC.
            #
            #   @param bank [String, nil] The name of the customer's bank used for the iDEAL transaction. Null if not avai
            #
            #   @param bic [String, nil] The Bank Identifier Code (BIC/SWIFT) of the customer's bank. Null if not availab
          end
        end

        class SepaDebitPaymentMethod < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Represents a unique identifier that is Base64 obfuscated. It is often used to
          #   refetch an object or as key for a cache. The ID type appears in a JSON response
          #   as a String; however, it is not intended to be human-readable. When expected as
          #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          #   input value will be accepted as an ID.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute payment_method_type
          #   The type of payment instrument stored on file (e.g., card, us_bank_account,
          #   cashapp, ideal, sepa_debit).
          #
          #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
          required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

          # @!attribute sepa_debit
          #   The SEPA Direct Debit-specific details for this payment method, including bank
          #   code and last four IBAN digits.
          #
          #   @return [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::SepaDebitPaymentMethod::SepaDebit]
          required :sepa_debit,
                   -> { WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::SepaDebitPaymentMethod::SepaDebit }

          # @!attribute typename
          #   The typename of this object
          #
          #   @return [Symbol, :SepaDebitPaymentMethod]
          required :typename, const: :SepaDebitPaymentMethod

          # @!method initialize(id:, created_at:, payment_method_type:, sepa_debit:, typename: :SepaDebitPaymentMethod)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::SepaDebitPaymentMethod}
          #   for more details.
          #
          #   A saved SEPA Direct Debit payment method, including the bank code, country, and
          #   last four IBAN digits.
          #
          #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
          #
          #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
          #
          #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
          #
          #   @param sepa_debit [WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::SepaDebitPaymentMethod::SepaDebit] The SEPA Direct Debit-specific details for this payment method, including bank c
          #
          #   @param typename [Symbol, :SepaDebitPaymentMethod] The typename of this object

          # @see WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::SepaDebitPaymentMethod#sepa_debit
          class SepaDebit < WhopSDK::Internal::Type::BaseModel
            # @!attribute bank_code
            #   The bank code of the financial institution associated with this SEPA account.
            #   Null if not available.
            #
            #   @return [String, nil]
            required :bank_code, String, nil?: true

            # @!attribute branch_code
            #   The branch code of the financial institution associated with this SEPA account.
            #   Null if not available.
            #
            #   @return [String, nil]
            required :branch_code, String, nil?: true

            # @!attribute country
            #   The two-letter ISO country code where the bank account is located. Null if not
            #   available.
            #
            #   @return [String, nil]
            required :country, String, nil?: true

            # @!attribute last4
            #   The last four digits of the IBAN associated with this SEPA account. Null if not
            #   available.
            #
            #   @return [String, nil]
            required :last4, String, nil?: true

            # @!method initialize(bank_code:, branch_code:, country:, last4:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::SepaDebitPaymentMethod::SepaDebit}
            #   for more details.
            #
            #   The SEPA Direct Debit-specific details for this payment method, including bank
            #   code and last four IBAN digits.
            #
            #   @param bank_code [String, nil] The bank code of the financial institution associated with this SEPA account. Nu
            #
            #   @param branch_code [String, nil] The branch code of the financial institution associated with this SEPA account.
            #
            #   @param country [String, nil] The two-letter ISO country code where the bank account is located. Null if not a
            #
            #   @param last4 [String, nil] The last four digits of the IBAN associated with this SEPA account. Null if not
          end
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::BasePaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CardPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::UsBankAccountPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::CashappPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::IdealPaymentMethod, WhopSDK::Models::AdCampaignUnpauseResponse::PaymentMethod::SepaDebitPaymentMethod)]
      end

      # The platforms where an ad campaign can run.
      #
      # @see WhopSDK::Models::AdCampaignUnpauseResponse#platform
      module Platform
        extend WhopSDK::Internal::Type::Enum

        META = :meta
        TIKTOK = :tiktok

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::AdCampaignUnpauseResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The URL slug used in the product's public link (e.g., 'my-product' in
        #   whop.com/company/my-product).
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdCampaignUnpauseResponse::Product} for more details.
        #
        #   The access pass being promoted. Null for campaigns that don't target a specific
        #   product.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param route [String] The URL slug used in the product's public link (e.g., 'my-product' in whop.com/c
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end

      # Current status of the campaign (active, paused, or inactive)
      #
      # @see WhopSDK::Models::AdCampaignUnpauseResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused
        INACTIVE = :inactive
        STALE = :stale
        PENDING_REFUND = :pending_refund
        PAYMENT_FAILED = :payment_failed
        DRAFT = :draft
        IN_REVIEW = :in_review
        FLAGGED = :flagged
        IMPORTING = :importing

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
