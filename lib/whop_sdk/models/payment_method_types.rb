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
      SEZZLE = :sezzle
      COINBASE = :coinbase
      SPLITIT = :splitit
      PLATFORM_BALANCE = :platform_balance
      APPLE = :apple
      VENMO = :venmo
      UNKNOWN = :unknown

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
