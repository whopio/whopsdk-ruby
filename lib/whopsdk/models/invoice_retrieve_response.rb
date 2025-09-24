# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#retrieve
    class InvoiceRetrieveResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   A valid timestamp in seconds, transported as an integer
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute current_plan
      #   A plan for an access pass.
      #
      #   @return [Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan]
      required :current_plan, -> { Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan }

      # @!attribute due_date
      #   A valid timestamp in seconds, transported as an integer
      #
      #   @return [Integer, nil]
      required :due_date, Integer, nil?: true

      # @!attribute email_address
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String, nil]
      required :email_address, String, nil?: true

      # @!attribute fetch_invoice_token
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String]
      required :fetch_invoice_token, String

      # @!attribute member
      #   A user of the site.
      #
      #   @return [Whopsdk::Models::InvoiceRetrieveResponse::Member, nil]
      required :member, -> { Whopsdk::Models::InvoiceRetrieveResponse::Member }, nil?: true

      # @!attribute number
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String]
      required :number, String

      # @!attribute status
      #   The different statuses an invoice can be in
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceRetrieveResponse::Status]
      required :status, enum: -> { Whopsdk::Models::InvoiceRetrieveResponse::Status }

      # @!method initialize(id:, created_at:, current_plan:, due_date:, email_address:, fetch_invoice_token:, member:, number:, status:)
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::InvoiceRetrieveResponse} for more details.
      #
      #   A statement that defines an amount due by a customer.
      #
      #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param created_at [Integer] A valid timestamp in seconds, transported as an integer
      #
      #   @param current_plan [Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan] A plan for an access pass.
      #
      #   @param due_date [Integer, nil] A valid timestamp in seconds, transported as an integer
      #
      #   @param email_address [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param fetch_invoice_token [String] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param member [Whopsdk::Models::InvoiceRetrieveResponse::Member, nil] A user of the site.
      #
      #   @param number [String] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param status [Symbol, Whopsdk::Models::InvoiceRetrieveResponse::Status] The different statuses an invoice can be in

      # @see Whopsdk::Models::InvoiceRetrieveResponse#current_plan
      class CurrentPlan < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute base_currency
        #   The available currencies on the platform
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency]
        required :base_currency, enum: -> { Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency }

        # @!attribute formatted_price
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String]
        required :formatted_price, String

        # @!method initialize(id:, base_currency:, formatted_price:)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan} for more details.
        #
        #   A plan for an access pass.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param base_currency [Symbol, Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency] The available currencies on the platform
        #
        #   @param formatted_price [String] Represents textual data as UTF-8 character sequences. This type is most often us

        # The available currencies on the platform
        #
        # @see Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan#base_currency
        module BaseCurrency
          extend Whopsdk::Internal::Type::Enum

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

      # @see Whopsdk::Models::InvoiceRetrieveResponse#member
      class Member < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute name
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        required :username, String, nil?: true

        # @!method initialize(id:, email:, name:, username:)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::InvoiceRetrieveResponse::Member} for more details.
        #
        #   A user of the site.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param email [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param name [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param username [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      end

      # The different statuses an invoice can be in
      #
      # @see Whopsdk::Models::InvoiceRetrieveResponse#status
      module Status
        extend Whopsdk::Internal::Type::Enum

        OPEN = :open
        PAID = :paid
        PAST_DUE = :past_due
        VOID = :void

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
