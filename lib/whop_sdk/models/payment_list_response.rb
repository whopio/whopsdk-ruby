# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#list
    class PaymentListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The payment ID
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_after_fees
      #   How much the payment is for after fees
      #
      #   @return [Float]
      required :amount_after_fees, Float

      # @!attribute auto_refunded
      #   Whether this payment was auto refunded or not
      #
      #   @return [Boolean]
      required :auto_refunded, WhopSDK::Internal::Type::Boolean

      # @!attribute billing_address
      #   The address of the user who made the payment.
      #
      #   @return [WhopSDK::Models::PaymentListResponse::BillingAddress, nil]
      required :billing_address, -> { WhopSDK::Models::PaymentListResponse::BillingAddress }, nil?: true

      # @!attribute billing_reason
      #   The reason why a specific payment was billed
      #
      #   @return [Symbol, WhopSDK::Models::PaymentListResponse::BillingReason, nil]
      required :billing_reason, enum: -> { WhopSDK::Models::PaymentListResponse::BillingReason }, nil?: true

      # @!attribute card_brand
      #   Possible card brands that a payment token can have
      #
      #   @return [Symbol, WhopSDK::Models::PaymentListResponse::CardBrand, nil]
      required :card_brand, enum: -> { WhopSDK::Models::PaymentListResponse::CardBrand }, nil?: true

      # @!attribute card_last4
      #   The last 4 digits of the card used to make the payment.
      #
      #   @return [String, nil]
      required :card_last4, String, nil?: true

      # @!attribute company
      #   The company for the payment.
      #
      #   @return [WhopSDK::Models::PaymentListResponse::Company, nil]
      required :company, -> { WhopSDK::Models::PaymentListResponse::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the payment was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      required :currency, enum: -> { WhopSDK::Currency }, nil?: true

      # @!attribute dispute_alerted_at
      #   When an alert came in that this transaction will be disputed
      #
      #   @return [Time, nil]
      required :dispute_alerted_at, Time, nil?: true

      # @!attribute failure_message
      #   If the payment failed, the reason for the failure.
      #
      #   @return [String, nil]
      required :failure_message, String, nil?: true

      # @!attribute last_payment_attempt
      #   The time of the last payment attempt.
      #
      #   @return [Time, nil]
      required :last_payment_attempt, Time, nil?: true

      # @!attribute member
      #   The member attached to this payment.
      #
      #   @return [WhopSDK::Models::PaymentListResponse::Member, nil]
      required :member, -> { WhopSDK::Models::PaymentListResponse::Member }, nil?: true

      # @!attribute membership
      #   The membership attached to this payment.
      #
      #   @return [WhopSDK::Models::PaymentListResponse::Membership, nil]
      required :membership, -> { WhopSDK::Models::PaymentListResponse::Membership }, nil?: true

      # @!attribute paid_at
      #   The datetime the payment was paid
      #
      #   @return [Time, nil]
      required :paid_at, Time, nil?: true

      # @!attribute payment_method_type
      #   The different types of payment methods that can be used.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentListResponse::PaymentMethodType, nil]
      required :payment_method_type,
               enum: -> { WhopSDK::Models::PaymentListResponse::PaymentMethodType },
               nil?: true

      # @!attribute plan
      #   The plan attached to this payment.
      #
      #   @return [WhopSDK::Models::PaymentListResponse::Plan, nil]
      required :plan, -> { WhopSDK::Models::PaymentListResponse::Plan }, nil?: true

      # @!attribute product
      #   The access pass attached to this payment.
      #
      #   @return [WhopSDK::Models::PaymentListResponse::Product, nil]
      required :product, -> { WhopSDK::Models::PaymentListResponse::Product }, nil?: true

      # @!attribute promo_code
      #   The promo code used for this payment.
      #
      #   @return [WhopSDK::Models::PaymentListResponse::PromoCode, nil]
      required :promo_code, -> { WhopSDK::Models::PaymentListResponse::PromoCode }, nil?: true

      # @!attribute refundable
      #   True only for payments that are `paid`, have not been fully refunded, and were
      #   processed by a payment processor that allows refunds.
      #
      #   @return [Boolean]
      required :refundable, WhopSDK::Internal::Type::Boolean

      # @!attribute refunded_amount
      #   The payment refund amount(if applicable).
      #
      #   @return [Float, nil]
      required :refunded_amount, Float, nil?: true

      # @!attribute refunded_at
      #   When the payment was refunded (if applicable).
      #
      #   @return [Time, nil]
      required :refunded_at, Time, nil?: true

      # @!attribute retryable
      #   True when the payment status is `open` and its membership is in one of the
      #   retry-eligible states (`active`, `trialing`, `completed`, or `past_due`);
      #   otherwise false. Used to decide if Whop can attempt the charge again.
      #
      #   @return [Boolean]
      required :retryable, WhopSDK::Internal::Type::Boolean

      # @!attribute status
      #   The status of a receipt
      #
      #   @return [Symbol, WhopSDK::Models::ReceiptStatus, nil]
      required :status, enum: -> { WhopSDK::ReceiptStatus }, nil?: true

      # @!attribute substatus
      #   The friendly status of the payment.
      #
      #   @return [Symbol, WhopSDK::Models::FriendlyReceiptStatus]
      required :substatus, enum: -> { WhopSDK::FriendlyReceiptStatus }

      # @!attribute subtotal
      #   The subtotal to show to the creator (excluding buyer fees).
      #
      #   @return [Float, nil]
      required :subtotal, Float, nil?: true

      # @!attribute total
      #   The total to show to the creator (excluding buyer fees).
      #
      #   @return [Float, nil]
      required :total, Float, nil?: true

      # @!attribute usd_total
      #   The total in USD to show to the creator (excluding buyer fees).
      #
      #   @return [Float, nil]
      required :usd_total, Float, nil?: true

      # @!attribute user
      #   The user that made this payment.
      #
      #   @return [WhopSDK::Models::PaymentListResponse::User, nil]
      required :user, -> { WhopSDK::Models::PaymentListResponse::User }, nil?: true

      # @!attribute voidable
      #   True when the payment is tied to a membership in `past_due`, the payment status
      #   is `open`, and the processor allows voiding payments; otherwise false.
      #
      #   @return [Boolean]
      required :voidable, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, amount_after_fees:, auto_refunded:, billing_address:, billing_reason:, card_brand:, card_last4:, company:, created_at:, currency:, dispute_alerted_at:, failure_message:, last_payment_attempt:, member:, membership:, paid_at:, payment_method_type:, plan:, product:, promo_code:, refundable:, refunded_amount:, refunded_at:, retryable:, status:, substatus:, subtotal:, total:, usd_total:, user:, voidable:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentListResponse} for more details.
      #
      #   An object representing a receipt for a membership.
      #
      #   @param id [String] The payment ID
      #
      #   @param amount_after_fees [Float] How much the payment is for after fees
      #
      #   @param auto_refunded [Boolean] Whether this payment was auto refunded or not
      #
      #   @param billing_address [WhopSDK::Models::PaymentListResponse::BillingAddress, nil] The address of the user who made the payment.
      #
      #   @param billing_reason [Symbol, WhopSDK::Models::PaymentListResponse::BillingReason, nil] The reason why a specific payment was billed
      #
      #   @param card_brand [Symbol, WhopSDK::Models::PaymentListResponse::CardBrand, nil] Possible card brands that a payment token can have
      #
      #   @param card_last4 [String, nil] The last 4 digits of the card used to make the payment.
      #
      #   @param company [WhopSDK::Models::PaymentListResponse::Company, nil] The company for the payment.
      #
      #   @param created_at [Time] The datetime the payment was created
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param dispute_alerted_at [Time, nil] When an alert came in that this transaction will be disputed
      #
      #   @param failure_message [String, nil] If the payment failed, the reason for the failure.
      #
      #   @param last_payment_attempt [Time, nil] The time of the last payment attempt.
      #
      #   @param member [WhopSDK::Models::PaymentListResponse::Member, nil] The member attached to this payment.
      #
      #   @param membership [WhopSDK::Models::PaymentListResponse::Membership, nil] The membership attached to this payment.
      #
      #   @param paid_at [Time, nil] The datetime the payment was paid
      #
      #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentListResponse::PaymentMethodType, nil] The different types of payment methods that can be used.
      #
      #   @param plan [WhopSDK::Models::PaymentListResponse::Plan, nil] The plan attached to this payment.
      #
      #   @param product [WhopSDK::Models::PaymentListResponse::Product, nil] The access pass attached to this payment.
      #
      #   @param promo_code [WhopSDK::Models::PaymentListResponse::PromoCode, nil] The promo code used for this payment.
      #
      #   @param refundable [Boolean] True only for payments that are `paid`, have not been fully refunded, and were p
      #
      #   @param refunded_amount [Float, nil] The payment refund amount(if applicable).
      #
      #   @param refunded_at [Time, nil] When the payment was refunded (if applicable).
      #
      #   @param retryable [Boolean] True when the payment status is `open` and its membership is in one of the retry
      #
      #   @param status [Symbol, WhopSDK::Models::ReceiptStatus, nil] The status of a receipt
      #
      #   @param substatus [Symbol, WhopSDK::Models::FriendlyReceiptStatus] The friendly status of the payment.
      #
      #   @param subtotal [Float, nil] The subtotal to show to the creator (excluding buyer fees).
      #
      #   @param total [Float, nil] The total to show to the creator (excluding buyer fees).
      #
      #   @param usd_total [Float, nil] The total in USD to show to the creator (excluding buyer fees).
      #
      #   @param user [WhopSDK::Models::PaymentListResponse::User, nil] The user that made this payment.
      #
      #   @param voidable [Boolean] True when the payment is tied to a membership in `past_due`, the payment status

      # @see WhopSDK::Models::PaymentListResponse#billing_address
      class BillingAddress < WhopSDK::Internal::Type::BaseModel
        # @!attribute city
        #   The city of the address.
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute country
        #   The country of the address.
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute line1
        #   The line 1 of the address.
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #   The line 2 of the address.
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute name
        #   The name of the customer.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute state
        #   The state of the address.
        #
        #   @return [String, nil]
        required :state, String, nil?: true

        # @!method initialize(city:, country:, line1:, line2:, name:, postal_code:, state:)
        #   The address of the user who made the payment.
        #
        #   @param city [String, nil] The city of the address.
        #
        #   @param country [String, nil] The country of the address.
        #
        #   @param line1 [String, nil] The line 1 of the address.
        #
        #   @param line2 [String, nil] The line 2 of the address.
        #
        #   @param name [String, nil] The name of the customer.
        #
        #   @param postal_code [String, nil] The postal code of the address.
        #
        #   @param state [String, nil] The state of the address.
      end

      # The reason why a specific payment was billed
      #
      # @see WhopSDK::Models::PaymentListResponse#billing_reason
      module BillingReason
        extend WhopSDK::Internal::Type::Enum

        SUBSCRIPTION_CREATE = :subscription_create
        SUBSCRIPTION_CYCLE = :subscription_cycle
        SUBSCRIPTION_UPDATE = :subscription_update
        ONE_TIME = :one_time
        MANUAL = :manual
        SUBSCRIPTION = :subscription

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Possible card brands that a payment token can have
      #
      # @see WhopSDK::Models::PaymentListResponse#card_brand
      module CardBrand
        extend WhopSDK::Internal::Type::Enum

        MASTERCARD = :mastercard
        VISA = :visa
        AMEX = :amex
        DISCOVER = :discover
        UNIONPAY = :unionpay
        JCB = :jcb
        DINERS = :diners
        LINK = :link
        TROY = :troy
        VISADANKORT = :visadankort
        VISABANCONTACT = :visabancontact
        CHINA_UNION_PAY = :china_union_pay
        RUPAY = :rupay
        JCBRUPAY = :jcbrupay
        ELO = :elo
        UNKNOWN = :unknown

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::PaymentListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the company
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The slug/route of the company on the Whop site.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The written name of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   The company for the payment.
        #
        #   @param id [String] The ID of the company
        #
        #   @param route [String] The slug/route of the company on the Whop site.
        #
        #   @param title [String] The written name of the company.
      end

      # @see WhopSDK::Models::PaymentListResponse#member
      class Member < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the member
        #
        #   @return [String]
        required :id, String

        # @!attribute phone
        #   The phone number for the member, if available.
        #
        #   @return [String, nil]
        required :phone, String, nil?: true

        # @!method initialize(id:, phone:)
        #   The member attached to this payment.
        #
        #   @param id [String] The ID of the member
        #
        #   @param phone [String, nil] The phone number for the member, if available.
      end

      # @see WhopSDK::Models::PaymentListResponse#membership
      class Membership < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the membership.
        #
        #   @return [String]
        required :id, String

        # @!attribute status
        #   The state of the membership.
        #
        #   @return [Symbol, WhopSDK::Models::MembershipStatus]
        required :status, enum: -> { WhopSDK::MembershipStatus }

        # @!method initialize(id:, status:)
        #   The membership attached to this payment.
        #
        #   @param id [String] The internal ID of the membership.
        #
        #   @param status [Symbol, WhopSDK::Models::MembershipStatus] The state of the membership.
      end

      # The different types of payment methods that can be used.
      #
      # @see WhopSDK::Models::PaymentListResponse#payment_method_type
      module PaymentMethodType
        extend WhopSDK::Internal::Type::Enum

        ACSS_DEBIT = :acss_debit
        AFFIRM = :affirm
        AFTERPAY_CLEARPAY = :afterpay_clearpay
        ALIPAY = :alipay
        ALMA = :alma
        AMAZON_PAY = :amazon_pay
        APPLE_PAY = :apple_pay
        AU_BECS_DEBIT = :au_becs_debit
        BACS_DEBIT = :bacs_debit
        BANCONTACT = :bancontact
        BILLIE = :billie
        BLIK = :blik
        BOLETO = :boleto
        CARD = :card
        CASHAPP = :cashapp
        CRYPTO = :crypto
        EPS = :eps
        FPX = :fpx
        GIROPAY = :giropay
        GOOGLE_PAY = :google_pay
        GRABPAY = :grabpay
        IDEAL = :ideal
        KAKAO_PAY = :kakao_pay
        KLARNA = :klarna
        KONBINI = :konbini
        KR_CARD = :kr_card
        LINK = :link
        MOBILEPAY = :mobilepay
        MULTIBANCO = :multibanco
        NAVER_PAY = :naver_pay
        NZ_BANK_ACCOUNT = :nz_bank_account
        OXXO = :oxxo
        P24 = :p24
        PAY_BY_BANK = :pay_by_bank
        PAYCO = :payco
        PAYNOW = :paynow
        PIX = :pix
        PROMPTPAY = :promptpay
        REVOLUT_PAY = :revolut_pay
        SAMSUNG_PAY = :samsung_pay
        SATISPAY = :satispay
        SEPA_DEBIT = :sepa_debit
        SOFORT = :sofort
        SWISH = :swish
        TWINT = :twint
        US_BANK_ACCOUNT = :us_bank_account
        WECHAT_PAY = :wechat_pay
        ZIP = :zip
        BIZUM = :bizum
        CAPCHASE_PAY = :capchase_pay
        KRIYA = :kriya
        MONDU = :mondu
        NG_WALLET = :ng_wallet
        PAYPAY = :paypay
        SEQURA = :sequra
        SCALAPAY = :scalapay
        VIPPS = :vipps
        CUSTOM = :custom
        CUSTOMER_BALANCE = :customer_balance
        GOPAY = :gopay
        MB_WAY = :mb_way
        NG_BANK = :ng_bank
        NG_BANK_TRANSFER = :ng_bank_transfer
        NG_CARD = :ng_card
        NG_MARKET = :ng_market
        NG_USSD = :ng_ussd
        PAYPAL = :paypal
        PAYTO = :payto
        QRIS = :qris
        RECHNUNG = :rechnung
        SOUTH_KOREA_MARKET = :south_korea_market
        KR_MARKET = :kr_market
        SHOPEEPAY = :shopeepay
        UPI = :upi
        SUNBIT = :sunbit
        NETBANKING = :netbanking
        ID_BANK_TRANSFER = :id_bank_transfer
        DEMO_PAY = :demo_pay
        SHOP_PAY = :shop_pay

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::PaymentListResponse#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The plan attached to this payment.
        #
        #   @param id [String] The internal ID of the plan.
      end

      # @see WhopSDK::Models::PaymentListResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public product.
        #
        #   @return [String]
        required :id, String

        # @!attribute route
        #   The route of the product.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   The title of the product. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, route:, title:)
        #   The access pass attached to this payment.
        #
        #   @param id [String] The internal ID of the public product.
        #
        #   @param route [String] The route of the product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end

      # @see WhopSDK::Models::PaymentListResponse#promo_code
      class PromoCode < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the promo.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount_off
        #   The amount off (% or flat amount) for the promo.
        #
        #   @return [Float]
        required :amount_off, Float

        # @!attribute base_currency
        #   The monetary currency of the promo code.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :base_currency, enum: -> { WhopSDK::Currency }

        # @!attribute code
        #   The specific code used to apply the promo at checkout.
        #
        #   @return [String, nil]
        required :code, String, nil?: true

        # @!attribute number_of_intervals
        #   The number of months the promo is applied for.
        #
        #   @return [Integer, nil]
        required :number_of_intervals, Integer, nil?: true

        # @!attribute promo_type
        #   The type (% or flat amount) of the promo.
        #
        #   @return [Symbol, WhopSDK::Models::PromoType]
        required :promo_type, enum: -> { WhopSDK::PromoType }

        # @!method initialize(id:, amount_off:, base_currency:, code:, number_of_intervals:, promo_type:)
        #   The promo code used for this payment.
        #
        #   @param id [String] The ID of the promo.
        #
        #   @param amount_off [Float] The amount off (% or flat amount) for the promo.
        #
        #   @param base_currency [Symbol, WhopSDK::Models::Currency] The monetary currency of the promo code.
        #
        #   @param code [String, nil] The specific code used to apply the promo at checkout.
        #
        #   @param number_of_intervals [Integer, nil] The number of months the promo is applied for.
        #
        #   @param promo_type [Symbol, WhopSDK::Models::PromoType] The type (% or flat amount) of the promo.
      end

      # @see WhopSDK::Models::PaymentListResponse#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The email of the user
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, email:, name:, username:)
        #   The user that made this payment.
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param email [String, nil] The email of the user
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
