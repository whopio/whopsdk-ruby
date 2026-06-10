# typed: strong

module WhopSDK
  module Models
    class Plan < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::Plan, WhopSDK::Internal::AnyHash) }

      # The ID of the plan, which will look like plan\_******\*******
      sig { returns(String) }
      attr_accessor :id

      # Whether this plan accepts local currency payments via adaptive pricing
      sig { returns(T::Boolean) }
      attr_accessor :adaptive_pricing_enabled

      # The number of days between recurring charges. Null for one-time plans
      sig { returns(T.nilable(Float)) }
      attr_accessor :billing_period

      # Whether tax is collected on purchases of this plan
      sig { returns(T::Boolean) }
      attr_accessor :collect_tax

      # The company that sells this plan, an object with an id and title. Null for
      # standalone invoice plans
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :company

      # When the plan was created, as an ISO 8601 timestamp
      sig { returns(String) }
      attr_accessor :created_at

      # The three-letter ISO currency code all prices on this plan are denominated in
      sig { returns(WhopSDK::Plan::Currency::TaggedSymbol) }
      attr_accessor :currency

      # Custom input fields displayed on the checkout form, objects with id, field_type,
      # name, order, placeholder and required
      sig { returns(T::Array[T.anything]) }
      attr_accessor :custom_fields

      # A text description of the plan visible to customers
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The number of days until the membership expires, for expiration-based plans
      sig { returns(T.nilable(Float)) }
      attr_accessor :expiration_days

      # The initial purchase price in the plan's currency
      sig { returns(Float) }
      attr_accessor :initial_price

      # Private notes visible only to authorized team members
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # The invoice this plan was generated for, an object with an id. Null unless the
      # plan was created for an invoice
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :invoice

      # The number of active memberships on this plan. Only visible to authorized team
      # members
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_count

      # Custom key-value pairs stored on the plan
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # The explicit payment method configuration for the plan, an object with enabled,
      # disabled and include_platform_defaults. Null if the plan uses default settings
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :payment_method_configuration

      # The billing model for this plan: 'renewal' for recurring subscriptions or
      # 'one_time' for single payments
      sig { returns(WhopSDK::Plan::PlanType::TaggedSymbol) }
      attr_accessor :plan_type

      # The product this plan belongs to, an object with an id and title. Null for
      # standalone plans
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :product

      # The full URL where customers can purchase this plan directly
      sig { returns(String) }
      attr_accessor :purchase_url

      # The method used to sell this plan, e.g. 'buy_now' or 'waitlist'
      sig { returns(WhopSDK::Plan::ReleaseMethod::TaggedSymbol) }
      attr_accessor :release_method

      # The recurring price charged every billing period in the plan's currency
      sig { returns(Float) }
      attr_accessor :renewal_price

      # The number of installment payments required before the subscription pauses
      sig { returns(T.nilable(Float)) }
      attr_accessor :split_pay_required_payments

      # The number of units available for purchase. Only visible to authorized team
      # members
      sig { returns(T.nilable(Float)) }
      attr_accessor :stock

      # How tax is handled for this plan: 'inclusive', 'exclusive', or 'unspecified'
      sig { returns(String) }
      attr_accessor :tax_type

      # The 3D Secure behavior for this plan. Null means the plan inherits the account
      # default
      sig { returns(T.nilable(WhopSDK::Plan::ThreeDSLevel::TaggedSymbol)) }
      attr_accessor :three_ds_level

      # The display name of the plan shown to customers
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The number of free trial days before the first charge on a recurring plan
      sig { returns(T.nilable(Float)) }
      attr_accessor :trial_period_days

      # Whether the plan has unlimited stock
      sig { returns(T::Boolean) }
      attr_accessor :unlimited_stock

      # When the plan was last updated, as an ISO 8601 timestamp
      sig { returns(String) }
      attr_accessor :updated_at

      # Whether the plan is visible to customers or hidden from public view
      sig { returns(WhopSDK::Plan::Visibility::TaggedSymbol) }
      attr_accessor :visibility

      sig do
        params(
          id: String,
          adaptive_pricing_enabled: T::Boolean,
          billing_period: T.nilable(Float),
          collect_tax: T::Boolean,
          company: T.nilable(T.anything),
          created_at: String,
          currency: WhopSDK::Plan::Currency::OrSymbol,
          custom_fields: T::Array[T.anything],
          description: T.nilable(String),
          expiration_days: T.nilable(Float),
          initial_price: Float,
          internal_notes: T.nilable(String),
          invoice: T.nilable(T.anything),
          member_count: T.nilable(Float),
          metadata: T.nilable(T.anything),
          payment_method_configuration: T.nilable(T.anything),
          plan_type: WhopSDK::Plan::PlanType::OrSymbol,
          product: T.nilable(T.anything),
          purchase_url: String,
          release_method: WhopSDK::Plan::ReleaseMethod::OrSymbol,
          renewal_price: Float,
          split_pay_required_payments: T.nilable(Float),
          stock: T.nilable(Float),
          tax_type: String,
          three_ds_level: T.nilable(WhopSDK::Plan::ThreeDSLevel::OrSymbol),
          title: T.nilable(String),
          trial_period_days: T.nilable(Float),
          unlimited_stock: T::Boolean,
          updated_at: String,
          visibility: WhopSDK::Plan::Visibility::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the plan, which will look like plan\_******\*******
        id:,
        # Whether this plan accepts local currency payments via adaptive pricing
        adaptive_pricing_enabled:,
        # The number of days between recurring charges. Null for one-time plans
        billing_period:,
        # Whether tax is collected on purchases of this plan
        collect_tax:,
        # The company that sells this plan, an object with an id and title. Null for
        # standalone invoice plans
        company:,
        # When the plan was created, as an ISO 8601 timestamp
        created_at:,
        # The three-letter ISO currency code all prices on this plan are denominated in
        currency:,
        # Custom input fields displayed on the checkout form, objects with id, field_type,
        # name, order, placeholder and required
        custom_fields:,
        # A text description of the plan visible to customers
        description:,
        # The number of days until the membership expires, for expiration-based plans
        expiration_days:,
        # The initial purchase price in the plan's currency
        initial_price:,
        # Private notes visible only to authorized team members
        internal_notes:,
        # The invoice this plan was generated for, an object with an id. Null unless the
        # plan was created for an invoice
        invoice:,
        # The number of active memberships on this plan. Only visible to authorized team
        # members
        member_count:,
        # Custom key-value pairs stored on the plan
        metadata:,
        # The explicit payment method configuration for the plan, an object with enabled,
        # disabled and include_platform_defaults. Null if the plan uses default settings
        payment_method_configuration:,
        # The billing model for this plan: 'renewal' for recurring subscriptions or
        # 'one_time' for single payments
        plan_type:,
        # The product this plan belongs to, an object with an id and title. Null for
        # standalone plans
        product:,
        # The full URL where customers can purchase this plan directly
        purchase_url:,
        # The method used to sell this plan, e.g. 'buy_now' or 'waitlist'
        release_method:,
        # The recurring price charged every billing period in the plan's currency
        renewal_price:,
        # The number of installment payments required before the subscription pauses
        split_pay_required_payments:,
        # The number of units available for purchase. Only visible to authorized team
        # members
        stock:,
        # How tax is handled for this plan: 'inclusive', 'exclusive', or 'unspecified'
        tax_type:,
        # The 3D Secure behavior for this plan. Null means the plan inherits the account
        # default
        three_ds_level:,
        # The display name of the plan shown to customers
        title:,
        # The number of free trial days before the first charge on a recurring plan
        trial_period_days:,
        # Whether the plan has unlimited stock
        unlimited_stock:,
        # When the plan was last updated, as an ISO 8601 timestamp
        updated_at:,
        # Whether the plan is visible to customers or hidden from public view
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adaptive_pricing_enabled: T::Boolean,
            billing_period: T.nilable(Float),
            collect_tax: T::Boolean,
            company: T.nilable(T.anything),
            created_at: String,
            currency: WhopSDK::Plan::Currency::TaggedSymbol,
            custom_fields: T::Array[T.anything],
            description: T.nilable(String),
            expiration_days: T.nilable(Float),
            initial_price: Float,
            internal_notes: T.nilable(String),
            invoice: T.nilable(T.anything),
            member_count: T.nilable(Float),
            metadata: T.nilable(T.anything),
            payment_method_configuration: T.nilable(T.anything),
            plan_type: WhopSDK::Plan::PlanType::TaggedSymbol,
            product: T.nilable(T.anything),
            purchase_url: String,
            release_method: WhopSDK::Plan::ReleaseMethod::TaggedSymbol,
            renewal_price: Float,
            split_pay_required_payments: T.nilable(Float),
            stock: T.nilable(Float),
            tax_type: String,
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

      # The three-letter ISO currency code all prices on this plan are denominated in
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

      # The billing model for this plan: 'renewal' for recurring subscriptions or
      # 'one_time' for single payments
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

      # The method used to sell this plan, e.g. 'buy_now' or 'waitlist'
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

      # The 3D Secure behavior for this plan. Null means the plan inherits the account
      # default
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

      # Whether the plan is visible to customers or hidden from public view
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
