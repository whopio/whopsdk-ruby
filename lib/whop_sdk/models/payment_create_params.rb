# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#create
    class PaymentCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The account to charge for, prefixed `biz_`.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute capture
      #   Whether to capture a card payment immediately. Defaults to true. Pass false to
      #   place an authorization hold that must be captured in full within five days via
      #   the capture endpoint.
      #
      #   @return [Boolean, nil]
      optional :capture, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute confirmation_token
      #   A confirmation token describing a payment method the buyer just supplied.
      #   Provide this instead of `member_id` and `payment_method_id`; the buyer is
      #   resolved from the token's billing email, or from `email`. The buyer may still
      #   have a step to complete — poll the payment's status for what to do next.
      #
      #   @return [String, nil]
      optional :confirmation_token, String, nil?: true

      # @!attribute email
      #   Overrides the buyer email carried on the confirmation token, resolving or
      #   creating the user the payment belongs to. Ignored unless `confirmation_token` is
      #   provided, and when the token was created by a signed-in buyer.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute member_id
      #   The member to charge, prefixed `mber_`. Required with `payment_method_id` unless
      #   `confirmation_token` is provided.
      #
      #   @return [String, nil]
      optional :member_id, String, nil?: true

      # @!attribute metadata
      #   Custom metadata to attach to the payment.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[String], nil?: true

      # @!attribute payment_method_id
      #   The stored payment method to charge, prefixed `payt_`. It must belong to the
      #   member. Required unless `confirmation_token` is provided.
      #
      #   @return [String, nil]
      optional :payment_method_id, String, nil?: true

      # @!attribute plan
      #   Find or create a plan for this payment. Mutually exclusive with `plan_id`.
      #   Creating a plan requires plan:create; creating or updating a product requires
      #   the corresponding product permission.
      #
      #   @return [WhopSDK::Models::PaymentCreateParams::Plan, nil]
      optional :plan, -> { WhopSDK::PaymentCreateParams::Plan }

      # @!attribute plan_id
      #   The plan to charge for, prefixed `plan_`. It must belong to the account.
      #   Mutually exclusive with `plan`.
      #
      #   @return [String, nil]
      optional :plan_id, String

      # @!attribute promo_code_id
      #   An active promo code to apply, prefixed `promo_`. It must belong to the account
      #   and be valid for the plan.
      #
      #   @return [String, nil]
      optional :promo_code_id, String, nil?: true

      # @!attribute return_url
      #   Where the buyer continues after completing an off-site step. An absolute https
      #   URL without credentials, at most 2,048 characters. Ignored unless
      #   `confirmation_token` is provided.
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!attribute statement_descriptor
      #   Overrides the text on the buyer's card statement for this payment only. Takes
      #   precedence over the product's and account's custom descriptors, and changes
      #   neither. Must start with `WHOP*`, be 5-22 characters, contain at least one
      #   letter, and use only Latin letters, numbers, spaces, underscores, hyphens, or
      #   asterisks.
      #
      #   @return [String, nil]
      optional :statement_descriptor, String, nil?: true

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(account_id:, capture: nil, confirmation_token: nil, email: nil, member_id: nil, metadata: nil, payment_method_id: nil, plan: nil, plan_id: nil, promo_code_id: nil, return_url: nil, statement_descriptor: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentCreateParams} for more details.
      #
      #   @param account_id [String] The account to charge for, prefixed `biz_`.
      #
      #   @param capture [Boolean, nil] Whether to capture a card payment immediately. Defaults to true. Pass false to p
      #
      #   @param confirmation_token [String, nil] A confirmation token describing a payment method the buyer just supplied. Provid
      #
      #   @param email [String, nil] Overrides the buyer email carried on the confirmation token, resolving or creati
      #
      #   @param member_id [String, nil] The member to charge, prefixed `mber_`. Required with `payment_method_id` unless
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Custom metadata to attach to the payment.
      #
      #   @param payment_method_id [String, nil] The stored payment method to charge, prefixed `payt_`. It must belong to the mem
      #
      #   @param plan [WhopSDK::Models::PaymentCreateParams::Plan] Find or create a plan for this payment. Mutually exclusive with `plan_id`. Creat
      #
      #   @param plan_id [String] The plan to charge for, prefixed `plan_`. It must belong to the account. Mutuall
      #
      #   @param promo_code_id [String, nil] An active promo code to apply, prefixed `promo_`. It must belong to the account
      #
      #   @param return_url [String, nil] Where the buyer continues after completing an off-site step. An absolute https U
      #
      #   @param statement_descriptor [String, nil] Overrides the text on the buyer's card statement for this payment only. Takes pr
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute currency
        #   Currency code for the plan prices.
        #
        #   @return [Symbol, WhopSDK::Models::PaymentCreateParams::Plan::Currency]
        required :currency, enum: -> { WhopSDK::PaymentCreateParams::Plan::Currency }

        # @!attribute application_fee_amount
        #   Application fee collected by the platform in the plan currency (5.00 means $5.00
        #   for USD). Must be positive and below the initial price for one-time plans or
        #   renewal price for recurring plans. Paid to the parent account alongside other
        #   processing fees; collection is capped to remaining proceeds. Applies to
        #   subsequent payments on recurring plans. Only valid for connected accounts with a
        #   parent account.
        #
        #   @return [Float, nil]
        optional :application_fee_amount, Float, nil?: true

        # @!attribute billing_period
        #   Recurring billing interval in days.
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute description
        #   Plan description.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute expiration_days
        #   Days until access expires.
        #
        #   @return [Integer, nil]
        optional :expiration_days, Integer, nil?: true

        # @!attribute force_create_new_plan
        #   Create a new plan instead of reusing a matching plan.
        #
        #   @return [Boolean, nil]
        optional :force_create_new_plan, WhopSDK::Internal::Type::Boolean, nil?: true

        # @!attribute initial_price
        #   Additional amount charged on the first purchase, in the plan currency. For
        #   recurring plans without a trial, the first charge includes this amount plus
        #   renewal_price.
        #
        #   @return [Float, nil]
        optional :initial_price, Float, nil?: true

        # @!attribute internal_notes
        #   Internal notes for the account.
        #
        #   @return [String, nil]
        optional :internal_notes, String, nil?: true

        # @!attribute plan_type
        #   Billing model for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::PaymentCreateParams::Plan::PlanType, nil]
        optional :plan_type, enum: -> { WhopSDK::PaymentCreateParams::Plan::PlanType }, nil?: true

        # @!attribute product
        #   Find or create a product by external identifier. Mutually exclusive with
        #   product_id.
        #
        #   @return [WhopSDK::Models::PaymentCreateParams::Plan::Product, nil]
        optional :product, -> { WhopSDK::PaymentCreateParams::Plan::Product }, nil?: true

        # @!attribute product_id
        #   Existing product ID belonging to the account, prefixed `prod_`. Mutually
        #   exclusive with `product`.
        #
        #   @return [String, nil]
        optional :product_id, String, nil?: true

        # @!attribute renewal_price
        #   Recurring price in the plan currency.
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

        # @!attribute title
        #   Plan title.
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!attribute trial_period_days
        #   Free trial days before renewal.
        #
        #   @return [Integer, nil]
        optional :trial_period_days, Integer, nil?: true

        # @!attribute visibility
        #   Whether the plan is visible to customers.
        #
        #   @return [Symbol, WhopSDK::Models::PaymentCreateParams::Plan::Visibility, nil]
        optional :visibility, enum: -> { WhopSDK::PaymentCreateParams::Plan::Visibility }, nil?: true

        # @!method initialize(currency:, application_fee_amount: nil, billing_period: nil, description: nil, expiration_days: nil, force_create_new_plan: nil, initial_price: nil, internal_notes: nil, plan_type: nil, product: nil, product_id: nil, renewal_price: nil, title: nil, trial_period_days: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PaymentCreateParams::Plan} for more details.
        #
        #   Find or create a plan for this payment. Mutually exclusive with `plan_id`.
        #   Creating a plan requires plan:create; creating or updating a product requires
        #   the corresponding product permission.
        #
        #   @param currency [Symbol, WhopSDK::Models::PaymentCreateParams::Plan::Currency] Currency code for the plan prices.
        #
        #   @param application_fee_amount [Float, nil] Application fee collected by the platform in the plan currency (5.00 means $5.00
        #
        #   @param billing_period [Integer, nil] Recurring billing interval in days.
        #
        #   @param description [String, nil] Plan description.
        #
        #   @param expiration_days [Integer, nil] Days until access expires.
        #
        #   @param force_create_new_plan [Boolean, nil] Create a new plan instead of reusing a matching plan.
        #
        #   @param initial_price [Float, nil] Additional amount charged on the first purchase, in the plan currency. For recur
        #
        #   @param internal_notes [String, nil] Internal notes for the account.
        #
        #   @param plan_type [Symbol, WhopSDK::Models::PaymentCreateParams::Plan::PlanType, nil] Billing model for the plan.
        #
        #   @param product [WhopSDK::Models::PaymentCreateParams::Plan::Product, nil] Find or create a product by external identifier. Mutually exclusive with product
        #
        #   @param product_id [String, nil] Existing product ID belonging to the account, prefixed `prod_`. Mutually exclusi
        #
        #   @param renewal_price [Float, nil] Recurring price in the plan currency.
        #
        #   @param title [String, nil] Plan title.
        #
        #   @param trial_period_days [Integer, nil] Free trial days before renewal.
        #
        #   @param visibility [Symbol, WhopSDK::Models::PaymentCreateParams::Plan::Visibility, nil] Whether the plan is visible to customers.

        # Currency code for the plan prices.
        #
        # @see WhopSDK::Models::PaymentCreateParams::Plan#currency
        module Currency
          extend WhopSDK::Internal::Type::Enum

          USD = :usd
          SGD = :sgd
          INR = :inr
          AUD = :aud
          BRL = :brl
          CAD = :cad
          DKK = :dkk
          EUR = :eur
          NOK = :nok
          GBP = :gbp
          SEK = :sek
          CHF = :chf
          HKD = :hkd
          HUF = :huf
          JPY = :jpy
          MXN = :mxn
          MYR = :myr
          PLN = :pln
          CZK = :czk
          NZD = :nzd
          AED = :aed
          ETH = :eth
          APE = :ape
          COP = :cop
          RON = :ron
          THB = :thb
          BGN = :bgn
          IDR = :idr
          DOP = :dop
          PHP = :php
          TRY = :try
          KRW = :krw
          TWD = :twd
          VND = :vnd
          PKR = :pkr
          CLP = :clp
          UYU = :uyu
          ARS = :ars
          ZAR = :zar
          DZD = :dzd
          TND = :tnd
          MAD = :mad
          KES = :kes
          KWD = :kwd
          JOD = :jod
          ALL = :all
          XCD = :xcd
          AMD = :amd
          BSD = :bsd
          BHD = :bhd
          BOB = :bob
          BAM = :bam
          KHR = :khr
          CRC = :crc
          XOF = :xof
          EGP = :egp
          ETB = :etb
          GMD = :gmd
          GHS = :ghs
          GTQ = :gtq
          GYD = :gyd
          ILS = :ils
          JMD = :jmd
          MOP = :mop
          MGA = :mga
          MUR = :mur
          MDL = :mdl
          MNT = :mnt
          NAD = :nad
          NGN = :ngn
          MKD = :mkd
          OMR = :omr
          PYG = :pyg
          PEN = :pen
          QAR = :qar
          RWF = :rwf
          SAR = :sar
          RSD = :rsd
          LKR = :lkr
          TZS = :tzs
          TTD = :ttd
          UZS = :uzs
          RUB = :rub
          BTC = :btc
          CNY = :cny
          USDT = :usdt
          KZT = :kzt
          AWG = :awg
          WHOP_USD = :whop_usd
          XAU = :xau

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Billing model for the plan.
        #
        # @see WhopSDK::Models::PaymentCreateParams::Plan#plan_type
        module PlanType
          extend WhopSDK::Internal::Type::Enum

          RENEWAL = :renewal
          ONE_TIME = :one_time

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::PaymentCreateParams::Plan#product
        class Product < WhopSDK::Internal::Type::BaseModel
          # @!attribute external_identifier
          #   Your unique identifier for the product.
          #
          #   @return [String]
          required :external_identifier, String

          # @!attribute title
          #   Product title.
          #
          #   @return [String]
          required :title, String

          # @!attribute collect_shipping_address
          #   Whether to collect a shipping address at checkout.
          #
          #   @return [Boolean, nil]
          optional :collect_shipping_address, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute custom_statement_descriptor
          #   Custom card statement descriptor for the product, starting with WHOP\*.
          #
          #   @return [String, nil]
          optional :custom_statement_descriptor, String, nil?: true

          # @!attribute description
          #   Product description.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute global_affiliate_percentage
          #   Percentage of revenue paid to global affiliates.
          #
          #   @return [Float, nil]
          optional :global_affiliate_percentage, Float, nil?: true

          # @!attribute global_affiliate_status
          #   Global affiliate program status.
          #
          #   @return [Symbol, WhopSDK::Models::PaymentCreateParams::Plan::Product::GlobalAffiliateStatus, nil]
          optional :global_affiliate_status,
                   enum: -> { WhopSDK::PaymentCreateParams::Plan::Product::GlobalAffiliateStatus },
                   nil?: true

          # @!attribute headline
          #   Product headline.
          #
          #   @return [String, nil]
          optional :headline, String, nil?: true

          # @!attribute product_tax_code_id
          #   Product tax code identifier.
          #
          #   @return [String, nil]
          optional :product_tax_code_id, String, nil?: true

          # @!attribute redirect_purchase_url
          #   Where to redirect the buyer after purchase.
          #
          #   @return [String, nil]
          optional :redirect_purchase_url, String, nil?: true

          # @!attribute route
          #   Product route.
          #
          #   @return [String, nil]
          optional :route, String, nil?: true

          # @!attribute visibility
          #   Product visibility. Defaults to hidden.
          #
          #   @return [Symbol, WhopSDK::Models::PaymentCreateParams::Plan::Product::Visibility, nil]
          optional :visibility, enum: -> { WhopSDK::PaymentCreateParams::Plan::Product::Visibility }

          # @!method initialize(external_identifier:, title:, collect_shipping_address: nil, custom_statement_descriptor: nil, description: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, visibility: nil)
          #   Find or create a product by external identifier. Mutually exclusive with
          #   product_id.
          #
          #   @param external_identifier [String] Your unique identifier for the product.
          #
          #   @param title [String] Product title.
          #
          #   @param collect_shipping_address [Boolean, nil] Whether to collect a shipping address at checkout.
          #
          #   @param custom_statement_descriptor [String, nil] Custom card statement descriptor for the product, starting with WHOP\*.
          #
          #   @param description [String, nil] Product description.
          #
          #   @param global_affiliate_percentage [Float, nil] Percentage of revenue paid to global affiliates.
          #
          #   @param global_affiliate_status [Symbol, WhopSDK::Models::PaymentCreateParams::Plan::Product::GlobalAffiliateStatus, nil] Global affiliate program status.
          #
          #   @param headline [String, nil] Product headline.
          #
          #   @param product_tax_code_id [String, nil] Product tax code identifier.
          #
          #   @param redirect_purchase_url [String, nil] Where to redirect the buyer after purchase.
          #
          #   @param route [String, nil] Product route.
          #
          #   @param visibility [Symbol, WhopSDK::Models::PaymentCreateParams::Plan::Product::Visibility] Product visibility. Defaults to hidden.

          # Global affiliate program status.
          #
          # @see WhopSDK::Models::PaymentCreateParams::Plan::Product#global_affiliate_status
          module GlobalAffiliateStatus
            extend WhopSDK::Internal::Type::Enum

            ENABLED = :enabled
            DISABLED = :disabled

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Product visibility. Defaults to hidden.
          #
          # @see WhopSDK::Models::PaymentCreateParams::Plan::Product#visibility
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            VISIBLE = :visible
            HIDDEN = :hidden
            ARCHIVED = :archived
            QUICK_LINK = :quick_link

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Whether the plan is visible to customers.
        #
        # @see WhopSDK::Models::PaymentCreateParams::Plan#visibility
        module Visibility
          extend WhopSDK::Internal::Type::Enum

          VISIBLE = :visible
          HIDDEN = :hidden
          ARCHIVED = :archived
          QUICK_LINK = :quick_link

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
