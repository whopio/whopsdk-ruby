# typed: strong

module WhopSDK
  module Models
    class Plan < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::Plan, WhopSDK::Internal::AnyHash) }

      # Plan ID, prefixed `plan_`.
      sig { returns(String) }
      attr_accessor :id

      # Account that sells this plan; `null` for standalone invoice plans.
      sig { returns(T.nilable(WhopSDK::Plan::Account)) }
      attr_reader :account

      sig { params(account: T.nilable(WhopSDK::Plan::Account::OrHash)).void }
      attr_writer :account

      # Whether adaptive pricing is enabled for this plan. Raw setting — does not check
      # processor compatibility or feature flags.
      sig { returns(T::Boolean) }
      attr_accessor :adaptive_pricing_enabled

      # Number of days between recurring charges, such as 30 for monthly or 365 for
      # annual. `null` for one-time plans.
      sig { returns(T.nilable(Float)) }
      attr_accessor :billing_period

      # Billing intervals the cancellation discount applies to (`0` forever, `1` first
      # payment, or a month count). `null` when none is offered or the actor lacks the
      # `plan:basic:read` scope.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cancel_discount_intervals

      # Cancellation discount as a whole-number percentage. `null` when none is offered
      # or the actor lacks the `plan:basic:read` scope.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cancel_discount_percentage

      # Plan-level checkout styling (`background_color`, `button_color`, `font_family`,
      # `border_style`); `null` inherits the account default.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :checkout_styling

      # Whether tax is collected on purchases of this plan, based on the account's tax
      # configuration.
      sig { returns(T::Boolean) }
      attr_accessor :collect_tax

      # When the plan was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Three-letter ISO currency code for this plan's prices.
      sig { returns(WhopSDK::Plan::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig { returns(T::Array[WhopSDK::Plan::CustomField]) }
      attr_accessor :custom_fields

      # Whether the plan can be deleted (it has no memberships or waitlist entries).
      # `null` unless the actor has the `plan:basic:read` scope on the plan's account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :deletable

      # Customer-visible plan description. Maximum 1000 characters. `null` if no
      # description is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The configuration governing a checkout for this plan, resolved through every
      # layer (the plan's own and the account's) — the shape a session's
      # `payment_method_configuration` carries. Apply it over the payment method types
      # catalogue for the offerable set. `null` means platform defaults;
      # `payment_method_configuration` stays the plan's own editable override.
      sig do
        returns(T.nilable(WhopSDK::Plan::EffectivePaymentMethodConfiguration))
      end
      attr_reader :effective_payment_method_configuration

      sig do
        params(
          effective_payment_method_configuration:
            T.nilable(
              WhopSDK::Plan::EffectivePaymentMethodConfiguration::OrHash
            )
        ).void
      end
      attr_writer :effective_payment_method_configuration

      # Access duration in days for expiration-based plans, such as 365 for a one-year
      # pass. `null` for plans without an expiration.
      sig { returns(T.nilable(Float)) }
      attr_accessor :expiration_days

      # Human-readable price for display (currency + interval), e.g. "$10 / month".
      sig { returns(String) }
      attr_accessor :formatted_price

      # Pricing-tier image (`url`, `blurhash`) shown on the product page; `null` when no
      # image is set.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :image

      # Initial purchase price in plan currency.
      sig { returns(Float) }
      attr_accessor :initial_price

      # Private notes not shown to customers. `null` unless the actor has the
      # `plan:basic:read` scope on the plan's account.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # Invoice this plan was generated for; `null` unless created for an invoice.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :invoice

      # Active memberships through this plan. `null` unless the actor has the
      # `plan:basic:read` scope on the plan's account.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_count

      # Custom key-value pairs stored on the plan. Included in webhook payloads for
      # payment and membership events. Maximum 50 keys, 100 characters per key, 500
      # characters per value. The reserved keys `custom_cta` and `custom_cta_url`, when
      # set, override the product's checkout call to action for this plan.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # Whether a cancellation discount is offered. `null` unless the actor has the
      # `plan:basic:read` scope on the plan's account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :offer_cancel_discount

      # Payment method configuration (`enabled`, `disabled`,
      # `include_platform_defaults`); `null` when plan uses default settings.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :payment_method_configuration

      # Billing model for this plan.
      sig { returns(WhopSDK::Plan::PlanType::TaggedSymbol) }
      attr_accessor :plan_type

      # Product this plan belongs to; `null` for standalone plans.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :product

      # URL where customers can purchase this plan directly.
      sig { returns(String) }
      attr_accessor :purchase_url

      # Sales method for this plan.
      sig { returns(WhopSDK::Plan::ReleaseMethod::TaggedSymbol) }
      attr_accessor :release_method

      # Recurring price charged every billing period.
      sig { returns(Float) }
      attr_accessor :renewal_price

      # Installment payments required before the subscription pauses. Must be greater
      # than 1. `null` if split pay is not configured.
      sig { returns(T.nilable(Float)) }
      attr_accessor :split_pay_required_payments

      # Units available for purchase. `null` unless the actor has the `plan:basic:read`
      # scope on the plan's account.
      sig { returns(T.nilable(Float)) }
      attr_accessor :stock

      # Original initial price shown with a strikethrough, in the plan's currency.
      # `null` when no strikethrough is set.
      sig { returns(T.nilable(Float)) }
      attr_accessor :strike_through_initial_price

      # Original renewal price shown with a strikethrough, in the plan's currency.
      # `null` when no strikethrough is set.
      sig { returns(T.nilable(Float)) }
      attr_accessor :strike_through_renewal_price

      # How tax is handled for this plan, including whether tax is included in the
      # price, added at checkout, or not configured.
      sig { returns(WhopSDK::Plan::TaxType::TaggedSymbol) }
      attr_accessor :tax_type

      # 3D Secure behavior for this plan; `null` inherits the account default.
      sig { returns(T.nilable(WhopSDK::Plan::ThreeDSLevel::TaggedSymbol)) }
      attr_accessor :three_ds_level

      # Plan display name shown to customers. Maximum 30 characters. `null` if no title
      # has been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Free trial days before the first renewal charge. `null` if no trial is
      # configured or the user has already used a trial for this plan.
      sig { returns(T.nilable(Float)) }
      attr_accessor :trial_period_days

      # Whether the plan has unlimited stock. When `true`, the `stock` field is ignored;
      # waitlist plans always report `true`.
      sig { returns(T::Boolean) }
      attr_accessor :unlimited_stock

      # When the plan was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # Controls where this plan can be seen. When `hidden`, the plan is reachable only
      # by its direct link.
      sig { returns(WhopSDK::Plan::Visibility::TaggedSymbol) }
      attr_accessor :visibility

      sig do
        params(
          id: String,
          account: T.nilable(WhopSDK::Plan::Account::OrHash),
          adaptive_pricing_enabled: T::Boolean,
          billing_period: T.nilable(Float),
          cancel_discount_intervals: T.nilable(Float),
          cancel_discount_percentage: T.nilable(Float),
          checkout_styling: T.nilable(T.anything),
          collect_tax: T::Boolean,
          created_at: String,
          currency: WhopSDK::Plan::Currency::OrSymbol,
          custom_fields: T::Array[WhopSDK::Plan::CustomField::OrHash],
          deletable: T.nilable(T::Boolean),
          description: T.nilable(String),
          effective_payment_method_configuration:
            T.nilable(
              WhopSDK::Plan::EffectivePaymentMethodConfiguration::OrHash
            ),
          expiration_days: T.nilable(Float),
          formatted_price: String,
          image: T.nilable(T.anything),
          initial_price: Float,
          internal_notes: T.nilable(String),
          invoice: T.nilable(T.anything),
          member_count: T.nilable(Float),
          metadata: T.nilable(T.anything),
          offer_cancel_discount: T.nilable(T::Boolean),
          payment_method_configuration: T.nilable(T.anything),
          plan_type: WhopSDK::Plan::PlanType::OrSymbol,
          product: T.nilable(T.anything),
          purchase_url: String,
          release_method: WhopSDK::Plan::ReleaseMethod::OrSymbol,
          renewal_price: Float,
          split_pay_required_payments: T.nilable(Float),
          stock: T.nilable(Float),
          strike_through_initial_price: T.nilable(Float),
          strike_through_renewal_price: T.nilable(Float),
          tax_type: WhopSDK::Plan::TaxType::OrSymbol,
          three_ds_level: T.nilable(WhopSDK::Plan::ThreeDSLevel::OrSymbol),
          title: T.nilable(String),
          trial_period_days: T.nilable(Float),
          unlimited_stock: T::Boolean,
          updated_at: String,
          visibility: WhopSDK::Plan::Visibility::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Plan ID, prefixed `plan_`.
        id:,
        # Account that sells this plan; `null` for standalone invoice plans.
        account:,
        # Whether adaptive pricing is enabled for this plan. Raw setting — does not check
        # processor compatibility or feature flags.
        adaptive_pricing_enabled:,
        # Number of days between recurring charges, such as 30 for monthly or 365 for
        # annual. `null` for one-time plans.
        billing_period:,
        # Billing intervals the cancellation discount applies to (`0` forever, `1` first
        # payment, or a month count). `null` when none is offered or the actor lacks the
        # `plan:basic:read` scope.
        cancel_discount_intervals:,
        # Cancellation discount as a whole-number percentage. `null` when none is offered
        # or the actor lacks the `plan:basic:read` scope.
        cancel_discount_percentage:,
        # Plan-level checkout styling (`background_color`, `button_color`, `font_family`,
        # `border_style`); `null` inherits the account default.
        checkout_styling:,
        # Whether tax is collected on purchases of this plan, based on the account's tax
        # configuration.
        collect_tax:,
        # When the plan was created, as an ISO 8601 timestamp.
        created_at:,
        # Three-letter ISO currency code for this plan's prices.
        currency:,
        custom_fields:,
        # Whether the plan can be deleted (it has no memberships or waitlist entries).
        # `null` unless the actor has the `plan:basic:read` scope on the plan's account.
        deletable:,
        # Customer-visible plan description. Maximum 1000 characters. `null` if no
        # description is set.
        description:,
        # The configuration governing a checkout for this plan, resolved through every
        # layer (the plan's own and the account's) — the shape a session's
        # `payment_method_configuration` carries. Apply it over the payment method types
        # catalogue for the offerable set. `null` means platform defaults;
        # `payment_method_configuration` stays the plan's own editable override.
        effective_payment_method_configuration:,
        # Access duration in days for expiration-based plans, such as 365 for a one-year
        # pass. `null` for plans without an expiration.
        expiration_days:,
        # Human-readable price for display (currency + interval), e.g. "$10 / month".
        formatted_price:,
        # Pricing-tier image (`url`, `blurhash`) shown on the product page; `null` when no
        # image is set.
        image:,
        # Initial purchase price in plan currency.
        initial_price:,
        # Private notes not shown to customers. `null` unless the actor has the
        # `plan:basic:read` scope on the plan's account.
        internal_notes:,
        # Invoice this plan was generated for; `null` unless created for an invoice.
        invoice:,
        # Active memberships through this plan. `null` unless the actor has the
        # `plan:basic:read` scope on the plan's account.
        member_count:,
        # Custom key-value pairs stored on the plan. Included in webhook payloads for
        # payment and membership events. Maximum 50 keys, 100 characters per key, 500
        # characters per value. The reserved keys `custom_cta` and `custom_cta_url`, when
        # set, override the product's checkout call to action for this plan.
        metadata:,
        # Whether a cancellation discount is offered. `null` unless the actor has the
        # `plan:basic:read` scope on the plan's account.
        offer_cancel_discount:,
        # Payment method configuration (`enabled`, `disabled`,
        # `include_platform_defaults`); `null` when plan uses default settings.
        payment_method_configuration:,
        # Billing model for this plan.
        plan_type:,
        # Product this plan belongs to; `null` for standalone plans.
        product:,
        # URL where customers can purchase this plan directly.
        purchase_url:,
        # Sales method for this plan.
        release_method:,
        # Recurring price charged every billing period.
        renewal_price:,
        # Installment payments required before the subscription pauses. Must be greater
        # than 1. `null` if split pay is not configured.
        split_pay_required_payments:,
        # Units available for purchase. `null` unless the actor has the `plan:basic:read`
        # scope on the plan's account.
        stock:,
        # Original initial price shown with a strikethrough, in the plan's currency.
        # `null` when no strikethrough is set.
        strike_through_initial_price:,
        # Original renewal price shown with a strikethrough, in the plan's currency.
        # `null` when no strikethrough is set.
        strike_through_renewal_price:,
        # How tax is handled for this plan, including whether tax is included in the
        # price, added at checkout, or not configured.
        tax_type:,
        # 3D Secure behavior for this plan; `null` inherits the account default.
        three_ds_level:,
        # Plan display name shown to customers. Maximum 30 characters. `null` if no title
        # has been set.
        title:,
        # Free trial days before the first renewal charge. `null` if no trial is
        # configured or the user has already used a trial for this plan.
        trial_period_days:,
        # Whether the plan has unlimited stock. When `true`, the `stock` field is ignored;
        # waitlist plans always report `true`.
        unlimited_stock:,
        # When the plan was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # Controls where this plan can be seen. When `hidden`, the plan is reachable only
        # by its direct link.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account: T.nilable(WhopSDK::Plan::Account),
            adaptive_pricing_enabled: T::Boolean,
            billing_period: T.nilable(Float),
            cancel_discount_intervals: T.nilable(Float),
            cancel_discount_percentage: T.nilable(Float),
            checkout_styling: T.nilable(T.anything),
            collect_tax: T::Boolean,
            created_at: String,
            currency: WhopSDK::Plan::Currency::TaggedSymbol,
            custom_fields: T::Array[WhopSDK::Plan::CustomField],
            deletable: T.nilable(T::Boolean),
            description: T.nilable(String),
            effective_payment_method_configuration:
              T.nilable(WhopSDK::Plan::EffectivePaymentMethodConfiguration),
            expiration_days: T.nilable(Float),
            formatted_price: String,
            image: T.nilable(T.anything),
            initial_price: Float,
            internal_notes: T.nilable(String),
            invoice: T.nilable(T.anything),
            member_count: T.nilable(Float),
            metadata: T.nilable(T.anything),
            offer_cancel_discount: T.nilable(T::Boolean),
            payment_method_configuration: T.nilable(T.anything),
            plan_type: WhopSDK::Plan::PlanType::TaggedSymbol,
            product: T.nilable(T.anything),
            purchase_url: String,
            release_method: WhopSDK::Plan::ReleaseMethod::TaggedSymbol,
            renewal_price: Float,
            split_pay_required_payments: T.nilable(Float),
            stock: T.nilable(Float),
            strike_through_initial_price: T.nilable(Float),
            strike_through_renewal_price: T.nilable(Float),
            tax_type: WhopSDK::Plan::TaxType::TaggedSymbol,
            three_ds_level:
              T.nilable(WhopSDK::Plan::ThreeDSLevel::TaggedSymbol),
            title: T.nilable(String),
            trial_period_days: T.nilable(Float),
            unlimited_stock: T::Boolean,
            updated_at: String,
            visibility: WhopSDK::Plan::Visibility::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Account < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Plan::Account, WhopSDK::Internal::AnyHash)
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        # Account display name.
        sig { returns(String) }
        attr_accessor :title

        # Account that sells this plan; `null` for standalone invoice plans.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # Account ID, prefixed `biz_`.
          id:,
          # Account display name.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      # Three-letter ISO currency code for this plan's prices.
      module Currency
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Plan::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USD = T.let(:usd, WhopSDK::Plan::Currency::TaggedSymbol)
        SGD = T.let(:sgd, WhopSDK::Plan::Currency::TaggedSymbol)
        INR = T.let(:inr, WhopSDK::Plan::Currency::TaggedSymbol)
        AUD = T.let(:aud, WhopSDK::Plan::Currency::TaggedSymbol)
        BRL = T.let(:brl, WhopSDK::Plan::Currency::TaggedSymbol)
        CAD = T.let(:cad, WhopSDK::Plan::Currency::TaggedSymbol)
        DKK = T.let(:dkk, WhopSDK::Plan::Currency::TaggedSymbol)
        EUR = T.let(:eur, WhopSDK::Plan::Currency::TaggedSymbol)
        NOK = T.let(:nok, WhopSDK::Plan::Currency::TaggedSymbol)
        GBP = T.let(:gbp, WhopSDK::Plan::Currency::TaggedSymbol)
        SEK = T.let(:sek, WhopSDK::Plan::Currency::TaggedSymbol)
        CHF = T.let(:chf, WhopSDK::Plan::Currency::TaggedSymbol)
        HKD = T.let(:hkd, WhopSDK::Plan::Currency::TaggedSymbol)
        HUF = T.let(:huf, WhopSDK::Plan::Currency::TaggedSymbol)
        JPY = T.let(:jpy, WhopSDK::Plan::Currency::TaggedSymbol)
        MXN = T.let(:mxn, WhopSDK::Plan::Currency::TaggedSymbol)
        MYR = T.let(:myr, WhopSDK::Plan::Currency::TaggedSymbol)
        PLN = T.let(:pln, WhopSDK::Plan::Currency::TaggedSymbol)
        CZK = T.let(:czk, WhopSDK::Plan::Currency::TaggedSymbol)
        NZD = T.let(:nzd, WhopSDK::Plan::Currency::TaggedSymbol)
        AED = T.let(:aed, WhopSDK::Plan::Currency::TaggedSymbol)
        ETH = T.let(:eth, WhopSDK::Plan::Currency::TaggedSymbol)
        APE = T.let(:ape, WhopSDK::Plan::Currency::TaggedSymbol)
        COP = T.let(:cop, WhopSDK::Plan::Currency::TaggedSymbol)
        RON = T.let(:ron, WhopSDK::Plan::Currency::TaggedSymbol)
        THB = T.let(:thb, WhopSDK::Plan::Currency::TaggedSymbol)
        BGN = T.let(:bgn, WhopSDK::Plan::Currency::TaggedSymbol)
        IDR = T.let(:idr, WhopSDK::Plan::Currency::TaggedSymbol)
        DOP = T.let(:dop, WhopSDK::Plan::Currency::TaggedSymbol)
        PHP = T.let(:php, WhopSDK::Plan::Currency::TaggedSymbol)
        TRY = T.let(:try, WhopSDK::Plan::Currency::TaggedSymbol)
        KRW = T.let(:krw, WhopSDK::Plan::Currency::TaggedSymbol)
        TWD = T.let(:twd, WhopSDK::Plan::Currency::TaggedSymbol)
        VND = T.let(:vnd, WhopSDK::Plan::Currency::TaggedSymbol)
        PKR = T.let(:pkr, WhopSDK::Plan::Currency::TaggedSymbol)
        CLP = T.let(:clp, WhopSDK::Plan::Currency::TaggedSymbol)
        UYU = T.let(:uyu, WhopSDK::Plan::Currency::TaggedSymbol)
        ARS = T.let(:ars, WhopSDK::Plan::Currency::TaggedSymbol)
        ZAR = T.let(:zar, WhopSDK::Plan::Currency::TaggedSymbol)
        DZD = T.let(:dzd, WhopSDK::Plan::Currency::TaggedSymbol)
        TND = T.let(:tnd, WhopSDK::Plan::Currency::TaggedSymbol)
        MAD = T.let(:mad, WhopSDK::Plan::Currency::TaggedSymbol)
        KES = T.let(:kes, WhopSDK::Plan::Currency::TaggedSymbol)
        KWD = T.let(:kwd, WhopSDK::Plan::Currency::TaggedSymbol)
        JOD = T.let(:jod, WhopSDK::Plan::Currency::TaggedSymbol)
        ALL = T.let(:all, WhopSDK::Plan::Currency::TaggedSymbol)
        XCD = T.let(:xcd, WhopSDK::Plan::Currency::TaggedSymbol)
        AMD = T.let(:amd, WhopSDK::Plan::Currency::TaggedSymbol)
        BSD = T.let(:bsd, WhopSDK::Plan::Currency::TaggedSymbol)
        BHD = T.let(:bhd, WhopSDK::Plan::Currency::TaggedSymbol)
        BOB = T.let(:bob, WhopSDK::Plan::Currency::TaggedSymbol)
        BAM = T.let(:bam, WhopSDK::Plan::Currency::TaggedSymbol)
        KHR = T.let(:khr, WhopSDK::Plan::Currency::TaggedSymbol)
        CRC = T.let(:crc, WhopSDK::Plan::Currency::TaggedSymbol)
        XOF = T.let(:xof, WhopSDK::Plan::Currency::TaggedSymbol)
        EGP = T.let(:egp, WhopSDK::Plan::Currency::TaggedSymbol)
        ETB = T.let(:etb, WhopSDK::Plan::Currency::TaggedSymbol)
        GMD = T.let(:gmd, WhopSDK::Plan::Currency::TaggedSymbol)
        GHS = T.let(:ghs, WhopSDK::Plan::Currency::TaggedSymbol)
        GTQ = T.let(:gtq, WhopSDK::Plan::Currency::TaggedSymbol)
        GYD = T.let(:gyd, WhopSDK::Plan::Currency::TaggedSymbol)
        ILS = T.let(:ils, WhopSDK::Plan::Currency::TaggedSymbol)
        JMD = T.let(:jmd, WhopSDK::Plan::Currency::TaggedSymbol)
        MOP = T.let(:mop, WhopSDK::Plan::Currency::TaggedSymbol)
        MGA = T.let(:mga, WhopSDK::Plan::Currency::TaggedSymbol)
        MUR = T.let(:mur, WhopSDK::Plan::Currency::TaggedSymbol)
        MDL = T.let(:mdl, WhopSDK::Plan::Currency::TaggedSymbol)
        MNT = T.let(:mnt, WhopSDK::Plan::Currency::TaggedSymbol)
        NAD = T.let(:nad, WhopSDK::Plan::Currency::TaggedSymbol)
        NGN = T.let(:ngn, WhopSDK::Plan::Currency::TaggedSymbol)
        MKD = T.let(:mkd, WhopSDK::Plan::Currency::TaggedSymbol)
        OMR = T.let(:omr, WhopSDK::Plan::Currency::TaggedSymbol)
        PYG = T.let(:pyg, WhopSDK::Plan::Currency::TaggedSymbol)
        PEN = T.let(:pen, WhopSDK::Plan::Currency::TaggedSymbol)
        QAR = T.let(:qar, WhopSDK::Plan::Currency::TaggedSymbol)
        RWF = T.let(:rwf, WhopSDK::Plan::Currency::TaggedSymbol)
        SAR = T.let(:sar, WhopSDK::Plan::Currency::TaggedSymbol)
        RSD = T.let(:rsd, WhopSDK::Plan::Currency::TaggedSymbol)
        LKR = T.let(:lkr, WhopSDK::Plan::Currency::TaggedSymbol)
        TZS = T.let(:tzs, WhopSDK::Plan::Currency::TaggedSymbol)
        TTD = T.let(:ttd, WhopSDK::Plan::Currency::TaggedSymbol)
        UZS = T.let(:uzs, WhopSDK::Plan::Currency::TaggedSymbol)
        RUB = T.let(:rub, WhopSDK::Plan::Currency::TaggedSymbol)
        BTC = T.let(:btc, WhopSDK::Plan::Currency::TaggedSymbol)
        CNY = T.let(:cny, WhopSDK::Plan::Currency::TaggedSymbol)
        USDT = T.let(:usdt, WhopSDK::Plan::Currency::TaggedSymbol)
        KZT = T.let(:kzt, WhopSDK::Plan::Currency::TaggedSymbol)
        AWG = T.let(:awg, WhopSDK::Plan::Currency::TaggedSymbol)
        WHOP_USD = T.let(:whop_usd, WhopSDK::Plan::Currency::TaggedSymbol)
        XAU = T.let(:xau, WhopSDK::Plan::Currency::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Plan::Currency::TaggedSymbol])
        end
        def self.values
        end
      end

      class CustomField < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Plan::CustomField, WhopSDK::Internal::AnyHash)
          end

        # Custom field ID, prefixed `field_`.
        sig { returns(String) }
        attr_accessor :id

        # Custom field input type.
        sig { returns(WhopSDK::Plan::CustomField::FieldType::TaggedSymbol) }
        attr_accessor :field_type

        # Field label shown to customer at checkout.
        sig { returns(String) }
        attr_accessor :name

        # Field position on checkout form.
        sig { returns(Float) }
        attr_accessor :order

        # Placeholder text shown in the empty field. `null` if none is set.
        sig { returns(T.nilable(String)) }
        attr_accessor :placeholder

        # Whether the customer must complete this field to check out.
        sig { returns(T::Boolean) }
        attr_accessor :required

        # Custom input fields collected on the checkout form.
        sig do
          params(
            id: String,
            field_type: WhopSDK::Plan::CustomField::FieldType::OrSymbol,
            name: String,
            order: Float,
            placeholder: T.nilable(String),
            required: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Custom field ID, prefixed `field_`.
          id:,
          # Custom field input type.
          field_type:,
          # Field label shown to customer at checkout.
          name:,
          # Field position on checkout form.
          order:,
          # Placeholder text shown in the empty field. `null` if none is set.
          placeholder:,
          # Whether the customer must complete this field to check out.
          required:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              field_type: WhopSDK::Plan::CustomField::FieldType::TaggedSymbol,
              name: String,
              order: Float,
              placeholder: T.nilable(String),
              required: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Custom field input type.
        module FieldType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Plan::CustomField::FieldType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(:text, WhopSDK::Plan::CustomField::FieldType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::Plan::CustomField::FieldType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class EffectivePaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Plan::EffectivePaymentMethodConfiguration,
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

        # The configuration governing a checkout for this plan, resolved through every
        # layer (the plan's own and the account's) — the shape a session's
        # `payment_method_configuration` carries. Apply it over the payment method types
        # catalogue for the offerable set. `null` means platform defaults;
        # `payment_method_configuration` stays the plan's own editable override.
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

      # Billing model for this plan.
      module PlanType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Plan::PlanType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RENEWAL = T.let(:renewal, WhopSDK::Plan::PlanType::TaggedSymbol)
        ONE_TIME = T.let(:one_time, WhopSDK::Plan::PlanType::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Plan::PlanType::TaggedSymbol])
        end
        def self.values
        end
      end

      # Sales method for this plan.
      module ReleaseMethod
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Plan::ReleaseMethod) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUY_NOW = T.let(:buy_now, WhopSDK::Plan::ReleaseMethod::TaggedSymbol)
        WAITLIST = T.let(:waitlist, WhopSDK::Plan::ReleaseMethod::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Plan::ReleaseMethod::TaggedSymbol])
        end
        def self.values
        end
      end

      # How tax is handled for this plan, including whether tax is included in the
      # price, added at checkout, or not configured.
      module TaxType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Plan::TaxType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCLUSIVE = T.let(:inclusive, WhopSDK::Plan::TaxType::TaggedSymbol)
        EXCLUSIVE = T.let(:exclusive, WhopSDK::Plan::TaxType::TaggedSymbol)
        UNSPECIFIED = T.let(:unspecified, WhopSDK::Plan::TaxType::TaggedSymbol)

        sig { override.returns(T::Array[WhopSDK::Plan::TaxType::TaggedSymbol]) }
        def self.values
        end
      end

      # 3D Secure behavior for this plan; `null` inherits the account default.
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Plan::ThreeDSLevel) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANDATE_CHALLENGE =
          T.let(:mandate_challenge, WhopSDK::Plan::ThreeDSLevel::TaggedSymbol)
        FRICTIONLESS =
          T.let(:frictionless, WhopSDK::Plan::ThreeDSLevel::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Plan::ThreeDSLevel::TaggedSymbol])
        end
        def self.values
        end
      end

      # Controls where this plan can be seen. When `hidden`, the plan is reachable only
      # by its direct link.
      module Visibility
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Plan::Visibility) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VISIBLE = T.let(:visible, WhopSDK::Plan::Visibility::TaggedSymbol)
        HIDDEN = T.let(:hidden, WhopSDK::Plan::Visibility::TaggedSymbol)
        ARCHIVED = T.let(:archived, WhopSDK::Plan::Visibility::TaggedSymbol)
        QUICK_LINK = T.let(:quick_link, WhopSDK::Plan::Visibility::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Plan::Visibility::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
