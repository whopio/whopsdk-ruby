# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#create
    class InvoiceCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute collection_method
      #   The method of collection for an invoice.
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceCreateParams::CollectionMethod]
      required :collection_method, enum: -> { Whopsdk::InvoiceCreateParams::CollectionMethod }

      # @!attribute due_date
      #   A valid timestamp in seconds, transported as an integer
      #
      #   @return [Integer]
      required :due_date, Integer

      # @!attribute plan
      #   The properties of the plan to create for this invoice.
      #
      #   @return [Whopsdk::Models::InvoiceCreateParams::Plan]
      required :plan, -> { Whopsdk::InvoiceCreateParams::Plan }

      # @!attribute access_pass
      #   The properties of the access pass to create for this invoice.
      #
      #   @return [Whopsdk::Models::InvoiceCreateParams::AccessPass, nil]
      optional :access_pass, -> { Whopsdk::InvoiceCreateParams::AccessPass }, nil?: true

      # @!attribute access_pass_id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String, nil]
      optional :access_pass_id, String, nil?: true

      # @!attribute charge_buyer_fee
      #   Represents `true` or `false` values.
      #
      #   @return [Boolean, nil]
      optional :charge_buyer_fee, Whopsdk::Internal::Type::Boolean, nil?: true

      # @!attribute client_mutation_id
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String, nil]
      optional :client_mutation_id, String, nil?: true

      # @!attribute customer_name
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute email_address
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String, nil]
      optional :email_address, String, nil?: true

      # @!attribute member_id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String, nil]
      optional :member_id, String, nil?: true

      # @!attribute payment_token_id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String, nil]
      optional :payment_token_id, String, nil?: true

      # @!method initialize(collection_method:, due_date:, plan:, access_pass: nil, access_pass_id: nil, charge_buyer_fee: nil, client_mutation_id: nil, customer_name: nil, email_address: nil, member_id: nil, payment_token_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::InvoiceCreateParams} for more details.
      #
      #   @param collection_method [Symbol, Whopsdk::Models::InvoiceCreateParams::CollectionMethod] The method of collection for an invoice.
      #
      #   @param due_date [Integer] A valid timestamp in seconds, transported as an integer
      #
      #   @param plan [Whopsdk::Models::InvoiceCreateParams::Plan] The properties of the plan to create for this invoice.
      #
      #   @param access_pass [Whopsdk::Models::InvoiceCreateParams::AccessPass, nil] The properties of the access pass to create for this invoice.
      #
      #   @param access_pass_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param charge_buyer_fee [Boolean, nil] Represents `true` or `false` values.
      #
      #   @param client_mutation_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param customer_name [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param email_address [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param member_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param payment_token_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # The method of collection for an invoice.
      module CollectionMethod
        extend Whopsdk::Internal::Type::Enum

        SEND_INVOICE = :send_invoice
        CHARGE_AUTOMATICALLY = :charge_automatically

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Plan < Whopsdk::Internal::Type::BaseModel
        # @!attribute ach_payments
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean, nil]
        optional :ach_payments, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute base_currency
        #   The available currencies on the platform
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::BaseCurrency, nil]
        optional :base_currency, enum: -> { Whopsdk::InvoiceCreateParams::Plan::BaseCurrency }, nil?: true

        # @!attribute billing_period
        #   Represents non-fractional signed whole numeric values. Int can represent values
        #   between -(2^31) and 2^31 - 1.
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute card_payments
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean, nil]
        optional :card_payments, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute coinbase_commerce_accepted
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean, nil]
        optional :coinbase_commerce_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute custom_fields
        #
        #   @return [Array<Whopsdk::Models::InvoiceCreateParams::Plan::CustomField>, nil]
        optional :custom_fields,
                 -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::InvoiceCreateParams::Plan::CustomField] },
                 nil?: true

        # @!attribute description
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute expiration_days
        #   Represents non-fractional signed whole numeric values. Int can represent values
        #   between -(2^31) and 2^31 - 1.
        #
        #   @return [Integer, nil]
        optional :expiration_days, Integer, nil?: true

        # @!attribute initial_price
        #   A float that can be a string
        #
        #   @return [Float, nil]
        optional :initial_price, Float, nil?: true

        # @!attribute internal_notes
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        optional :internal_notes, String, nil?: true

        # @!attribute offer_cancel_discount
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean, nil]
        optional :offer_cancel_discount, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute paypal_accepted
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean, nil]
        optional :paypal_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute plan_type
        #   The type of plan that can be attached to an access pass
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::PlanType, nil]
        optional :plan_type, enum: -> { Whopsdk::InvoiceCreateParams::Plan::PlanType }, nil?: true

        # @!attribute platform_balance_accepted
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean, nil]
        optional :platform_balance_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute redirect_url
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String, nil]
        optional :redirect_url, String, nil?: true

        # @!attribute release_method
        #   The methods of how a plan can be released (including raffles and waitlists).
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::ReleaseMethod, nil]
        optional :release_method, enum: -> { Whopsdk::InvoiceCreateParams::Plan::ReleaseMethod }, nil?: true

        # @!attribute release_method_settings
        #
        #   @return [Whopsdk::Models::InvoiceCreateParams::Plan::ReleaseMethodSettings, nil]
        optional :release_method_settings,
                 -> { Whopsdk::InvoiceCreateParams::Plan::ReleaseMethodSettings },
                 nil?: true

        # @!attribute renewal_price
        #   A float that can be a string
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

        # @!attribute split_pay_required_payments
        #   Represents non-fractional signed whole numeric values. Int can represent values
        #   between -(2^31) and 2^31 - 1.
        #
        #   @return [Integer, nil]
        optional :split_pay_required_payments, Integer, nil?: true

        # @!attribute splitit_accepted
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean, nil]
        optional :splitit_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute stock
        #   Represents non-fractional signed whole numeric values. Int can represent values
        #   between -(2^31) and 2^31 - 1.
        #
        #   @return [Integer, nil]
        optional :stock, Integer, nil?: true

        # @!attribute trial_period_days
        #   Represents non-fractional signed whole numeric values. Int can represent values
        #   between -(2^31) and 2^31 - 1.
        #
        #   @return [Integer, nil]
        optional :trial_period_days, Integer, nil?: true

        # @!attribute unlimited_stock
        #   Represents `true` or `false` values.
        #
        #   @return [Boolean, nil]
        optional :unlimited_stock, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute visibility
        #   Visibility of a resource
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::Visibility, nil]
        optional :visibility, enum: -> { Whopsdk::InvoiceCreateParams::Plan::Visibility }, nil?: true

        # @!method initialize(ach_payments: nil, base_currency: nil, billing_period: nil, card_payments: nil, coinbase_commerce_accepted: nil, custom_fields: nil, description: nil, expiration_days: nil, initial_price: nil, internal_notes: nil, offer_cancel_discount: nil, paypal_accepted: nil, plan_type: nil, platform_balance_accepted: nil, redirect_url: nil, release_method: nil, release_method_settings: nil, renewal_price: nil, split_pay_required_payments: nil, splitit_accepted: nil, stock: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::InvoiceCreateParams::Plan} for more details.
        #
        #   The properties of the plan to create for this invoice.
        #
        #   @param ach_payments [Boolean, nil] Represents `true` or `false` values.
        #
        #   @param base_currency [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::BaseCurrency, nil] The available currencies on the platform
        #
        #   @param billing_period [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
        #
        #   @param card_payments [Boolean, nil] Represents `true` or `false` values.
        #
        #   @param coinbase_commerce_accepted [Boolean, nil] Represents `true` or `false` values.
        #
        #   @param custom_fields [Array<Whopsdk::Models::InvoiceCreateParams::Plan::CustomField>, nil]
        #
        #   @param description [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param expiration_days [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
        #
        #   @param initial_price [Float, nil] A float that can be a string
        #
        #   @param internal_notes [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param offer_cancel_discount [Boolean, nil] Represents `true` or `false` values.
        #
        #   @param paypal_accepted [Boolean, nil] Represents `true` or `false` values.
        #
        #   @param plan_type [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::PlanType, nil] The type of plan that can be attached to an access pass
        #
        #   @param platform_balance_accepted [Boolean, nil] Represents `true` or `false` values.
        #
        #   @param redirect_url [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param release_method [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::ReleaseMethod, nil] The methods of how a plan can be released (including raffles and waitlists).
        #
        #   @param release_method_settings [Whopsdk::Models::InvoiceCreateParams::Plan::ReleaseMethodSettings, nil]
        #
        #   @param renewal_price [Float, nil] A float that can be a string
        #
        #   @param split_pay_required_payments [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
        #
        #   @param splitit_accepted [Boolean, nil] Represents `true` or `false` values.
        #
        #   @param stock [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
        #
        #   @param trial_period_days [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
        #
        #   @param unlimited_stock [Boolean, nil] Represents `true` or `false` values.
        #
        #   @param visibility [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::Visibility, nil] Visibility of a resource

        # The available currencies on the platform
        #
        # @see Whopsdk::Models::InvoiceCreateParams::Plan#base_currency
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

        class CustomField < Whopsdk::Internal::Type::BaseModel
          # @!attribute field_type
          #
          #   @return [Symbol, :text]
          required :field_type, const: :text

          # @!attribute name
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String]
          required :name, String

          # @!attribute id
          #   Represents a unique identifier that is Base64 obfuscated. It is often used to
          #   refetch an object or as key for a cache. The ID type appears in a JSON response
          #   as a String; however, it is not intended to be human-readable. When expected as
          #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          #   input value will be accepted as an ID.
          #
          #   @return [String, nil]
          optional :id, String, nil?: true

          # @!attribute order
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          optional :order, Integer, nil?: true

          # @!attribute placeholder
          #   Represents textual data as UTF-8 character sequences. This type is most often
          #   used by GraphQL to represent free-form human-readable text.
          #
          #   @return [String, nil]
          optional :placeholder, String, nil?: true

          # @!attribute required
          #   Represents `true` or `false` values.
          #
          #   @return [Boolean, nil]
          optional :required, Whopsdk::Internal::Type::Boolean, nil?: true

          # @!method initialize(name:, id: nil, order: nil, placeholder: nil, required: nil, field_type: :text)
          #   Some parameter documentations has been truncated, see
          #   {Whopsdk::Models::InvoiceCreateParams::Plan::CustomField} for more details.
          #
          #   @param name [String] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
          #
          #   @param order [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param placeholder [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
          #
          #   @param required [Boolean, nil] Represents `true` or `false` values.
          #
          #   @param field_type [Symbol, :text]
        end

        # The type of plan that can be attached to an access pass
        #
        # @see Whopsdk::Models::InvoiceCreateParams::Plan#plan_type
        module PlanType
          extend Whopsdk::Internal::Type::Enum

          RENEWAL = :renewal
          ONE_TIME = :one_time

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The methods of how a plan can be released (including raffles and waitlists).
        #
        # @see Whopsdk::Models::InvoiceCreateParams::Plan#release_method
        module ReleaseMethod
          extend Whopsdk::Internal::Type::Enum

          BUY_NOW = :buy_now
          WAITLIST = :waitlist
          RAFFLE = :raffle

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Whopsdk::Models::InvoiceCreateParams::Plan#release_method_settings
        class ReleaseMethodSettings < Whopsdk::Internal::Type::BaseModel
          # @!attribute expires_at
          #   A valid timestamp in seconds, transported as an integer
          #
          #   @return [Integer, nil]
          optional :expires_at, Integer, nil?: true

          # @!attribute max_entries
          #   Represents non-fractional signed whole numeric values. Int can represent values
          #   between -(2^31) and 2^31 - 1.
          #
          #   @return [Integer, nil]
          optional :max_entries, Integer, nil?: true

          # @!attribute nft_weighted_entries
          #   Represents `true` or `false` values.
          #
          #   @return [Boolean, nil]
          optional :nft_weighted_entries, Whopsdk::Internal::Type::Boolean, nil?: true

          # @!attribute starts_at
          #   A valid timestamp in seconds, transported as an integer
          #
          #   @return [Integer, nil]
          optional :starts_at, Integer, nil?: true

          # @!method initialize(expires_at: nil, max_entries: nil, nft_weighted_entries: nil, starts_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Whopsdk::Models::InvoiceCreateParams::Plan::ReleaseMethodSettings} for more
          #   details.
          #
          #   @param expires_at [Integer, nil] A valid timestamp in seconds, transported as an integer
          #
          #   @param max_entries [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
          #
          #   @param nft_weighted_entries [Boolean, nil] Represents `true` or `false` values.
          #
          #   @param starts_at [Integer, nil] A valid timestamp in seconds, transported as an integer
        end

        # Visibility of a resource
        #
        # @see Whopsdk::Models::InvoiceCreateParams::Plan#visibility
        module Visibility
          extend Whopsdk::Internal::Type::Enum

          VISIBLE = :visible
          HIDDEN = :hidden
          ARCHIVED = :archived
          QUICK_LINK = :quick_link

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class AccessPass < Whopsdk::Internal::Type::BaseModel
        # @!attribute title
        #   Represents textual data as UTF-8 character sequences. This type is most often
        #   used by GraphQL to represent free-form human-readable text.
        #
        #   @return [String]
        required :title, String

        # @!attribute product_tax_code_id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String, nil]
        optional :product_tax_code_id, String, nil?: true

        # @!method initialize(title:, product_tax_code_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::InvoiceCreateParams::AccessPass} for more details.
        #
        #   The properties of the access pass to create for this invoice.
        #
        #   @param title [String] Represents textual data as UTF-8 character sequences. This type is most often us
        #
        #   @param product_tax_code_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      end
    end
  end
end
