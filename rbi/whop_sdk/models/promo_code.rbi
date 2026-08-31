# typed: strong

module WhopSDK
  module Models
    class PromoCode < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::PromoCode, WhopSDK::Internal::AnyHash) }

      # Promo code ID, prefixed `promo_`.
      sig { returns(String) }
      attr_accessor :id

      # Account that owns the promo code.
      sig { returns(WhopSDK::PromoCode::Account) }
      attr_reader :account

      sig { params(account: WhopSDK::PromoCode::Account::OrHash).void }
      attr_writer :account

      # Discount amount. Percentage discounts are represented as a decimal fraction.
      sig { returns(Float) }
      attr_accessor :amount_off

      # Whether the promo code is restricted to churned customers.
      sig { returns(T::Boolean) }
      attr_accessor :churned_users_only

      # Code entered at checkout.
      sig { returns(T.nilable(String)) }
      attr_accessor :code

      # When the promo code was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Currency used for a fixed-amount discount.
      sig { returns(WhopSDK::PromoCode::Currency::TaggedSymbol) }
      attr_accessor :currency

      # How long the discount applies.
      sig { returns(WhopSDK::PromoCode::Duration::TaggedSymbol) }
      attr_accessor :duration

      # Whether the promo code applies only to existing memberships.
      sig { returns(T::Boolean) }
      attr_accessor :existing_memberships_only

      # When the promo code expires, as an ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_accessor :expires_at

      # Custom key-value metadata stored on the promo code.
      sig { returns(T.anything) }
      attr_accessor :metadata

      # Whether the promo code is restricted to new customers.
      sig { returns(T::Boolean) }
      attr_accessor :new_users_only

      # Whether each customer may redeem the promo code only once.
      sig { returns(T::Boolean) }
      attr_accessor :one_per_customer

      # Product the promo code is restricted to, or `null` when it is not
      # product-scoped.
      sig { returns(T.nilable(WhopSDK::PromoCode::Product)) }
      attr_reader :product

      sig do
        params(product: T.nilable(WhopSDK::PromoCode::Product::OrHash)).void
      end
      attr_writer :product

      # Billing intervals the discount applies to.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :promo_duration_months

      # Whether the discount is percentage-based or a fixed amount.
      sig { returns(WhopSDK::PromoCode::PromoType::TaggedSymbol) }
      attr_accessor :promo_type

      # Promo code lifecycle status.
      sig { returns(WhopSDK::PromoCode::Status::TaggedSymbol) }
      attr_accessor :status

      # Maximum uses when stock is limited.
      sig { returns(Integer) }
      attr_accessor :stock

      # Whether the promo code has no redemption limit.
      sig { returns(T::Boolean) }
      attr_accessor :unlimited_stock

      # When the promo code was updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # Memberships that used the promo code.
      sig { returns(Integer) }
      attr_accessor :uses

      sig do
        params(
          id: String,
          account: WhopSDK::PromoCode::Account::OrHash,
          amount_off: Float,
          churned_users_only: T::Boolean,
          code: T.nilable(String),
          created_at: String,
          currency: WhopSDK::PromoCode::Currency::OrSymbol,
          duration: WhopSDK::PromoCode::Duration::OrSymbol,
          existing_memberships_only: T::Boolean,
          expires_at: T.nilable(String),
          metadata: T.anything,
          new_users_only: T::Boolean,
          one_per_customer: T::Boolean,
          product: T.nilable(WhopSDK::PromoCode::Product::OrHash),
          promo_duration_months: T.nilable(Integer),
          promo_type: WhopSDK::PromoCode::PromoType::OrSymbol,
          status: WhopSDK::PromoCode::Status::OrSymbol,
          stock: Integer,
          unlimited_stock: T::Boolean,
          updated_at: String,
          uses: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Promo code ID, prefixed `promo_`.
        id:,
        # Account that owns the promo code.
        account:,
        # Discount amount. Percentage discounts are represented as a decimal fraction.
        amount_off:,
        # Whether the promo code is restricted to churned customers.
        churned_users_only:,
        # Code entered at checkout.
        code:,
        # When the promo code was created, as an ISO 8601 timestamp.
        created_at:,
        # Currency used for a fixed-amount discount.
        currency:,
        # How long the discount applies.
        duration:,
        # Whether the promo code applies only to existing memberships.
        existing_memberships_only:,
        # When the promo code expires, as an ISO 8601 timestamp.
        expires_at:,
        # Custom key-value metadata stored on the promo code.
        metadata:,
        # Whether the promo code is restricted to new customers.
        new_users_only:,
        # Whether each customer may redeem the promo code only once.
        one_per_customer:,
        # Product the promo code is restricted to, or `null` when it is not
        # product-scoped.
        product:,
        # Billing intervals the discount applies to.
        promo_duration_months:,
        # Whether the discount is percentage-based or a fixed amount.
        promo_type:,
        # Promo code lifecycle status.
        status:,
        # Maximum uses when stock is limited.
        stock:,
        # Whether the promo code has no redemption limit.
        unlimited_stock:,
        # When the promo code was updated, as an ISO 8601 timestamp.
        updated_at:,
        # Memberships that used the promo code.
        uses:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account: WhopSDK::PromoCode::Account,
            amount_off: Float,
            churned_users_only: T::Boolean,
            code: T.nilable(String),
            created_at: String,
            currency: WhopSDK::PromoCode::Currency::TaggedSymbol,
            duration: WhopSDK::PromoCode::Duration::TaggedSymbol,
            existing_memberships_only: T::Boolean,
            expires_at: T.nilable(String),
            metadata: T.anything,
            new_users_only: T::Boolean,
            one_per_customer: T::Boolean,
            product: T.nilable(WhopSDK::PromoCode::Product),
            promo_duration_months: T.nilable(Integer),
            promo_type: WhopSDK::PromoCode::PromoType::TaggedSymbol,
            status: WhopSDK::PromoCode::Status::TaggedSymbol,
            stock: Integer,
            unlimited_stock: T::Boolean,
            updated_at: String,
            uses: Integer
          }
        )
      end
      def to_hash
      end

      class Account < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::PromoCode::Account, WhopSDK::Internal::AnyHash)
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        # Account display name.
        sig { returns(String) }
        attr_accessor :title

        # Account that owns the promo code.
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

      # Currency used for a fixed-amount discount.
      module Currency
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PromoCode::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USD = T.let(:usd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        SGD = T.let(:sgd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        INR = T.let(:inr, WhopSDK::PromoCode::Currency::TaggedSymbol)
        AUD = T.let(:aud, WhopSDK::PromoCode::Currency::TaggedSymbol)
        BRL = T.let(:brl, WhopSDK::PromoCode::Currency::TaggedSymbol)
        CAD = T.let(:cad, WhopSDK::PromoCode::Currency::TaggedSymbol)
        DKK = T.let(:dkk, WhopSDK::PromoCode::Currency::TaggedSymbol)
        EUR = T.let(:eur, WhopSDK::PromoCode::Currency::TaggedSymbol)
        NOK = T.let(:nok, WhopSDK::PromoCode::Currency::TaggedSymbol)
        GBP = T.let(:gbp, WhopSDK::PromoCode::Currency::TaggedSymbol)
        SEK = T.let(:sek, WhopSDK::PromoCode::Currency::TaggedSymbol)
        CHF = T.let(:chf, WhopSDK::PromoCode::Currency::TaggedSymbol)
        HKD = T.let(:hkd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        HUF = T.let(:huf, WhopSDK::PromoCode::Currency::TaggedSymbol)
        JPY = T.let(:jpy, WhopSDK::PromoCode::Currency::TaggedSymbol)
        MXN = T.let(:mxn, WhopSDK::PromoCode::Currency::TaggedSymbol)
        MYR = T.let(:myr, WhopSDK::PromoCode::Currency::TaggedSymbol)
        PLN = T.let(:pln, WhopSDK::PromoCode::Currency::TaggedSymbol)
        CZK = T.let(:czk, WhopSDK::PromoCode::Currency::TaggedSymbol)
        NZD = T.let(:nzd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        AED = T.let(:aed, WhopSDK::PromoCode::Currency::TaggedSymbol)
        ETH = T.let(:eth, WhopSDK::PromoCode::Currency::TaggedSymbol)
        APE = T.let(:ape, WhopSDK::PromoCode::Currency::TaggedSymbol)
        COP = T.let(:cop, WhopSDK::PromoCode::Currency::TaggedSymbol)
        RON = T.let(:ron, WhopSDK::PromoCode::Currency::TaggedSymbol)
        THB = T.let(:thb, WhopSDK::PromoCode::Currency::TaggedSymbol)
        BGN = T.let(:bgn, WhopSDK::PromoCode::Currency::TaggedSymbol)
        IDR = T.let(:idr, WhopSDK::PromoCode::Currency::TaggedSymbol)
        DOP = T.let(:dop, WhopSDK::PromoCode::Currency::TaggedSymbol)
        PHP = T.let(:php, WhopSDK::PromoCode::Currency::TaggedSymbol)
        TRY = T.let(:try, WhopSDK::PromoCode::Currency::TaggedSymbol)
        KRW = T.let(:krw, WhopSDK::PromoCode::Currency::TaggedSymbol)
        TWD = T.let(:twd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        VND = T.let(:vnd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        PKR = T.let(:pkr, WhopSDK::PromoCode::Currency::TaggedSymbol)
        CLP = T.let(:clp, WhopSDK::PromoCode::Currency::TaggedSymbol)
        UYU = T.let(:uyu, WhopSDK::PromoCode::Currency::TaggedSymbol)
        ARS = T.let(:ars, WhopSDK::PromoCode::Currency::TaggedSymbol)
        ZAR = T.let(:zar, WhopSDK::PromoCode::Currency::TaggedSymbol)
        DZD = T.let(:dzd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        TND = T.let(:tnd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        MAD = T.let(:mad, WhopSDK::PromoCode::Currency::TaggedSymbol)
        KES = T.let(:kes, WhopSDK::PromoCode::Currency::TaggedSymbol)
        KWD = T.let(:kwd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        JOD = T.let(:jod, WhopSDK::PromoCode::Currency::TaggedSymbol)
        ALL = T.let(:all, WhopSDK::PromoCode::Currency::TaggedSymbol)
        XCD = T.let(:xcd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        AMD = T.let(:amd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        BSD = T.let(:bsd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        BHD = T.let(:bhd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        BOB = T.let(:bob, WhopSDK::PromoCode::Currency::TaggedSymbol)
        BAM = T.let(:bam, WhopSDK::PromoCode::Currency::TaggedSymbol)
        KHR = T.let(:khr, WhopSDK::PromoCode::Currency::TaggedSymbol)
        CRC = T.let(:crc, WhopSDK::PromoCode::Currency::TaggedSymbol)
        XOF = T.let(:xof, WhopSDK::PromoCode::Currency::TaggedSymbol)
        EGP = T.let(:egp, WhopSDK::PromoCode::Currency::TaggedSymbol)
        ETB = T.let(:etb, WhopSDK::PromoCode::Currency::TaggedSymbol)
        GMD = T.let(:gmd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        GHS = T.let(:ghs, WhopSDK::PromoCode::Currency::TaggedSymbol)
        GTQ = T.let(:gtq, WhopSDK::PromoCode::Currency::TaggedSymbol)
        GYD = T.let(:gyd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        ILS = T.let(:ils, WhopSDK::PromoCode::Currency::TaggedSymbol)
        JMD = T.let(:jmd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        MOP = T.let(:mop, WhopSDK::PromoCode::Currency::TaggedSymbol)
        MGA = T.let(:mga, WhopSDK::PromoCode::Currency::TaggedSymbol)
        MUR = T.let(:mur, WhopSDK::PromoCode::Currency::TaggedSymbol)
        MDL = T.let(:mdl, WhopSDK::PromoCode::Currency::TaggedSymbol)
        MNT = T.let(:mnt, WhopSDK::PromoCode::Currency::TaggedSymbol)
        NAD = T.let(:nad, WhopSDK::PromoCode::Currency::TaggedSymbol)
        NGN = T.let(:ngn, WhopSDK::PromoCode::Currency::TaggedSymbol)
        MKD = T.let(:mkd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        OMR = T.let(:omr, WhopSDK::PromoCode::Currency::TaggedSymbol)
        PYG = T.let(:pyg, WhopSDK::PromoCode::Currency::TaggedSymbol)
        PEN = T.let(:pen, WhopSDK::PromoCode::Currency::TaggedSymbol)
        QAR = T.let(:qar, WhopSDK::PromoCode::Currency::TaggedSymbol)
        RWF = T.let(:rwf, WhopSDK::PromoCode::Currency::TaggedSymbol)
        SAR = T.let(:sar, WhopSDK::PromoCode::Currency::TaggedSymbol)
        RSD = T.let(:rsd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        LKR = T.let(:lkr, WhopSDK::PromoCode::Currency::TaggedSymbol)
        TZS = T.let(:tzs, WhopSDK::PromoCode::Currency::TaggedSymbol)
        TTD = T.let(:ttd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        UZS = T.let(:uzs, WhopSDK::PromoCode::Currency::TaggedSymbol)
        RUB = T.let(:rub, WhopSDK::PromoCode::Currency::TaggedSymbol)
        BTC = T.let(:btc, WhopSDK::PromoCode::Currency::TaggedSymbol)
        CNY = T.let(:cny, WhopSDK::PromoCode::Currency::TaggedSymbol)
        USDT = T.let(:usdt, WhopSDK::PromoCode::Currency::TaggedSymbol)
        KZT = T.let(:kzt, WhopSDK::PromoCode::Currency::TaggedSymbol)
        AWG = T.let(:awg, WhopSDK::PromoCode::Currency::TaggedSymbol)
        WHOP_USD = T.let(:whop_usd, WhopSDK::PromoCode::Currency::TaggedSymbol)
        XAU = T.let(:xau, WhopSDK::PromoCode::Currency::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::PromoCode::Currency::TaggedSymbol])
        end
        def self.values
        end
      end

      # How long the discount applies.
      module Duration
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PromoCode::Duration) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FOREVER = T.let(:forever, WhopSDK::PromoCode::Duration::TaggedSymbol)
        ONCE = T.let(:once, WhopSDK::PromoCode::Duration::TaggedSymbol)
        REPEATING =
          T.let(:repeating, WhopSDK::PromoCode::Duration::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::PromoCode::Duration::TaggedSymbol])
        end
        def self.values
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::PromoCode::Product, WhopSDK::Internal::AnyHash)
          end

        # Product ID, prefixed `prod_`.
        sig { returns(String) }
        attr_accessor :id

        # Product display name.
        sig { returns(String) }
        attr_accessor :title

        # Product the promo code is restricted to, or `null` when it is not
        # product-scoped.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # Product ID, prefixed `prod_`.
          id:,
          # Product display name.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      # Whether the discount is percentage-based or a fixed amount.
      module PromoType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PromoCode::PromoType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE =
          T.let(:percentage, WhopSDK::PromoCode::PromoType::TaggedSymbol)
        FLAT_AMOUNT =
          T.let(:flat_amount, WhopSDK::PromoCode::PromoType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::PromoCode::PromoType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Promo code lifecycle status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PromoCode::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, WhopSDK::PromoCode::Status::TaggedSymbol)
        INACTIVE = T.let(:inactive, WhopSDK::PromoCode::Status::TaggedSymbol)
        ARCHIVED = T.let(:archived, WhopSDK::PromoCode::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::PromoCode::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
