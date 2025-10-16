# frozen_string_literal: true

module WhopSDK
  module Models
    # The available currencies on the platform
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

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
