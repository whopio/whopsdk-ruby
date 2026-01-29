# frozen_string_literal: true

module WhopSDK
  module Models
    # The different types of payment methods that can be used.
    module PaymentMethodTypes
      extend WhopSDK::Internal::Type::Enum

      ACSS_DEBIT = :acss_debit
      AFFIRM = :affirm
      AFTERPAY_CLEARPAY = :afterpay_clearpay
      ALIPAY = :alipay
      ALMA = :alma
      AMAZON_PAY = :amazon_pay
      APPLE = :apple
      APPLE_PAY = :apple_pay
      AU_BECS_DEBIT = :au_becs_debit
      BACS_DEBIT = :bacs_debit
      BANCONTACT = :bancontact
      BILLIE = :billie
      BIZUM = :bizum
      BLIK = :blik
      BOLETO = :boleto
      CAPCHASE_PAY = :capchase_pay
      CARD = :card
      CASHAPP = :cashapp
      COINBASE = :coinbase
      CRYPTO = :crypto
      CUSTOM = :custom
      CUSTOMER_BALANCE = :customer_balance
      DEMO_PAY = :demo_pay
      EPS = :eps
      EU_BANK_TRANSFER = :eu_bank_transfer
      FPX = :fpx
      GIROPAY = :giropay
      GOOGLE_PAY = :google_pay
      GOPAY = :gopay
      GRABPAY = :grabpay
      ID_BANK_TRANSFER = :id_bank_transfer
      IDEAL = :ideal
      INTERAC = :interac
      KAKAO_PAY = :kakao_pay
      KLARNA = :klarna
      KONBINI = :konbini
      KR_CARD = :kr_card
      KR_MARKET = :kr_market
      KRIYA = :kriya
      LINK = :link
      MB_WAY = :mb_way
      MOBILEPAY = :mobilepay
      MONDU = :mondu
      MULTIBANCO = :multibanco
      NAVER_PAY = :naver_pay
      NETBANKING = :netbanking
      NG_BANK = :ng_bank
      NG_BANK_TRANSFER = :ng_bank_transfer
      NG_CARD = :ng_card
      NG_MARKET = :ng_market
      NG_USSD = :ng_ussd
      NG_WALLET = :ng_wallet
      NZ_BANK_ACCOUNT = :nz_bank_account
      OXXO = :oxxo
      P24 = :p24
      PAY_BY_BANK = :pay_by_bank
      PAYCO = :payco
      PAYNOW = :paynow
      PAYPAL = :paypal
      PAYPAY = :paypay
      PAYTO = :payto
      PIX = :pix
      PLATFORM_BALANCE = :platform_balance
      PROMPTPAY = :promptpay
      QRIS = :qris
      RECHNUNG = :rechnung
      REVOLUT_PAY = :revolut_pay
      SAMSUNG_PAY = :samsung_pay
      SATISPAY = :satispay
      SCALAPAY = :scalapay
      SEPA_DEBIT = :sepa_debit
      SEQURA = :sequra
      SEZZLE = :sezzle
      SHOP_PAY = :shop_pay
      SHOPEEPAY = :shopeepay
      SOFORT = :sofort
      SOUTH_KOREA_MARKET = :south_korea_market
      SPLITIT = :splitit
      SUNBIT = :sunbit
      SWISH = :swish
      TWINT = :twint
      UPI = :upi
      US_BANK_ACCOUNT = :us_bank_account
      VENMO = :venmo
      VIPPS = :vipps
      WECHAT_PAY = :wechat_pay
      ZIP = :zip
      UNKNOWN = :unknown

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
