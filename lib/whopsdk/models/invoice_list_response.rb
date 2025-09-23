# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#list
    class InvoiceListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Whopsdk::Models::InvoiceListResponse::Data, nil>, nil]
      required :data,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::InvoiceListResponse::Data, nil?: true] },
               nil?: true

      # @!attribute page_info
      #
      #   @return [Whopsdk::Models::InvoiceListResponse::PageInfo]
      required :page_info, -> { Whopsdk::Models::InvoiceListResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   @param data [Array<Whopsdk::Models::InvoiceListResponse::Data, nil>, nil]
      #   @param page_info [Whopsdk::Models::InvoiceListResponse::PageInfo]

      class Data < Whopsdk::Internal::Type::BaseModel
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
        #   @return [Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan]
        required :current_plan, -> { Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan }

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
        #   @return [Whopsdk::Models::InvoiceListResponse::Data::Member, nil]
        required :member, -> { Whopsdk::Models::InvoiceListResponse::Data::Member }, nil?: true

        # @!attribute number
        #
        #   @return [String]
        required :number, String

        # @!attribute status
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceListResponse::Data::Status]
        required :status, enum: -> { Whopsdk::Models::InvoiceListResponse::Data::Status }

        # @!method initialize(id:, created_at:, current_plan:, due_date:, email_address:, fetch_invoice_token:, member:, number:, status:)
        #   @param id [String]
        #   @param created_at [Integer]
        #   @param current_plan [Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan]
        #   @param due_date [Integer, nil]
        #   @param email_address [String, nil]
        #   @param fetch_invoice_token [String]
        #   @param member [Whopsdk::Models::InvoiceListResponse::Data::Member, nil]
        #   @param number [String]
        #   @param status [Symbol, Whopsdk::Models::InvoiceListResponse::Data::Status]

        # @see Whopsdk::Models::InvoiceListResponse::Data#current_plan
        class CurrentPlan < Whopsdk::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute base_currency
          #
          #   @return [Symbol, Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency]
          required :base_currency,
                   enum: -> { Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency }

          # @!attribute formatted_price
          #
          #   @return [String]
          required :formatted_price, String

          # @!method initialize(id:, base_currency:, formatted_price:)
          #   @param id [String]
          #   @param base_currency [Symbol, Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency]
          #   @param formatted_price [String]

          # @see Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan#base_currency
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

        # @see Whopsdk::Models::InvoiceListResponse::Data#member
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

        # @see Whopsdk::Models::InvoiceListResponse::Data#status
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

      # @see Whopsdk::Models::InvoiceListResponse#page_info
      class PageInfo < Whopsdk::Internal::Type::BaseModel
        # @!attribute end_cursor
        #
        #   @return [String, nil]
        required :end_cursor, String, nil?: true

        # @!attribute has_next_page
        #
        #   @return [Boolean]
        required :has_next_page, Whopsdk::Internal::Type::Boolean

        # @!attribute has_previous_page
        #
        #   @return [Boolean]
        required :has_previous_page, Whopsdk::Internal::Type::Boolean

        # @!attribute start_cursor
        #
        #   @return [String, nil]
        required :start_cursor, String, nil?: true

        # @!method initialize(end_cursor:, has_next_page:, has_previous_page:, start_cursor:)
        #   @param end_cursor [String, nil]
        #   @param has_next_page [Boolean]
        #   @param has_previous_page [Boolean]
        #   @param start_cursor [String, nil]
      end
    end
  end
end
