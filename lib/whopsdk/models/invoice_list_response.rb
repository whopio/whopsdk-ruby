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
      #   Information about pagination in a connection.
      #
      #   @return [Whopsdk::Models::InvoiceListResponse::PageInfo]
      required :page_info, -> { Whopsdk::Models::InvoiceListResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   The connection type for Invoice.
      #
      #   @param data [Array<Whopsdk::Models::InvoiceListResponse::Data, nil>, nil]
      #
      #   @param page_info [Whopsdk::Models::InvoiceListResponse::PageInfo] Information about pagination in a connection.

      class Data < Whopsdk::Internal::Type::BaseModel
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
        #   @return [Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan]
        required :current_plan, -> { Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan }

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
        #   @return [Whopsdk::Models::InvoiceListResponse::Data::Member, nil]
        required :member, -> { Whopsdk::Models::InvoiceListResponse::Data::Member }, nil?: true

        # @!attribute number
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String]
        required :number, String

        # @!attribute status
        #   The different statuses an invoice can be in
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceListResponse::Data::Status]
        required :status, enum: -> { Whopsdk::Models::InvoiceListResponse::Data::Status }

        # @!method initialize(id:, created_at:, current_plan:, due_date:, email_address:, fetch_invoice_token:, member:, number:, status:)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::InvoiceListResponse::Data} for more details.
        #
        #   A statement that defines an amount due by a customer.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param created_at [Integer] A valid timestamp in seconds, transported as an integer
        #
        #   @param current_plan [Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan] A plan for an access pass.
        #
        #   @param due_date [Integer, nil] A valid timestamp in seconds, transported as an integer
        #
        #   @param email_address [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param fetch_invoice_token [String] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param member [Whopsdk::Models::InvoiceListResponse::Data::Member, nil] A user of the site.
        #
        #   @param number [String] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param status [Symbol, Whopsdk::Models::InvoiceListResponse::Data::Status] The different statuses an invoice can be in

        # @see Whopsdk::Models::InvoiceListResponse::Data#current_plan
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
          #   @return [Symbol, Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency]
          required :base_currency,
                   enum: -> { Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency }

          # @!attribute formatted_price
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String]
          required :formatted_price, String

          # @!method initialize(id:, base_currency:, formatted_price:)
          #   Some parameter documentations has been truncated, see
          #   {Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan} for more details.
          #
          #   A plan for an access pass.
          #
          #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
          #
          #   @param base_currency [Symbol, Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency] The available currencies on the platform
          #
          #   @param formatted_price [String] Represents textual data as UTF-8 character sequences. This type is most often us

          # The available currencies on the platform
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
          #   {Whopsdk::Models::InvoiceListResponse::Data::Member} for more details.
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
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        required :end_cursor, String, nil?: true

        # @!attribute has_next_page
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean]
        required :has_next_page, Whopsdk::Internal::Type::Boolean

        # @!attribute has_previous_page
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean]
        required :has_previous_page, Whopsdk::Internal::Type::Boolean

        # @!attribute start_cursor
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        required :start_cursor, String, nil?: true

        # @!method initialize(end_cursor:, has_next_page:, has_previous_page:, start_cursor:)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::InvoiceListResponse::PageInfo} for more details.
        #
        #   Information about pagination in a connection.
        #
        #   @param end_cursor [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param has_next_page [Boolean] Represents `true` or `false` values.
        #
        #   @param has_previous_page [Boolean] Represents `true` or `false` values.
        #
        #   @param start_cursor [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      end
    end
  end
end
