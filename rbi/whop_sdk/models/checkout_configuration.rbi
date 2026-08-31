# typed: strong

module WhopSDK
  module Models
    class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CheckoutConfiguration, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Account ID, prefixed `biz_`.
      sig { returns(String) }
      attr_accessor :account_id

      # Affiliate code applied at checkout, or `null` when none is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_code

      # When the checkout configuration was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Currency used for setup-mode payment method availability; defaults to `usd` when
      # omitted.
      sig do
        returns(T.nilable(WhopSDK::CheckoutConfiguration::Currency::OrSymbol))
      end
      attr_accessor :currency

      # The configuration governing a checkout mounted from this configuration, resolved
      # through every layer (its own overrides, the plan's, and the account's) — the
      # shape a session's `payment_method_configuration` carries. Apply it over the
      # payment method types catalogue for the offerable set. `null` means platform
      # defaults; `payment_method_configuration` stays this configuration's own editable
      # override.
      sig do
        returns(
          T.nilable(
            WhopSDK::CheckoutConfiguration::EffectivePaymentMethodConfiguration
          )
        )
      end
      attr_reader :effective_payment_method_configuration

      sig do
        params(
          effective_payment_method_configuration:
            T.nilable(
              WhopSDK::CheckoutConfiguration::EffectivePaymentMethodConfiguration::OrHash
            )
        ).void
      end
      attr_writer :effective_payment_method_configuration

      # Custom key-value metadata copied to payments and memberships. `null` without the
      # `checkout_configuration:basic:read` scope.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # Controls whether checkout charges the buyer immediately or saves payment details
      # for later.
      sig { returns(WhopSDK::CheckoutConfiguration::Mode::OrSymbol) }
      attr_accessor :mode

      # Payment method overrides for this checkout. `null` when it uses the plan or
      # platform defaults.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :payment_method_configuration

      # Plan used for payment checkout. `null` in setup mode.
      sig { returns(T.nilable(WhopSDK::CheckoutConfiguration::Plan)) }
      attr_reader :plan

      sig do
        params(
          plan: T.nilable(WhopSDK::CheckoutConfiguration::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # Checkout URL you can send to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :purchase_url

      # URL customers are sent to after checkout, or `null` when no redirect is
      # configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_url

      # 3D Secure behavior for this checkout, or `null` to use the account default.
      sig do
        returns(
          T.nilable(WhopSDK::CheckoutConfiguration::ThreeDSLevel::OrSymbol)
        )
      end
      attr_accessor :three_ds_level

      # When the checkout configuration was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          account_id: String,
          affiliate_code: T.nilable(String),
          created_at: String,
          currency:
            T.nilable(WhopSDK::CheckoutConfiguration::Currency::OrSymbol),
          effective_payment_method_configuration:
            T.nilable(
              WhopSDK::CheckoutConfiguration::EffectivePaymentMethodConfiguration::OrHash
            ),
          metadata: T.nilable(T.anything),
          mode: WhopSDK::CheckoutConfiguration::Mode::OrSymbol,
          payment_method_configuration: T.nilable(T.anything),
          plan: T.nilable(WhopSDK::CheckoutConfiguration::Plan::OrHash),
          purchase_url: T.nilable(String),
          redirect_url: T.nilable(String),
          three_ds_level:
            T.nilable(WhopSDK::CheckoutConfiguration::ThreeDSLevel::OrSymbol),
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Account ID, prefixed `biz_`.
        account_id:,
        # Affiliate code applied at checkout, or `null` when none is set.
        affiliate_code:,
        # When the checkout configuration was created, as an ISO 8601 timestamp.
        created_at:,
        # Currency used for setup-mode payment method availability; defaults to `usd` when
        # omitted.
        currency:,
        # The configuration governing a checkout mounted from this configuration, resolved
        # through every layer (its own overrides, the plan's, and the account's) — the
        # shape a session's `payment_method_configuration` carries. Apply it over the
        # payment method types catalogue for the offerable set. `null` means platform
        # defaults; `payment_method_configuration` stays this configuration's own editable
        # override.
        effective_payment_method_configuration:,
        # Custom key-value metadata copied to payments and memberships. `null` without the
        # `checkout_configuration:basic:read` scope.
        metadata:,
        # Controls whether checkout charges the buyer immediately or saves payment details
        # for later.
        mode:,
        # Payment method overrides for this checkout. `null` when it uses the plan or
        # platform defaults.
        payment_method_configuration:,
        # Plan used for payment checkout. `null` in setup mode.
        plan:,
        # Checkout URL you can send to customers.
        purchase_url:,
        # URL customers are sent to after checkout, or `null` when no redirect is
        # configured.
        redirect_url:,
        # 3D Secure behavior for this checkout, or `null` to use the account default.
        three_ds_level:,
        # When the checkout configuration was last updated, as an ISO 8601 timestamp.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            affiliate_code: T.nilable(String),
            created_at: String,
            currency:
              T.nilable(WhopSDK::CheckoutConfiguration::Currency::OrSymbol),
            effective_payment_method_configuration:
              T.nilable(
                WhopSDK::CheckoutConfiguration::EffectivePaymentMethodConfiguration
              ),
            metadata: T.nilable(T.anything),
            mode: WhopSDK::CheckoutConfiguration::Mode::OrSymbol,
            payment_method_configuration: T.nilable(T.anything),
            plan: T.nilable(WhopSDK::CheckoutConfiguration::Plan),
            purchase_url: T.nilable(String),
            redirect_url: T.nilable(String),
            three_ds_level:
              T.nilable(WhopSDK::CheckoutConfiguration::ThreeDSLevel::OrSymbol),
            updated_at: String
          }
        )
      end
      def to_hash
      end

      # Currency used for setup-mode payment method availability; defaults to `usd` when
      # omitted.
      module Currency
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CheckoutConfiguration::Currency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USD =
          T.let(:usd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        SGD =
          T.let(:sgd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        INR =
          T.let(:inr, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        AUD =
          T.let(:aud, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        BRL =
          T.let(:brl, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        CAD =
          T.let(:cad, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        DKK =
          T.let(:dkk, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        EUR =
          T.let(:eur, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        NOK =
          T.let(:nok, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        GBP =
          T.let(:gbp, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        SEK =
          T.let(:sek, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        CHF =
          T.let(:chf, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        HKD =
          T.let(:hkd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        HUF =
          T.let(:huf, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        JPY =
          T.let(:jpy, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        MXN =
          T.let(:mxn, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        MYR =
          T.let(:myr, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        PLN =
          T.let(:pln, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        CZK =
          T.let(:czk, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        NZD =
          T.let(:nzd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        AED =
          T.let(:aed, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        ETH =
          T.let(:eth, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        APE =
          T.let(:ape, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        COP =
          T.let(:cop, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        RON =
          T.let(:ron, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        THB =
          T.let(:thb, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        BGN =
          T.let(:bgn, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        IDR =
          T.let(:idr, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        DOP =
          T.let(:dop, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        PHP =
          T.let(:php, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        TRY =
          T.let(:try, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        KRW =
          T.let(:krw, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        TWD =
          T.let(:twd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        VND =
          T.let(:vnd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        PKR =
          T.let(:pkr, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        CLP =
          T.let(:clp, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        UYU =
          T.let(:uyu, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        ARS =
          T.let(:ars, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        ZAR =
          T.let(:zar, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        DZD =
          T.let(:dzd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        TND =
          T.let(:tnd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        MAD =
          T.let(:mad, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        KES =
          T.let(:kes, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        KWD =
          T.let(:kwd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        JOD =
          T.let(:jod, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        ALL =
          T.let(:all, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        XCD =
          T.let(:xcd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        AMD =
          T.let(:amd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        BSD =
          T.let(:bsd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        BHD =
          T.let(:bhd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        BOB =
          T.let(:bob, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        BAM =
          T.let(:bam, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        KHR =
          T.let(:khr, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        CRC =
          T.let(:crc, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        XOF =
          T.let(:xof, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        EGP =
          T.let(:egp, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        ETB =
          T.let(:etb, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        GMD =
          T.let(:gmd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        GHS =
          T.let(:ghs, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        GTQ =
          T.let(:gtq, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        GYD =
          T.let(:gyd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        ILS =
          T.let(:ils, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        JMD =
          T.let(:jmd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        MOP =
          T.let(:mop, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        MGA =
          T.let(:mga, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        MUR =
          T.let(:mur, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        MDL =
          T.let(:mdl, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        MNT =
          T.let(:mnt, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        NAD =
          T.let(:nad, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        NGN =
          T.let(:ngn, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        MKD =
          T.let(:mkd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        OMR =
          T.let(:omr, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        PYG =
          T.let(:pyg, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        PEN =
          T.let(:pen, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        QAR =
          T.let(:qar, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        RWF =
          T.let(:rwf, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        SAR =
          T.let(:sar, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        RSD =
          T.let(:rsd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        LKR =
          T.let(:lkr, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        TZS =
          T.let(:tzs, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        TTD =
          T.let(:ttd, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        UZS =
          T.let(:uzs, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        RUB =
          T.let(:rub, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        BTC =
          T.let(:btc, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        CNY =
          T.let(:cny, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        USDT =
          T.let(:usdt, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        KZT =
          T.let(:kzt, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        AWG =
          T.let(:awg, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)
        WHOP_USD =
          T.let(
            :whop_usd,
            WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol
          )
        XAU =
          T.let(:xau, WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::CheckoutConfiguration::Currency::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class EffectivePaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CheckoutConfiguration::EffectivePaymentMethodConfiguration,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :disabled

        sig { returns(T::Array[String]) }
        attr_accessor :enabled

        # Whether Whop's default set is the starting point. When `false`, only `enabled`
        # is offered.
        sig { returns(T::Boolean) }
        attr_accessor :include_platform_defaults

        # The configuration governing a checkout mounted from this configuration, resolved
        # through every layer (its own overrides, the plan's, and the account's) — the
        # shape a session's `payment_method_configuration` carries. Apply it over the
        # payment method types catalogue for the offerable set. `null` means platform
        # defaults; `payment_method_configuration` stays this configuration's own editable
        # override.
        sig do
          params(
            disabled: T::Array[String],
            enabled: T::Array[String],
            include_platform_defaults: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          disabled:,
          enabled:,
          # Whether Whop's default set is the starting point. When `false`, only `enabled`
          # is offered.
          include_platform_defaults:
        )
        end

        sig do
          override.returns(
            {
              disabled: T::Array[String],
              enabled: T::Array[String],
              include_platform_defaults: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      # Controls whether checkout charges the buyer immediately or saves payment details
      # for later.
      module Mode
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CheckoutConfiguration::Mode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT =
          T.let(:payment, WhopSDK::CheckoutConfiguration::Mode::TaggedSymbol)
        SETUP =
          T.let(:setup, WhopSDK::CheckoutConfiguration::Mode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::CheckoutConfiguration::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CheckoutConfiguration::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # Plan ID, prefixed `plan_`.
        sig { returns(String) }
        attr_accessor :id

        # Whether this plan accepts local currency payments via adaptive pricing.
        sig { returns(T::Boolean) }
        attr_accessor :adaptive_pricing_enabled

        # Recurring billing interval in days.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # Three-letter ISO currency code for the plan's prices.
        sig { returns(String) }
        attr_accessor :currency

        # Access duration in days for expiration-based plans.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # Initial purchase price in the plan currency.
        sig { returns(Float) }
        attr_accessor :initial_price

        # Billing model for the plan.
        sig do
          returns(WhopSDK::CheckoutConfiguration::Plan::PlanType::OrSymbol)
        end
        attr_accessor :plan_type

        # Sales method for the plan.
        sig do
          returns(WhopSDK::CheckoutConfiguration::Plan::ReleaseMethod::OrSymbol)
        end
        attr_accessor :release_method

        # Recurring price charged each billing period.
        sig { returns(Float) }
        attr_accessor :renewal_price

        # 3D Secure behavior for this plan, or `null` to use the account default.
        sig do
          returns(
            T.nilable(
              WhopSDK::CheckoutConfiguration::Plan::ThreeDSLevel::OrSymbol
            )
          )
        end
        attr_accessor :three_ds_level

        # Free trial days before the first renewal charge.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Whether the plan is visible to customers or hidden from public view.
        sig do
          returns(WhopSDK::CheckoutConfiguration::Plan::Visibility::OrSymbol)
        end
        attr_accessor :visibility

        # Plan used for payment checkout. `null` in setup mode.
        sig do
          params(
            id: String,
            adaptive_pricing_enabled: T::Boolean,
            billing_period: T.nilable(Integer),
            currency: String,
            expiration_days: T.nilable(Integer),
            initial_price: Float,
            plan_type: WhopSDK::CheckoutConfiguration::Plan::PlanType::OrSymbol,
            release_method:
              WhopSDK::CheckoutConfiguration::Plan::ReleaseMethod::OrSymbol,
            renewal_price: Float,
            three_ds_level:
              T.nilable(
                WhopSDK::CheckoutConfiguration::Plan::ThreeDSLevel::OrSymbol
              ),
            trial_period_days: T.nilable(Integer),
            visibility:
              WhopSDK::CheckoutConfiguration::Plan::Visibility::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Plan ID, prefixed `plan_`.
          id:,
          # Whether this plan accepts local currency payments via adaptive pricing.
          adaptive_pricing_enabled:,
          # Recurring billing interval in days.
          billing_period:,
          # Three-letter ISO currency code for the plan's prices.
          currency:,
          # Access duration in days for expiration-based plans.
          expiration_days:,
          # Initial purchase price in the plan currency.
          initial_price:,
          # Billing model for the plan.
          plan_type:,
          # Sales method for the plan.
          release_method:,
          # Recurring price charged each billing period.
          renewal_price:,
          # 3D Secure behavior for this plan, or `null` to use the account default.
          three_ds_level:,
          # Free trial days before the first renewal charge.
          trial_period_days:,
          # Whether the plan is visible to customers or hidden from public view.
          visibility:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              adaptive_pricing_enabled: T::Boolean,
              billing_period: T.nilable(Integer),
              currency: String,
              expiration_days: T.nilable(Integer),
              initial_price: Float,
              plan_type:
                WhopSDK::CheckoutConfiguration::Plan::PlanType::OrSymbol,
              release_method:
                WhopSDK::CheckoutConfiguration::Plan::ReleaseMethod::OrSymbol,
              renewal_price: Float,
              three_ds_level:
                T.nilable(
                  WhopSDK::CheckoutConfiguration::Plan::ThreeDSLevel::OrSymbol
                ),
              trial_period_days: T.nilable(Integer),
              visibility:
                WhopSDK::CheckoutConfiguration::Plan::Visibility::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Billing model for the plan.
        module PlanType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::CheckoutConfiguration::Plan::PlanType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RENEWAL =
            T.let(
              :renewal,
              WhopSDK::CheckoutConfiguration::Plan::PlanType::TaggedSymbol
            )
          ONE_TIME =
            T.let(
              :one_time,
              WhopSDK::CheckoutConfiguration::Plan::PlanType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CheckoutConfiguration::Plan::PlanType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sales method for the plan.
        module ReleaseMethod
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::CheckoutConfiguration::Plan::ReleaseMethod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUY_NOW =
            T.let(
              :buy_now,
              WhopSDK::CheckoutConfiguration::Plan::ReleaseMethod::TaggedSymbol
            )
          WAITLIST =
            T.let(
              :waitlist,
              WhopSDK::CheckoutConfiguration::Plan::ReleaseMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CheckoutConfiguration::Plan::ReleaseMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # 3D Secure behavior for this plan, or `null` to use the account default.
        module ThreeDSLevel
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::CheckoutConfiguration::Plan::ThreeDSLevel)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANDATE_CHALLENGE =
            T.let(
              :mandate_challenge,
              WhopSDK::CheckoutConfiguration::Plan::ThreeDSLevel::TaggedSymbol
            )
          FRICTIONLESS =
            T.let(
              :frictionless,
              WhopSDK::CheckoutConfiguration::Plan::ThreeDSLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CheckoutConfiguration::Plan::ThreeDSLevel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the plan is visible to customers or hidden from public view.
        module Visibility
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::CheckoutConfiguration::Plan::Visibility)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VISIBLE =
            T.let(
              :visible,
              WhopSDK::CheckoutConfiguration::Plan::Visibility::TaggedSymbol
            )
          HIDDEN =
            T.let(
              :hidden,
              WhopSDK::CheckoutConfiguration::Plan::Visibility::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              WhopSDK::CheckoutConfiguration::Plan::Visibility::TaggedSymbol
            )
          QUICK_LINK =
            T.let(
              :quick_link,
              WhopSDK::CheckoutConfiguration::Plan::Visibility::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CheckoutConfiguration::Plan::Visibility::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # 3D Secure behavior for this checkout, or `null` to use the account default.
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CheckoutConfiguration::ThreeDSLevel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANDATE_CHALLENGE =
          T.let(
            :mandate_challenge,
            WhopSDK::CheckoutConfiguration::ThreeDSLevel::TaggedSymbol
          )
        FRICTIONLESS =
          T.let(
            :frictionless,
            WhopSDK::CheckoutConfiguration::ThreeDSLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::CheckoutConfiguration::ThreeDSLevel::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
