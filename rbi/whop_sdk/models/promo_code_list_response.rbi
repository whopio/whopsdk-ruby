# typed: strong

module WhopSDK
  module Models
    class PromoCodeListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PromoCodeListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Promo code ID, prefixed `promo_`.
      sig { returns(String) }
      attr_accessor :id

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
      sig do
        returns(WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol)
      end
      attr_accessor :currency

      # How long the discount applies.
      sig do
        returns(WhopSDK::Models::PromoCodeListResponse::Duration::TaggedSymbol)
      end
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
      sig do
        returns(T.nilable(WhopSDK::Models::PromoCodeListResponse::Product))
      end
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(WhopSDK::Models::PromoCodeListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # Billing intervals the discount applies to.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :promo_duration_months

      # Whether the discount is percentage-based or a fixed amount.
      sig do
        returns(WhopSDK::Models::PromoCodeListResponse::PromoType::TaggedSymbol)
      end
      attr_accessor :promo_type

      # Promo code lifecycle status.
      sig do
        returns(WhopSDK::Models::PromoCodeListResponse::Status::TaggedSymbol)
      end
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
          amount_off: Float,
          churned_users_only: T::Boolean,
          code: T.nilable(String),
          created_at: String,
          currency: WhopSDK::Models::PromoCodeListResponse::Currency::OrSymbol,
          duration: WhopSDK::Models::PromoCodeListResponse::Duration::OrSymbol,
          existing_memberships_only: T::Boolean,
          expires_at: T.nilable(String),
          metadata: T.anything,
          new_users_only: T::Boolean,
          one_per_customer: T::Boolean,
          product:
            T.nilable(WhopSDK::Models::PromoCodeListResponse::Product::OrHash),
          promo_duration_months: T.nilable(Integer),
          promo_type:
            WhopSDK::Models::PromoCodeListResponse::PromoType::OrSymbol,
          status: WhopSDK::Models::PromoCodeListResponse::Status::OrSymbol,
          stock: Integer,
          unlimited_stock: T::Boolean,
          updated_at: String,
          uses: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Promo code ID, prefixed `promo_`.
        id:,
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
            amount_off: Float,
            churned_users_only: T::Boolean,
            code: T.nilable(String),
            created_at: String,
            currency:
              WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol,
            duration:
              WhopSDK::Models::PromoCodeListResponse::Duration::TaggedSymbol,
            existing_memberships_only: T::Boolean,
            expires_at: T.nilable(String),
            metadata: T.anything,
            new_users_only: T::Boolean,
            one_per_customer: T::Boolean,
            product: T.nilable(WhopSDK::Models::PromoCodeListResponse::Product),
            promo_duration_months: T.nilable(Integer),
            promo_type:
              WhopSDK::Models::PromoCodeListResponse::PromoType::TaggedSymbol,
            status:
              WhopSDK::Models::PromoCodeListResponse::Status::TaggedSymbol,
            stock: Integer,
            unlimited_stock: T::Boolean,
            updated_at: String,
            uses: Integer
          }
        )
      end
      def to_hash
      end

      # Currency used for a fixed-amount discount.
      module Currency
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PromoCodeListResponse::Currency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USD =
          T.let(
            :usd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        SGD =
          T.let(
            :sgd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        INR =
          T.let(
            :inr,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        AUD =
          T.let(
            :aud,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        BRL =
          T.let(
            :brl,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        CAD =
          T.let(
            :cad,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        DKK =
          T.let(
            :dkk,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        EUR =
          T.let(
            :eur,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        NOK =
          T.let(
            :nok,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        GBP =
          T.let(
            :gbp,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        SEK =
          T.let(
            :sek,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        CHF =
          T.let(
            :chf,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        HKD =
          T.let(
            :hkd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        HUF =
          T.let(
            :huf,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        JPY =
          T.let(
            :jpy,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        MXN =
          T.let(
            :mxn,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        MYR =
          T.let(
            :myr,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        PLN =
          T.let(
            :pln,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        CZK =
          T.let(
            :czk,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        NZD =
          T.let(
            :nzd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        AED =
          T.let(
            :aed,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        ETH =
          T.let(
            :eth,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        APE =
          T.let(
            :ape,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        COP =
          T.let(
            :cop,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        RON =
          T.let(
            :ron,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        THB =
          T.let(
            :thb,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        BGN =
          T.let(
            :bgn,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        IDR =
          T.let(
            :idr,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        DOP =
          T.let(
            :dop,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        PHP =
          T.let(
            :php,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        TRY =
          T.let(
            :try,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        KRW =
          T.let(
            :krw,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        TWD =
          T.let(
            :twd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        VND =
          T.let(
            :vnd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        PKR =
          T.let(
            :pkr,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        CLP =
          T.let(
            :clp,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        UYU =
          T.let(
            :uyu,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        ARS =
          T.let(
            :ars,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        ZAR =
          T.let(
            :zar,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        DZD =
          T.let(
            :dzd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        TND =
          T.let(
            :tnd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        MAD =
          T.let(
            :mad,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        KES =
          T.let(
            :kes,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        KWD =
          T.let(
            :kwd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        JOD =
          T.let(
            :jod,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        ALL =
          T.let(
            :all,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        XCD =
          T.let(
            :xcd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        AMD =
          T.let(
            :amd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        BSD =
          T.let(
            :bsd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        BHD =
          T.let(
            :bhd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        BOB =
          T.let(
            :bob,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        BAM =
          T.let(
            :bam,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        KHR =
          T.let(
            :khr,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        CRC =
          T.let(
            :crc,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        XOF =
          T.let(
            :xof,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        EGP =
          T.let(
            :egp,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        ETB =
          T.let(
            :etb,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        GMD =
          T.let(
            :gmd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        GHS =
          T.let(
            :ghs,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        GTQ =
          T.let(
            :gtq,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        GYD =
          T.let(
            :gyd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        ILS =
          T.let(
            :ils,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        JMD =
          T.let(
            :jmd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        MOP =
          T.let(
            :mop,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        MGA =
          T.let(
            :mga,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        MUR =
          T.let(
            :mur,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        MDL =
          T.let(
            :mdl,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        MNT =
          T.let(
            :mnt,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        NAD =
          T.let(
            :nad,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        NGN =
          T.let(
            :ngn,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        MKD =
          T.let(
            :mkd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        OMR =
          T.let(
            :omr,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        PYG =
          T.let(
            :pyg,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        PEN =
          T.let(
            :pen,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        QAR =
          T.let(
            :qar,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        RWF =
          T.let(
            :rwf,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        SAR =
          T.let(
            :sar,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        RSD =
          T.let(
            :rsd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        LKR =
          T.let(
            :lkr,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        TZS =
          T.let(
            :tzs,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        TTD =
          T.let(
            :ttd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        UZS =
          T.let(
            :uzs,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        RUB =
          T.let(
            :rub,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        BTC =
          T.let(
            :btc,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        CNY =
          T.let(
            :cny,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        USDT =
          T.let(
            :usdt,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        KZT =
          T.let(
            :kzt,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        AWG =
          T.let(
            :awg,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        WHOP_USD =
          T.let(
            :whop_usd,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )
        XAU =
          T.let(
            :xau,
            WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PromoCodeListResponse::Currency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # How long the discount applies.
      module Duration
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PromoCodeListResponse::Duration)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FOREVER =
          T.let(
            :forever,
            WhopSDK::Models::PromoCodeListResponse::Duration::TaggedSymbol
          )
        ONCE =
          T.let(
            :once,
            WhopSDK::Models::PromoCodeListResponse::Duration::TaggedSymbol
          )
        REPEATING =
          T.let(
            :repeating,
            WhopSDK::Models::PromoCodeListResponse::Duration::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PromoCodeListResponse::Duration::TaggedSymbol
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
              WhopSDK::Models::PromoCodeListResponse::Product,
              WhopSDK::Internal::AnyHash
            )
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
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PromoCodeListResponse::PromoType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE =
          T.let(
            :percentage,
            WhopSDK::Models::PromoCodeListResponse::PromoType::TaggedSymbol
          )
        FLAT_AMOUNT =
          T.let(
            :flat_amount,
            WhopSDK::Models::PromoCodeListResponse::PromoType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PromoCodeListResponse::PromoType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Promo code lifecycle status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PromoCodeListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            WhopSDK::Models::PromoCodeListResponse::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            WhopSDK::Models::PromoCodeListResponse::Status::TaggedSymbol
          )
        ARCHIVED =
          T.let(
            :archived,
            WhopSDK::Models::PromoCodeListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PromoCodeListResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
