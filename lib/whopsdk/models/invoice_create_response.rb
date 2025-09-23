# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#create
    class InvoiceCreateResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute checkout_job_id
      #
      #   @return [String, nil]
      required :checkout_job_id, String, nil?: true

      # @!attribute invoice
      #
      #   @return [Whopsdk::Models::InvoiceCreateResponse::Invoice, nil]
      required :invoice, -> { Whopsdk::Models::InvoiceCreateResponse::Invoice }, nil?: true

      # @!method initialize(checkout_job_id:, invoice:)
      #   @param checkout_job_id [String, nil]
      #   @param invoice [Whopsdk::Models::InvoiceCreateResponse::Invoice, nil]

      # @see Whopsdk::Models::InvoiceCreateResponse#invoice
      class Invoice < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer

        # @!attribute current_plan
        #
        #   @return [Whopsdk::Models::InvoiceCreateResponse::Invoice::CurrentPlan]
        required :current_plan, -> { Whopsdk::Models::InvoiceCreateResponse::Invoice::CurrentPlan }

        # @!attribute due_date
        #
        #   @return [Integer, nil]
        required :due_date, Integer, nil?: true

        # @!attribute email_address
        #
        #   @return [String, nil]
        required :email_address, String, nil?: true

        # @!attribute fetch_invoice_token
        #
        #   @return [String]
        required :fetch_invoice_token, String

        # @!attribute member
        #
        #   @return [Whopsdk::Models::InvoiceCreateResponse::Invoice::Member, nil]
        required :member, -> { Whopsdk::Models::InvoiceCreateResponse::Invoice::Member }, nil?: true

        # @!attribute number
        #
        #   @return [String]
        required :number, String

        # @!attribute status
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceCreateResponse::Invoice::Status]
        required :status, enum: -> { Whopsdk::Models::InvoiceCreateResponse::Invoice::Status }

        # @!method initialize(id:, created_at:, current_plan:, due_date:, email_address:, fetch_invoice_token:, member:, number:, status:)
        #   @param id [String]
        #   @param created_at [Integer]
        #   @param current_plan [Whopsdk::Models::InvoiceCreateResponse::Invoice::CurrentPlan]
        #   @param due_date [Integer, nil]
        #   @param email_address [String, nil]
        #   @param fetch_invoice_token [String]
        #   @param member [Whopsdk::Models::InvoiceCreateResponse::Invoice::Member, nil]
        #   @param number [String]
        #   @param status [Symbol, Whopsdk::Models::InvoiceCreateResponse::Invoice::Status]

        # @see Whopsdk::Models::InvoiceCreateResponse::Invoice#current_plan
        class CurrentPlan < Whopsdk::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute base_currency
          #
          #   @return [Symbol, Whopsdk::Models::InvoiceCreateResponse::Invoice::CurrentPlan::BaseCurrency]
          required :base_currency,
                   enum: -> { Whopsdk::Models::InvoiceCreateResponse::Invoice::CurrentPlan::BaseCurrency }

          # @!attribute formatted_price
          #
          #   @return [String]
          required :formatted_price, String

          # @!method initialize(id:, base_currency:, formatted_price:)
          #   @param id [String]
          #   @param base_currency [Symbol, Whopsdk::Models::InvoiceCreateResponse::Invoice::CurrentPlan::BaseCurrency]
          #   @param formatted_price [String]

          # @see Whopsdk::Models::InvoiceCreateResponse::Invoice::CurrentPlan#base_currency
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

        # @see Whopsdk::Models::InvoiceCreateResponse::Invoice#member
        class Member < Whopsdk::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute email
          #
          #   @return [String, nil]
          required :email, String, nil?: true

          # @!attribute name
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute username
          #
          #   @return [String, nil]
          required :username, String, nil?: true

          # @!method initialize(id:, email:, name:, username:)
          #   @param id [String]
          #   @param email [String, nil]
          #   @param name [String, nil]
          #   @param username [String, nil]
        end

        # @see Whopsdk::Models::InvoiceCreateResponse::Invoice#status
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
end
