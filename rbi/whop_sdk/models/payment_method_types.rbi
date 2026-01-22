# typed: strong

module WhopSDK
  module Models
    # The different types of payment methods that can be used.
    module PaymentMethodTypes
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::PaymentMethodTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACSS_DEBIT = T.let(:acss_debit, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      AFFIRM = T.let(:affirm, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      AFTERPAY_CLEARPAY =
        T.let(:afterpay_clearpay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      ALIPAY = T.let(:alipay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      ALMA = T.let(:alma, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      AMAZON_PAY = T.let(:amazon_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      APPLE = T.let(:apple, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      APPLE_PAY = T.let(:apple_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      AU_BECS_DEBIT =
        T.let(:au_becs_debit, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      BACS_DEBIT = T.let(:bacs_debit, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      BANCONTACT = T.let(:bancontact, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      BILLIE = T.let(:billie, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      BIZUM = T.let(:bizum, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      BLIK = T.let(:blik, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      BOLETO = T.let(:boleto, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      CAPCHASE_PAY =
        T.let(:capchase_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      CARD = T.let(:card, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      CASHAPP = T.let(:cashapp, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      COINBASE = T.let(:coinbase, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      CRYPTO = T.let(:crypto, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      CUSTOM = T.let(:custom, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      CUSTOMER_BALANCE =
        T.let(:customer_balance, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      DEMO_PAY = T.let(:demo_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      EPS = T.let(:eps, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      FPX = T.let(:fpx, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      GIROPAY = T.let(:giropay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      GOOGLE_PAY = T.let(:google_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      GOPAY = T.let(:gopay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      GRABPAY = T.let(:grabpay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      ID_BANK_TRANSFER =
        T.let(:id_bank_transfer, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      IDEAL = T.let(:ideal, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      KAKAO_PAY = T.let(:kakao_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      KLARNA = T.let(:klarna, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      KONBINI = T.let(:konbini, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      KR_CARD = T.let(:kr_card, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      KR_MARKET = T.let(:kr_market, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      KRIYA = T.let(:kriya, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      LINK = T.let(:link, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      MB_WAY = T.let(:mb_way, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      MOBILEPAY = T.let(:mobilepay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      MONDU = T.let(:mondu, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      MULTIBANCO = T.let(:multibanco, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      NAVER_PAY = T.let(:naver_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      NETBANKING = T.let(:netbanking, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      NG_BANK = T.let(:ng_bank, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      NG_BANK_TRANSFER =
        T.let(:ng_bank_transfer, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      NG_CARD = T.let(:ng_card, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      NG_MARKET = T.let(:ng_market, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      NG_USSD = T.let(:ng_ussd, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      NG_WALLET = T.let(:ng_wallet, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      NZ_BANK_ACCOUNT =
        T.let(:nz_bank_account, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      OXXO = T.let(:oxxo, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      P24 = T.let(:p24, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      PAY_BY_BANK =
        T.let(:pay_by_bank, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      PAYCO = T.let(:payco, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      PAYNOW = T.let(:paynow, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      PAYPAL = T.let(:paypal, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      PAYPAY = T.let(:paypay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      PAYTO = T.let(:payto, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      PIX = T.let(:pix, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      PLATFORM_BALANCE =
        T.let(:platform_balance, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      PROMPTPAY = T.let(:promptpay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      QRIS = T.let(:qris, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      RECHNUNG = T.let(:rechnung, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      REVOLUT_PAY =
        T.let(:revolut_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SAMSUNG_PAY =
        T.let(:samsung_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SATISPAY = T.let(:satispay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SCALAPAY = T.let(:scalapay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SEPA_DEBIT = T.let(:sepa_debit, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SEQURA = T.let(:sequra, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SEZZLE = T.let(:sezzle, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SHOP_PAY = T.let(:shop_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SHOPEEPAY = T.let(:shopeepay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SOFORT = T.let(:sofort, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SOUTH_KOREA_MARKET =
        T.let(:south_korea_market, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SPLITIT = T.let(:splitit, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SUNBIT = T.let(:sunbit, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      SWISH = T.let(:swish, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      TWINT = T.let(:twint, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      UPI = T.let(:upi, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      US_BANK_ACCOUNT =
        T.let(:us_bank_account, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      VENMO = T.let(:venmo, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      VIPPS = T.let(:vipps, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      WECHAT_PAY = T.let(:wechat_pay, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      ZIP = T.let(:zip, WhopSDK::PaymentMethodTypes::TaggedSymbol)
      UNKNOWN = T.let(:unknown, WhopSDK::PaymentMethodTypes::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::PaymentMethodTypes::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
