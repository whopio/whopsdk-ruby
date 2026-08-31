# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PromoCodes#list
    class PromoCodeListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Promo code ID, prefixed `promo_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_off
      #   Discount amount. Percentage discounts are represented as a decimal fraction.
      #
      #   @return [Float]
      required :amount_off, Float

      # @!attribute churned_users_only
      #   Whether the promo code is restricted to churned customers.
      #
      #   @return [Boolean]
      required :churned_users_only, WhopSDK::Internal::Type::Boolean

      # @!attribute code
      #   Code entered at checkout.
      #
      #   @return [String, nil]
      required :code, String, nil?: true

      # @!attribute created_at
      #   When the promo code was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   Currency used for a fixed-amount discount.
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeListResponse::Currency]
      required :currency, enum: -> { WhopSDK::Models::PromoCodeListResponse::Currency }

      # @!attribute duration
      #   How long the discount applies.
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeListResponse::Duration]
      required :duration, enum: -> { WhopSDK::Models::PromoCodeListResponse::Duration }

      # @!attribute existing_memberships_only
      #   Whether the promo code applies only to existing memberships.
      #
      #   @return [Boolean]
      required :existing_memberships_only, WhopSDK::Internal::Type::Boolean

      # @!attribute expires_at
      #   When the promo code expires, as an ISO 8601 timestamp.
      #
      #   @return [String, nil]
      required :expires_at, String, nil?: true

      # @!attribute metadata
      #   Custom key-value metadata stored on the promo code.
      #
      #   @return [Object]
      required :metadata, WhopSDK::Internal::Type::Unknown

      # @!attribute new_users_only
      #   Whether the promo code is restricted to new customers.
      #
      #   @return [Boolean]
      required :new_users_only, WhopSDK::Internal::Type::Boolean

      # @!attribute one_per_customer
      #   Whether each customer may redeem the promo code only once.
      #
      #   @return [Boolean]
      required :one_per_customer, WhopSDK::Internal::Type::Boolean

      # @!attribute product
      #   Product the promo code is restricted to, or `null` when it is not
      #   product-scoped.
      #
      #   @return [WhopSDK::Models::PromoCodeListResponse::Product, nil]
      required :product, -> { WhopSDK::Models::PromoCodeListResponse::Product }, nil?: true

      # @!attribute promo_duration_months
      #   Billing intervals the discount applies to.
      #
      #   @return [Integer, nil]
      required :promo_duration_months, Integer, nil?: true

      # @!attribute promo_type
      #   Whether the discount is percentage-based or a fixed amount.
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeListResponse::PromoType]
      required :promo_type, enum: -> { WhopSDK::Models::PromoCodeListResponse::PromoType }

      # @!attribute status
      #   Promo code lifecycle status.
      #
      #   @return [Symbol, WhopSDK::Models::PromoCodeListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::PromoCodeListResponse::Status }

      # @!attribute stock
      #   Maximum uses when stock is limited.
      #
      #   @return [Integer]
      required :stock, Integer

      # @!attribute unlimited_stock
      #   Whether the promo code has no redemption limit.
      #
      #   @return [Boolean]
      required :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   When the promo code was updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute uses
      #   Memberships that used the promo code.
      #
      #   @return [Integer]
      required :uses, Integer

      # @!method initialize(id:, amount_off:, churned_users_only:, code:, created_at:, currency:, duration:, existing_memberships_only:, expires_at:, metadata:, new_users_only:, one_per_customer:, product:, promo_duration_months:, promo_type:, status:, stock:, unlimited_stock:, updated_at:, uses:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PromoCodeListResponse} for more details.
      #
      #   @param id [String] Promo code ID, prefixed `promo_`.
      #
      #   @param amount_off [Float] Discount amount. Percentage discounts are represented as a decimal fraction.
      #
      #   @param churned_users_only [Boolean] Whether the promo code is restricted to churned customers.
      #
      #   @param code [String, nil] Code entered at checkout.
      #
      #   @param created_at [String] When the promo code was created, as an ISO 8601 timestamp.
      #
      #   @param currency [Symbol, WhopSDK::Models::PromoCodeListResponse::Currency] Currency used for a fixed-amount discount.
      #
      #   @param duration [Symbol, WhopSDK::Models::PromoCodeListResponse::Duration] How long the discount applies.
      #
      #   @param existing_memberships_only [Boolean] Whether the promo code applies only to existing memberships.
      #
      #   @param expires_at [String, nil] When the promo code expires, as an ISO 8601 timestamp.
      #
      #   @param metadata [Object] Custom key-value metadata stored on the promo code.
      #
      #   @param new_users_only [Boolean] Whether the promo code is restricted to new customers.
      #
      #   @param one_per_customer [Boolean] Whether each customer may redeem the promo code only once.
      #
      #   @param product [WhopSDK::Models::PromoCodeListResponse::Product, nil] Product the promo code is restricted to, or `null` when it is not product-scoped
      #
      #   @param promo_duration_months [Integer, nil] Billing intervals the discount applies to.
      #
      #   @param promo_type [Symbol, WhopSDK::Models::PromoCodeListResponse::PromoType] Whether the discount is percentage-based or a fixed amount.
      #
      #   @param status [Symbol, WhopSDK::Models::PromoCodeListResponse::Status] Promo code lifecycle status.
      #
      #   @param stock [Integer] Maximum uses when stock is limited.
      #
      #   @param unlimited_stock [Boolean] Whether the promo code has no redemption limit.
      #
      #   @param updated_at [String] When the promo code was updated, as an ISO 8601 timestamp.
      #
      #   @param uses [Integer] Memberships that used the promo code.

      # Currency used for a fixed-amount discount.
      #
      # @see WhopSDK::Models::PromoCodeListResponse#currency
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

      # How long the discount applies.
      #
      # @see WhopSDK::Models::PromoCodeListResponse#duration
      module Duration
        extend WhopSDK::Internal::Type::Enum

        FOREVER = :forever
        ONCE = :once
        REPEATING = :repeating

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::PromoCodeListResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Product ID, prefixed `prod_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   Product display name.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Product the promo code is restricted to, or `null` when it is not
        #   product-scoped.
        #
        #   @param id [String] Product ID, prefixed `prod_`.
        #
        #   @param title [String] Product display name.
      end

      # Whether the discount is percentage-based or a fixed amount.
      #
      # @see WhopSDK::Models::PromoCodeListResponse#promo_type
      module PromoType
        extend WhopSDK::Internal::Type::Enum

        PERCENTAGE = :percentage
        FLAT_AMOUNT = :flat_amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Promo code lifecycle status.
      #
      # @see WhopSDK::Models::PromoCodeListResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive
        ARCHIVED = :archived

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
