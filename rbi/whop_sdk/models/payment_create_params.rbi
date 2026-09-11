# typed: strong

module WhopSDK
  module Models
    class PaymentCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PaymentCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The account to charge for, prefixed `biz_`.
      sig { returns(String) }
      attr_accessor :account_id

      # Whether to capture a card payment immediately. Defaults to true. Pass false to
      # place an authorization hold that must be captured in full within five days via
      # the capture endpoint.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :capture

      # A confirmation token describing a payment method the buyer just supplied.
      # Provide this instead of `member_id` and `payment_method_id`; the buyer is
      # resolved from the token's billing email, or from `email`. The buyer may still
      # have a step to complete — poll the payment's status for what to do next.
      sig { returns(T.nilable(String)) }
      attr_accessor :confirmation_token

      # Overrides the buyer email carried on the confirmation token, resolving or
      # creating the user the payment belongs to. Ignored unless `confirmation_token` is
      # provided, and when the token was created by a signed-in buyer.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The member to charge, prefixed `mber_`. Required with `payment_method_id` unless
      # `confirmation_token` is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      # Custom metadata to attach to the payment.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # The stored payment method to charge, prefixed `payt_`. It must belong to the
      # member. Required unless `confirmation_token` is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # Find or create a plan for this payment. Mutually exclusive with `plan_id`.
      # Creating a plan requires plan:create; creating or updating a product requires
      # the corresponding product permission.
      sig { returns(T.nilable(WhopSDK::PaymentCreateParams::Plan)) }
      attr_reader :plan

      sig { params(plan: WhopSDK::PaymentCreateParams::Plan::OrHash).void }
      attr_writer :plan

      # The plan to charge for, prefixed `plan_`. It must belong to the account.
      # Mutually exclusive with `plan`.
      sig { returns(T.nilable(String)) }
      attr_reader :plan_id

      sig { params(plan_id: String).void }
      attr_writer :plan_id

      # An active promo code to apply, prefixed `promo_`. It must belong to the account
      # and be valid for the plan.
      sig { returns(T.nilable(String)) }
      attr_accessor :promo_code_id

      # Where the buyer continues after completing an off-site step. An absolute https
      # URL without credentials, at most 2,048 characters. Ignored unless
      # `confirmation_token` is provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url

      # Overrides the text on the buyer's card statement for this payment only. Takes
      # precedence over the product's and account's custom descriptors, and changes
      # neither. Must start with `WHOP*`, be 5-22 characters, contain at least one
      # letter, and use only Latin letters, numbers, spaces, underscores, hyphens, or
      # asterisks.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          account_id: String,
          capture: T.nilable(T::Boolean),
          confirmation_token: T.nilable(String),
          email: T.nilable(String),
          member_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          payment_method_id: T.nilable(String),
          plan: WhopSDK::PaymentCreateParams::Plan::OrHash,
          plan_id: String,
          promo_code_id: T.nilable(String),
          return_url: T.nilable(String),
          statement_descriptor: T.nilable(String),
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account to charge for, prefixed `biz_`.
        account_id:,
        # Whether to capture a card payment immediately. Defaults to true. Pass false to
        # place an authorization hold that must be captured in full within five days via
        # the capture endpoint.
        capture: nil,
        # A confirmation token describing a payment method the buyer just supplied.
        # Provide this instead of `member_id` and `payment_method_id`; the buyer is
        # resolved from the token's billing email, or from `email`. The buyer may still
        # have a step to complete — poll the payment's status for what to do next.
        confirmation_token: nil,
        # Overrides the buyer email carried on the confirmation token, resolving or
        # creating the user the payment belongs to. Ignored unless `confirmation_token` is
        # provided, and when the token was created by a signed-in buyer.
        email: nil,
        # The member to charge, prefixed `mber_`. Required with `payment_method_id` unless
        # `confirmation_token` is provided.
        member_id: nil,
        # Custom metadata to attach to the payment.
        metadata: nil,
        # The stored payment method to charge, prefixed `payt_`. It must belong to the
        # member. Required unless `confirmation_token` is provided.
        payment_method_id: nil,
        # Find or create a plan for this payment. Mutually exclusive with `plan_id`.
        # Creating a plan requires plan:create; creating or updating a product requires
        # the corresponding product permission.
        plan: nil,
        # The plan to charge for, prefixed `plan_`. It must belong to the account.
        # Mutually exclusive with `plan`.
        plan_id: nil,
        # An active promo code to apply, prefixed `promo_`. It must belong to the account
        # and be valid for the plan.
        promo_code_id: nil,
        # Where the buyer continues after completing an off-site step. An absolute https
        # URL without credentials, at most 2,048 characters. Ignored unless
        # `confirmation_token` is provided.
        return_url: nil,
        # Overrides the text on the buyer's card statement for this payment only. Takes
        # precedence over the product's and account's custom descriptors, and changes
        # neither. Must start with `WHOP*`, be 5-22 characters, contain at least one
        # letter, and use only Latin letters, numbers, spaces, underscores, hyphens, or
        # asterisks.
        statement_descriptor: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            capture: T.nilable(T::Boolean),
            confirmation_token: T.nilable(String),
            email: T.nilable(String),
            member_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            payment_method_id: T.nilable(String),
            plan: WhopSDK::PaymentCreateParams::Plan,
            plan_id: String,
            promo_code_id: T.nilable(String),
            return_url: T.nilable(String),
            statement_descriptor: T.nilable(String),
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PaymentCreateParams::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # Currency code for the plan prices.
        sig { returns(WhopSDK::PaymentCreateParams::Plan::Currency::OrSymbol) }
        attr_accessor :currency

        # Application fee collected by the platform in the plan currency (5.00 means $5.00
        # for USD). Must be positive and below the initial price for one-time plans or
        # renewal price for recurring plans. Paid to the parent account alongside other
        # processing fees; collection is capped to remaining proceeds. Applies to
        # subsequent payments on recurring plans. Only valid for connected accounts with a
        # parent account.
        sig { returns(T.nilable(Float)) }
        attr_accessor :application_fee_amount

        # Recurring billing interval in days.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # Plan description.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Days until access expires.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # Create a new plan instead of reusing a matching plan.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :force_create_new_plan

        # Additional amount charged on the first purchase, in the plan currency. For
        # recurring plans without a trial, the first charge includes this amount plus
        # renewal_price.
        sig { returns(T.nilable(Float)) }
        attr_accessor :initial_price

        # Internal notes for the account.
        sig { returns(T.nilable(String)) }
        attr_accessor :internal_notes

        # Billing model for the plan.
        sig do
          returns(
            T.nilable(WhopSDK::PaymentCreateParams::Plan::PlanType::OrSymbol)
          )
        end
        attr_accessor :plan_type

        # Find or create a product by external identifier. Mutually exclusive with
        # product_id.
        sig { returns(T.nilable(WhopSDK::PaymentCreateParams::Plan::Product)) }
        attr_reader :product

        sig do
          params(
            product:
              T.nilable(WhopSDK::PaymentCreateParams::Plan::Product::OrHash)
          ).void
        end
        attr_writer :product

        # Existing product ID belonging to the account, prefixed `prod_`. Mutually
        # exclusive with `product`.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_id

        # Recurring price in the plan currency.
        sig { returns(T.nilable(Float)) }
        attr_accessor :renewal_price

        # Plan title.
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # Free trial days before renewal.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Whether the plan is visible to customers.
        sig do
          returns(
            T.nilable(WhopSDK::PaymentCreateParams::Plan::Visibility::OrSymbol)
          )
        end
        attr_accessor :visibility

        # Find or create a plan for this payment. Mutually exclusive with `plan_id`.
        # Creating a plan requires plan:create; creating or updating a product requires
        # the corresponding product permission.
        sig do
          params(
            currency: WhopSDK::PaymentCreateParams::Plan::Currency::OrSymbol,
            application_fee_amount: T.nilable(Float),
            billing_period: T.nilable(Integer),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            force_create_new_plan: T.nilable(T::Boolean),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            plan_type:
              T.nilable(WhopSDK::PaymentCreateParams::Plan::PlanType::OrSymbol),
            product:
              T.nilable(WhopSDK::PaymentCreateParams::Plan::Product::OrHash),
            product_id: T.nilable(String),
            renewal_price: T.nilable(Float),
            title: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            visibility:
              T.nilable(
                WhopSDK::PaymentCreateParams::Plan::Visibility::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Currency code for the plan prices.
          currency:,
          # Application fee collected by the platform in the plan currency (5.00 means $5.00
          # for USD). Must be positive and below the initial price for one-time plans or
          # renewal price for recurring plans. Paid to the parent account alongside other
          # processing fees; collection is capped to remaining proceeds. Applies to
          # subsequent payments on recurring plans. Only valid for connected accounts with a
          # parent account.
          application_fee_amount: nil,
          # Recurring billing interval in days.
          billing_period: nil,
          # Plan description.
          description: nil,
          # Days until access expires.
          expiration_days: nil,
          # Create a new plan instead of reusing a matching plan.
          force_create_new_plan: nil,
          # Additional amount charged on the first purchase, in the plan currency. For
          # recurring plans without a trial, the first charge includes this amount plus
          # renewal_price.
          initial_price: nil,
          # Internal notes for the account.
          internal_notes: nil,
          # Billing model for the plan.
          plan_type: nil,
          # Find or create a product by external identifier. Mutually exclusive with
          # product_id.
          product: nil,
          # Existing product ID belonging to the account, prefixed `prod_`. Mutually
          # exclusive with `product`.
          product_id: nil,
          # Recurring price in the plan currency.
          renewal_price: nil,
          # Plan title.
          title: nil,
          # Free trial days before renewal.
          trial_period_days: nil,
          # Whether the plan is visible to customers.
          visibility: nil
        )
        end

        sig do
          override.returns(
            {
              currency: WhopSDK::PaymentCreateParams::Plan::Currency::OrSymbol,
              application_fee_amount: T.nilable(Float),
              billing_period: T.nilable(Integer),
              description: T.nilable(String),
              expiration_days: T.nilable(Integer),
              force_create_new_plan: T.nilable(T::Boolean),
              initial_price: T.nilable(Float),
              internal_notes: T.nilable(String),
              plan_type:
                T.nilable(
                  WhopSDK::PaymentCreateParams::Plan::PlanType::OrSymbol
                ),
              product: T.nilable(WhopSDK::PaymentCreateParams::Plan::Product),
              product_id: T.nilable(String),
              renewal_price: T.nilable(Float),
              title: T.nilable(String),
              trial_period_days: T.nilable(Integer),
              visibility:
                T.nilable(
                  WhopSDK::PaymentCreateParams::Plan::Visibility::OrSymbol
                )
            }
          )
        end
        def to_hash
        end

        # Currency code for the plan prices.
        module Currency
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::PaymentCreateParams::Plan::Currency)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USD =
            T.let(
              :usd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          SGD =
            T.let(
              :sgd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          INR =
            T.let(
              :inr,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          AUD =
            T.let(
              :aud,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          BRL =
            T.let(
              :brl,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          CAD =
            T.let(
              :cad,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          DKK =
            T.let(
              :dkk,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          EUR =
            T.let(
              :eur,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          NOK =
            T.let(
              :nok,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          GBP =
            T.let(
              :gbp,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          SEK =
            T.let(
              :sek,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          CHF =
            T.let(
              :chf,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          HKD =
            T.let(
              :hkd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          HUF =
            T.let(
              :huf,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          JPY =
            T.let(
              :jpy,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          MXN =
            T.let(
              :mxn,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          MYR =
            T.let(
              :myr,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          PLN =
            T.let(
              :pln,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          CZK =
            T.let(
              :czk,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          NZD =
            T.let(
              :nzd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          AED =
            T.let(
              :aed,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          ETH =
            T.let(
              :eth,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          APE =
            T.let(
              :ape,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          COP =
            T.let(
              :cop,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          RON =
            T.let(
              :ron,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          THB =
            T.let(
              :thb,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          BGN =
            T.let(
              :bgn,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          IDR =
            T.let(
              :idr,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          DOP =
            T.let(
              :dop,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          PHP =
            T.let(
              :php,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          TRY =
            T.let(
              :try,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          KRW =
            T.let(
              :krw,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          TWD =
            T.let(
              :twd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          VND =
            T.let(
              :vnd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          PKR =
            T.let(
              :pkr,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          CLP =
            T.let(
              :clp,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          UYU =
            T.let(
              :uyu,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          ARS =
            T.let(
              :ars,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          ZAR =
            T.let(
              :zar,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          DZD =
            T.let(
              :dzd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          TND =
            T.let(
              :tnd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          MAD =
            T.let(
              :mad,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          KES =
            T.let(
              :kes,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          KWD =
            T.let(
              :kwd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          JOD =
            T.let(
              :jod,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          ALL =
            T.let(
              :all,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          XCD =
            T.let(
              :xcd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          AMD =
            T.let(
              :amd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          BSD =
            T.let(
              :bsd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          BHD =
            T.let(
              :bhd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          BOB =
            T.let(
              :bob,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          BAM =
            T.let(
              :bam,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          KHR =
            T.let(
              :khr,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          CRC =
            T.let(
              :crc,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          XOF =
            T.let(
              :xof,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          EGP =
            T.let(
              :egp,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          ETB =
            T.let(
              :etb,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          GMD =
            T.let(
              :gmd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          GHS =
            T.let(
              :ghs,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          GTQ =
            T.let(
              :gtq,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          GYD =
            T.let(
              :gyd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          ILS =
            T.let(
              :ils,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          JMD =
            T.let(
              :jmd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          MOP =
            T.let(
              :mop,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          MGA =
            T.let(
              :mga,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          MUR =
            T.let(
              :mur,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          MDL =
            T.let(
              :mdl,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          MNT =
            T.let(
              :mnt,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          NAD =
            T.let(
              :nad,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          NGN =
            T.let(
              :ngn,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          MKD =
            T.let(
              :mkd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          OMR =
            T.let(
              :omr,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          PYG =
            T.let(
              :pyg,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          PEN =
            T.let(
              :pen,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          QAR =
            T.let(
              :qar,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          RWF =
            T.let(
              :rwf,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          SAR =
            T.let(
              :sar,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          RSD =
            T.let(
              :rsd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          LKR =
            T.let(
              :lkr,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          TZS =
            T.let(
              :tzs,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          TTD =
            T.let(
              :ttd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          UZS =
            T.let(
              :uzs,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          RUB =
            T.let(
              :rub,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          BTC =
            T.let(
              :btc,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          CNY =
            T.let(
              :cny,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          USDT =
            T.let(
              :usdt,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          KZT =
            T.let(
              :kzt,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          AWG =
            T.let(
              :awg,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          WHOP_USD =
            T.let(
              :whop_usd,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )
          XAU =
            T.let(
              :xau,
              WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PaymentCreateParams::Plan::Currency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Billing model for the plan.
        module PlanType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::PaymentCreateParams::Plan::PlanType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RENEWAL =
            T.let(
              :renewal,
              WhopSDK::PaymentCreateParams::Plan::PlanType::TaggedSymbol
            )
          ONE_TIME =
            T.let(
              :one_time,
              WhopSDK::PaymentCreateParams::Plan::PlanType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PaymentCreateParams::Plan::PlanType::TaggedSymbol
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
                WhopSDK::PaymentCreateParams::Plan::Product,
                WhopSDK::Internal::AnyHash
              )
            end

          # Your unique identifier for the product.
          sig { returns(String) }
          attr_accessor :external_identifier

          # Product title.
          sig { returns(String) }
          attr_accessor :title

          # Whether to collect a shipping address at checkout.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :collect_shipping_address

          # Custom card statement descriptor for the product, starting with WHOP\*.
          sig { returns(T.nilable(String)) }
          attr_accessor :custom_statement_descriptor

          # Product description.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # Percentage of revenue paid to global affiliates.
          sig { returns(T.nilable(Float)) }
          attr_accessor :global_affiliate_percentage

          # Global affiliate program status.
          sig do
            returns(
              T.nilable(
                WhopSDK::PaymentCreateParams::Plan::Product::GlobalAffiliateStatus::OrSymbol
              )
            )
          end
          attr_accessor :global_affiliate_status

          # Product headline.
          sig { returns(T.nilable(String)) }
          attr_accessor :headline

          # Product tax code identifier.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_tax_code_id

          # Where to redirect the buyer after purchase.
          sig { returns(T.nilable(String)) }
          attr_accessor :redirect_purchase_url

          # Product route.
          sig { returns(T.nilable(String)) }
          attr_accessor :route

          # Product visibility. Defaults to hidden.
          sig do
            returns(
              T.nilable(
                WhopSDK::PaymentCreateParams::Plan::Product::Visibility::OrSymbol
              )
            )
          end
          attr_reader :visibility

          sig do
            params(
              visibility:
                WhopSDK::PaymentCreateParams::Plan::Product::Visibility::OrSymbol
            ).void
          end
          attr_writer :visibility

          # Find or create a product by external identifier. Mutually exclusive with
          # product_id.
          sig do
            params(
              external_identifier: String,
              title: String,
              collect_shipping_address: T.nilable(T::Boolean),
              custom_statement_descriptor: T.nilable(String),
              description: T.nilable(String),
              global_affiliate_percentage: T.nilable(Float),
              global_affiliate_status:
                T.nilable(
                  WhopSDK::PaymentCreateParams::Plan::Product::GlobalAffiliateStatus::OrSymbol
                ),
              headline: T.nilable(String),
              product_tax_code_id: T.nilable(String),
              redirect_purchase_url: T.nilable(String),
              route: T.nilable(String),
              visibility:
                WhopSDK::PaymentCreateParams::Plan::Product::Visibility::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Your unique identifier for the product.
            external_identifier:,
            # Product title.
            title:,
            # Whether to collect a shipping address at checkout.
            collect_shipping_address: nil,
            # Custom card statement descriptor for the product, starting with WHOP\*.
            custom_statement_descriptor: nil,
            # Product description.
            description: nil,
            # Percentage of revenue paid to global affiliates.
            global_affiliate_percentage: nil,
            # Global affiliate program status.
            global_affiliate_status: nil,
            # Product headline.
            headline: nil,
            # Product tax code identifier.
            product_tax_code_id: nil,
            # Where to redirect the buyer after purchase.
            redirect_purchase_url: nil,
            # Product route.
            route: nil,
            # Product visibility. Defaults to hidden.
            visibility: nil
          )
          end

          sig do
            override.returns(
              {
                external_identifier: String,
                title: String,
                collect_shipping_address: T.nilable(T::Boolean),
                custom_statement_descriptor: T.nilable(String),
                description: T.nilable(String),
                global_affiliate_percentage: T.nilable(Float),
                global_affiliate_status:
                  T.nilable(
                    WhopSDK::PaymentCreateParams::Plan::Product::GlobalAffiliateStatus::OrSymbol
                  ),
                headline: T.nilable(String),
                product_tax_code_id: T.nilable(String),
                redirect_purchase_url: T.nilable(String),
                route: T.nilable(String),
                visibility:
                  WhopSDK::PaymentCreateParams::Plan::Product::Visibility::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Global affiliate program status.
          module GlobalAffiliateStatus
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::PaymentCreateParams::Plan::Product::GlobalAffiliateStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLED =
              T.let(
                :enabled,
                WhopSDK::PaymentCreateParams::Plan::Product::GlobalAffiliateStatus::TaggedSymbol
              )
            DISABLED =
              T.let(
                :disabled,
                WhopSDK::PaymentCreateParams::Plan::Product::GlobalAffiliateStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::PaymentCreateParams::Plan::Product::GlobalAffiliateStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Product visibility. Defaults to hidden.
          module Visibility
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::PaymentCreateParams::Plan::Product::Visibility
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VISIBLE =
              T.let(
                :visible,
                WhopSDK::PaymentCreateParams::Plan::Product::Visibility::TaggedSymbol
              )
            HIDDEN =
              T.let(
                :hidden,
                WhopSDK::PaymentCreateParams::Plan::Product::Visibility::TaggedSymbol
              )
            ARCHIVED =
              T.let(
                :archived,
                WhopSDK::PaymentCreateParams::Plan::Product::Visibility::TaggedSymbol
              )
            QUICK_LINK =
              T.let(
                :quick_link,
                WhopSDK::PaymentCreateParams::Plan::Product::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::PaymentCreateParams::Plan::Product::Visibility::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Whether the plan is visible to customers.
        module Visibility
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::PaymentCreateParams::Plan::Visibility)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VISIBLE =
            T.let(
              :visible,
              WhopSDK::PaymentCreateParams::Plan::Visibility::TaggedSymbol
            )
          HIDDEN =
            T.let(
              :hidden,
              WhopSDK::PaymentCreateParams::Plan::Visibility::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              WhopSDK::PaymentCreateParams::Plan::Visibility::TaggedSymbol
            )
          QUICK_LINK =
            T.let(
              :quick_link,
              WhopSDK::PaymentCreateParams::Plan::Visibility::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PaymentCreateParams::Plan::Visibility::TaggedSymbol
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
