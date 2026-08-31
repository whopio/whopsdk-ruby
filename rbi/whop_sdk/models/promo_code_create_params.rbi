# typed: strong

module WhopSDK
  module Models
    class PromoCodeCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PromoCodeCreateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Float) }
      attr_accessor :amount_off

      sig { returns(WhopSDK::PromoCodeCreateParams::BaseCurrency::OrSymbol) }
      attr_accessor :base_currency

      sig { returns(String) }
      attr_accessor :code

      sig { returns(T::Boolean) }
      attr_accessor :new_users_only

      sig { returns(Integer) }
      attr_accessor :promo_duration_months

      sig { returns(WhopSDK::PromoCodeCreateParams::PromoType::OrSymbol) }
      attr_accessor :promo_type

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :churned_users_only

      sig { params(churned_users_only: T::Boolean).void }
      attr_writer :churned_users_only

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :existing_memberships_only

      sig { params(existing_memberships_only: T::Boolean).void }
      attr_writer :existing_memberships_only

      sig { returns(T.nilable(String)) }
      attr_accessor :expires_at

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :one_per_customer

      sig { params(one_per_customer: T::Boolean).void }
      attr_writer :one_per_customer

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :plan_ids

      sig { params(plan_ids: T::Array[String]).void }
      attr_writer :plan_ids

      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :stock

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :unlimited_stock

      sig { params(unlimited_stock: T::Boolean).void }
      attr_writer :unlimited_stock

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
          amount_off: Float,
          base_currency: WhopSDK::PromoCodeCreateParams::BaseCurrency::OrSymbol,
          code: String,
          new_users_only: T::Boolean,
          promo_duration_months: Integer,
          promo_type: WhopSDK::PromoCodeCreateParams::PromoType::OrSymbol,
          churned_users_only: T::Boolean,
          existing_memberships_only: T::Boolean,
          expires_at: T.nilable(String),
          one_per_customer: T::Boolean,
          plan_ids: T::Array[String],
          product_id: T.nilable(String),
          stock: T.nilable(Integer),
          unlimited_stock: T::Boolean,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
        amount_off:,
        base_currency:,
        code:,
        new_users_only:,
        promo_duration_months:,
        promo_type:,
        churned_users_only: nil,
        existing_memberships_only: nil,
        expires_at: nil,
        one_per_customer: nil,
        plan_ids: nil,
        product_id: nil,
        stock: nil,
        unlimited_stock: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            amount_off: Float,
            base_currency:
              WhopSDK::PromoCodeCreateParams::BaseCurrency::OrSymbol,
            code: String,
            new_users_only: T::Boolean,
            promo_duration_months: Integer,
            promo_type: WhopSDK::PromoCodeCreateParams::PromoType::OrSymbol,
            churned_users_only: T::Boolean,
            existing_memberships_only: T::Boolean,
            expires_at: T.nilable(String),
            one_per_customer: T::Boolean,
            plan_ids: T::Array[String],
            product_id: T.nilable(String),
            stock: T.nilable(Integer),
            unlimited_stock: T::Boolean,
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      module BaseCurrency
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::PromoCodeCreateParams::BaseCurrency)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USD =
          T.let(
            :usd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        SGD =
          T.let(
            :sgd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        INR =
          T.let(
            :inr,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        AUD =
          T.let(
            :aud,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        BRL =
          T.let(
            :brl,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        CAD =
          T.let(
            :cad,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        DKK =
          T.let(
            :dkk,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        EUR =
          T.let(
            :eur,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        NOK =
          T.let(
            :nok,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        GBP =
          T.let(
            :gbp,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        SEK =
          T.let(
            :sek,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        CHF =
          T.let(
            :chf,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        HKD =
          T.let(
            :hkd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        HUF =
          T.let(
            :huf,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        JPY =
          T.let(
            :jpy,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        MXN =
          T.let(
            :mxn,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        MYR =
          T.let(
            :myr,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        PLN =
          T.let(
            :pln,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        CZK =
          T.let(
            :czk,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        NZD =
          T.let(
            :nzd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        AED =
          T.let(
            :aed,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        ETH =
          T.let(
            :eth,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        APE =
          T.let(
            :ape,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        COP =
          T.let(
            :cop,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        RON =
          T.let(
            :ron,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        THB =
          T.let(
            :thb,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        BGN =
          T.let(
            :bgn,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        IDR =
          T.let(
            :idr,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        DOP =
          T.let(
            :dop,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        PHP =
          T.let(
            :php,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        TRY =
          T.let(
            :try,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        KRW =
          T.let(
            :krw,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        TWD =
          T.let(
            :twd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        VND =
          T.let(
            :vnd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        PKR =
          T.let(
            :pkr,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        CLP =
          T.let(
            :clp,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        UYU =
          T.let(
            :uyu,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        ARS =
          T.let(
            :ars,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        ZAR =
          T.let(
            :zar,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        DZD =
          T.let(
            :dzd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        TND =
          T.let(
            :tnd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        MAD =
          T.let(
            :mad,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        KES =
          T.let(
            :kes,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        KWD =
          T.let(
            :kwd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        JOD =
          T.let(
            :jod,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        ALL =
          T.let(
            :all,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        XCD =
          T.let(
            :xcd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        AMD =
          T.let(
            :amd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        BSD =
          T.let(
            :bsd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        BHD =
          T.let(
            :bhd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        BOB =
          T.let(
            :bob,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        BAM =
          T.let(
            :bam,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        KHR =
          T.let(
            :khr,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        CRC =
          T.let(
            :crc,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        XOF =
          T.let(
            :xof,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        EGP =
          T.let(
            :egp,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        ETB =
          T.let(
            :etb,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        GMD =
          T.let(
            :gmd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        GHS =
          T.let(
            :ghs,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        GTQ =
          T.let(
            :gtq,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        GYD =
          T.let(
            :gyd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        ILS =
          T.let(
            :ils,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        JMD =
          T.let(
            :jmd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        MOP =
          T.let(
            :mop,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        MGA =
          T.let(
            :mga,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        MUR =
          T.let(
            :mur,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        MDL =
          T.let(
            :mdl,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        MNT =
          T.let(
            :mnt,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        NAD =
          T.let(
            :nad,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        NGN =
          T.let(
            :ngn,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        MKD =
          T.let(
            :mkd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        OMR =
          T.let(
            :omr,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        PYG =
          T.let(
            :pyg,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        PEN =
          T.let(
            :pen,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        QAR =
          T.let(
            :qar,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        RWF =
          T.let(
            :rwf,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        SAR =
          T.let(
            :sar,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        RSD =
          T.let(
            :rsd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        LKR =
          T.let(
            :lkr,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        TZS =
          T.let(
            :tzs,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        TTD =
          T.let(
            :ttd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        UZS =
          T.let(
            :uzs,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        RUB =
          T.let(
            :rub,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        BTC =
          T.let(
            :btc,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        CNY =
          T.let(
            :cny,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        USDT =
          T.let(
            :usdt,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        KZT =
          T.let(
            :kzt,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        AWG =
          T.let(
            :awg,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        WHOP_USD =
          T.let(
            :whop_usd,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )
        XAU =
          T.let(
            :xau,
            WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::PromoCodeCreateParams::BaseCurrency::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module PromoType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::PromoCodeCreateParams::PromoType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE =
          T.let(
            :percentage,
            WhopSDK::PromoCodeCreateParams::PromoType::TaggedSymbol
          )
        FLAT_AMOUNT =
          T.let(
            :flat_amount,
            WhopSDK::PromoCodeCreateParams::PromoType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::PromoCodeCreateParams::PromoType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
