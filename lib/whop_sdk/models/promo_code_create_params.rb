# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PromoCodes#create
    class PromoCodeCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount_off
      #
      #   @return [Float]
      required :amount_off, Float

      # @!attribute base_currency
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeCreateParams::BaseCurrency]
      required :base_currency, enum: -> { WhopSDK::PromoCodeCreateParams::BaseCurrency }

      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute new_users_only
      #
      #   @return [Boolean]
      required :new_users_only, WhopSDK::Internal::Type::Boolean

      # @!attribute promo_duration_months
      #
      #   @return [Integer]
      required :promo_duration_months, Integer

      # @!attribute promo_type
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeCreateParams::PromoType]
      required :promo_type, enum: -> { WhopSDK::PromoCodeCreateParams::PromoType }

      # @!attribute churned_users_only
      #
      #   @return [Boolean, nil]
      optional :churned_users_only, WhopSDK::Internal::Type::Boolean

      # @!attribute existing_memberships_only
      #
      #   @return [Boolean, nil]
      optional :existing_memberships_only, WhopSDK::Internal::Type::Boolean

      # @!attribute expires_at
      #
      #   @return [String, nil]
      optional :expires_at, String, nil?: true

      # @!attribute one_per_customer
      #
      #   @return [Boolean, nil]
      optional :one_per_customer, WhopSDK::Internal::Type::Boolean

      # @!attribute plan_ids
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute product_id
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!attribute stock
      #
      #   @return [Integer, nil]
      optional :stock, Integer, nil?: true

      # @!attribute unlimited_stock
      #
      #   @return [Boolean, nil]
      optional :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(account_id:, amount_off:, base_currency:, code:, new_users_only:, promo_duration_months:, promo_type:, churned_users_only: nil, existing_memberships_only: nil, expires_at: nil, one_per_customer: nil, plan_ids: nil, product_id: nil, stock: nil, unlimited_stock: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   @param account_id [String]
      #   @param amount_off [Float]
      #   @param base_currency [Symbol, WhopSDK::Models::PromoCodeCreateParams::BaseCurrency]
      #   @param code [String]
      #   @param new_users_only [Boolean]
      #   @param promo_duration_months [Integer]
      #   @param promo_type [Symbol, WhopSDK::Models::PromoCodeCreateParams::PromoType]
      #   @param churned_users_only [Boolean]
      #   @param existing_memberships_only [Boolean]
      #   @param expires_at [String, nil]
      #   @param one_per_customer [Boolean]
      #   @param plan_ids [Array<String>]
      #   @param product_id [String, nil]
      #   @param stock [Integer, nil]
      #   @param unlimited_stock [Boolean]
      #   @param api_version_date [String]
      #   @param idempotency_key [String]
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      module BaseCurrency
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

      module PromoType
        extend WhopSDK::Internal::Type::Enum

        PERCENTAGE = :percentage
        FLAT_AMOUNT = :flat_amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
