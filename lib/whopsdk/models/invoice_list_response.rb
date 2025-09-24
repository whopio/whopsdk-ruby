# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#list
    class InvoiceListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute data
      #   A list of nodes.
      #
      #   @return [Array<Whopsdk::Models::InvoiceListResponse::Data, nil>, nil]
      required :data,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::InvoiceListResponse::Data, nil?: true] },
               nil?: true

      # @!attribute page_info
      #   Information to aid in pagination.
      #
      #   @return [Whopsdk::Models::InvoiceListResponse::PageInfo]
      required :page_info, -> { Whopsdk::Models::InvoiceListResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   The connection type for Invoice.
      #
      #   @param data [Array<Whopsdk::Models::InvoiceListResponse::Data, nil>, nil] A list of nodes.
      #
      #   @param page_info [Whopsdk::Models::InvoiceListResponse::PageInfo] Information to aid in pagination.

      class Data < Whopsdk::Internal::Type::BaseModel
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
        #   @return [Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan]
        required :current_plan, -> { Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan }

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
        #   @return [Whopsdk::Models::InvoiceListResponse::Data::Member, nil]
        required :member, -> { Whopsdk::Models::InvoiceListResponse::Data::Member }, nil?: true

        # @!attribute number
        #   The number of the invoice.
        #
        #   @return [String]
        required :number, String

        # @!attribute status
        #   The status of the invoice.
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceListResponse::Data::Status]
        required :status, enum: -> { Whopsdk::Models::InvoiceListResponse::Data::Status }

        # @!method initialize(id:, created_at:, current_plan:, due_date:, email_address:, fetch_invoice_token:, member:, number:, status:)
        #   A statement that defines an amount due by a customer.
        #
        #   @param id [String] The ID of the invoice.
        #
        #   @param created_at [Integer] The date the invoice was created.
        #
        #   @param current_plan [Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan] The plan that the invoice was created for.
        #
        #   @param due_date [Integer, nil] The date the invoice is due.
        #
        #   @param email_address [String, nil] The email address that the invoice was created for.
        #
        #   @param fetch_invoice_token [String] The token to fetch the invoice.
        #
        #   @param member [Whopsdk::Models::InvoiceListResponse::Data::Member, nil] The member that the invoice was created for.
        #
        #   @param number [String] The number of the invoice.
        #
        #   @param status [Symbol, Whopsdk::Models::InvoiceListResponse::Data::Status] The status of the invoice.

        # @see Whopsdk::Models::InvoiceListResponse::Data#current_plan
        class CurrentPlan < Whopsdk::Internal::Type::BaseModel
          # @!attribute id
          #   The internal ID of the plan.
          #
          #   @return [String]
          required :id, String

          # @!attribute base_currency
          #   The respective currency identifier for the plan.
          #
          #   @return [Symbol, Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency]
          required :base_currency,
                   enum: -> { Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency }

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
          #   @param base_currency [Symbol, Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency] The respective currency identifier for the plan.
          #
          #   @param formatted_price [String] The formatted price (including currency) for the plan.

          # The respective currency identifier for the plan.
          #
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
        #   When paginating forwards, the cursor to continue.
        #
        #   @return [String, nil]
        required :end_cursor, String, nil?: true

        # @!attribute has_next_page
        #   When paginating forwards, are there more items?
        #
        #   @return [Boolean]
        required :has_next_page, Whopsdk::Internal::Type::Boolean

        # @!attribute has_previous_page
        #   When paginating backwards, are there more items?
        #
        #   @return [Boolean]
        required :has_previous_page, Whopsdk::Internal::Type::Boolean

        # @!attribute start_cursor
        #   When paginating backwards, the cursor to continue.
        #
        #   @return [String, nil]
        required :start_cursor, String, nil?: true

        # @!method initialize(end_cursor:, has_next_page:, has_previous_page:, start_cursor:)
        #   Information to aid in pagination.
        #
        #   @param end_cursor [String, nil] When paginating forwards, the cursor to continue.
        #
        #   @param has_next_page [Boolean] When paginating forwards, are there more items?
        #
        #   @param has_previous_page [Boolean] When paginating backwards, are there more items?
        #
        #   @param start_cursor [String, nil] When paginating backwards, the cursor to continue.
      end
    end
  end
end
