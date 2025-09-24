# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#retrieve
    class InvoiceRetrieveResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the invoice.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The date the invoice was created.
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute current_plan
      #   The plan that the invoice was created for.
      #
      #   @return [Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan]
      required :current_plan, -> { Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan }

      # @!attribute due_date
      #   The date the invoice is due.
      #
      #   @return [Integer, nil]
      required :due_date, Integer, nil?: true

      # @!attribute email_address
      #   The email address that the invoice was created for.
      #
      #   @return [String, nil]
      required :email_address, String, nil?: true

      # @!attribute fetch_invoice_token
      #   The token to fetch the invoice.
      #
      #   @return [String]
      required :fetch_invoice_token, String

      # @!attribute member
      #   The member that the invoice was created for.
      #
      #   @return [Whopsdk::Models::InvoiceRetrieveResponse::Member, nil]
      required :member, -> { Whopsdk::Models::InvoiceRetrieveResponse::Member }, nil?: true

      # @!attribute number
      #   The number of the invoice.
      #
      #   @return [String]
      required :number, String

      # @!attribute status
      #   The status of the invoice.
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceRetrieveResponse::Status]
      required :status, enum: -> { Whopsdk::Models::InvoiceRetrieveResponse::Status }

      # @!method initialize(id:, created_at:, current_plan:, due_date:, email_address:, fetch_invoice_token:, member:, number:, status:)
      #   A statement that defines an amount due by a customer.
      #
      #   @param id [String] The ID of the invoice.
      #
      #   @param created_at [Integer] The date the invoice was created.
      #
      #   @param current_plan [Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan] The plan that the invoice was created for.
      #
      #   @param due_date [Integer, nil] The date the invoice is due.
      #
      #   @param email_address [String, nil] The email address that the invoice was created for.
      #
      #   @param fetch_invoice_token [String] The token to fetch the invoice.
      #
      #   @param member [Whopsdk::Models::InvoiceRetrieveResponse::Member, nil] The member that the invoice was created for.
      #
      #   @param number [String] The number of the invoice.
      #
      #   @param status [Symbol, Whopsdk::Models::InvoiceRetrieveResponse::Status] The status of the invoice.

      # @see Whopsdk::Models::InvoiceRetrieveResponse#current_plan
      class CurrentPlan < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the plan.
        #
        #   @return [String]
        required :id, String

        # @!attribute base_currency
        #   The respective currency identifier for the plan.
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency]
        required :base_currency, enum: -> { Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency }

        # @!attribute formatted_price
        #   The formatted price (including currency) for the plan.
        #
        #   @return [String]
        required :formatted_price, String

        # @!method initialize(id:, base_currency:, formatted_price:)
        #   The plan that the invoice was created for.
        #
        #   @param id [String] The internal ID of the plan.
        #
        #   @param base_currency [Symbol, Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency] The respective currency identifier for the plan.
        #
        #   @param formatted_price [String] The formatted price (including currency) for the plan.

        # The respective currency identifier for the plan.
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
        #   The internal ID of the user account for the member.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The digital mailing address of the member.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute name
        #   The written name of the member.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The whop username of the member.
        #
        #   @return [String, nil]
        required :username, String, nil?: true

        # @!method initialize(id:, email:, name:, username:)
        #   The member that the invoice was created for.
        #
        #   @param id [String] The internal ID of the user account for the member.
        #
        #   @param email [String, nil] The digital mailing address of the member.
        #
        #   @param name [String, nil] The written name of the member.
        #
        #   @param username [String, nil] The whop username of the member.
      end

      # The status of the invoice.
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
