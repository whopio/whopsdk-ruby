# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#create
    class InvoiceCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute collection_method
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceCreateParams::CollectionMethod]
      required :collection_method, enum: -> { Whopsdk::InvoiceCreateParams::CollectionMethod }

      # @!attribute due_date
      #
      #   @return [Integer]
      required :due_date, Integer

      # @!attribute plan
      #
      #   @return [Whopsdk::Models::InvoiceCreateParams::Plan]
      required :plan, -> { Whopsdk::InvoiceCreateParams::Plan }

      # @!attribute access_pass
      #
      #   @return [Whopsdk::Models::InvoiceCreateParams::AccessPass, nil]
      optional :access_pass, -> { Whopsdk::InvoiceCreateParams::AccessPass }, nil?: true

      # @!attribute access_pass_id
      #
      #   @return [String, nil]
      optional :access_pass_id, String, nil?: true

      # @!attribute charge_buyer_fee
      #
      #   @return [Boolean, nil]
      optional :charge_buyer_fee, Whopsdk::Internal::Type::Boolean, nil?: true

      # @!attribute client_mutation_id
      #
      #   @return [String, nil]
      optional :client_mutation_id, String, nil?: true

      # @!attribute customer_name
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute email_address
      #
      #   @return [String, nil]
      optional :email_address, String, nil?: true

      # @!attribute member_id
      #
      #   @return [String, nil]
      optional :member_id, String, nil?: true

      # @!attribute payment_token_id
      #
      #   @return [String, nil]
      optional :payment_token_id, String, nil?: true

      # @!method initialize(collection_method:, due_date:, plan:, access_pass: nil, access_pass_id: nil, charge_buyer_fee: nil, client_mutation_id: nil, customer_name: nil, email_address: nil, member_id: nil, payment_token_id: nil, request_options: {})
      #   @param collection_method [Symbol, Whopsdk::Models::InvoiceCreateParams::CollectionMethod]
      #   @param due_date [Integer]
      #   @param plan [Whopsdk::Models::InvoiceCreateParams::Plan]
      #   @param access_pass [Whopsdk::Models::InvoiceCreateParams::AccessPass, nil]
      #   @param access_pass_id [String, nil]
      #   @param charge_buyer_fee [Boolean, nil]
      #   @param client_mutation_id [String, nil]
      #   @param customer_name [String, nil]
      #   @param email_address [String, nil]
      #   @param member_id [String, nil]
      #   @param payment_token_id [String, nil]
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      module CollectionMethod
        extend Whopsdk::Internal::Type::Enum

        SEND_INVOICE = :send_invoice
        CHARGE_AUTOMATICALLY = :charge_automatically

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Plan < Whopsdk::Internal::Type::BaseModel
        # @!attribute ach_payments
        #
        #   @return [Boolean, nil]
        optional :ach_payments, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute base_currency
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::BaseCurrency, nil]
        optional :base_currency, enum: -> { Whopsdk::InvoiceCreateParams::Plan::BaseCurrency }, nil?: true

        # @!attribute billing_period
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute card_payments
        #
        #   @return [Boolean, nil]
        optional :card_payments, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute coinbase_commerce_accepted
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
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute expiration_days
        #
        #   @return [Integer, nil]
        optional :expiration_days, Integer, nil?: true

        # @!attribute initial_price
        #
        #   @return [Float, nil]
        optional :initial_price, Float, nil?: true

        # @!attribute internal_notes
        #
        #   @return [String, nil]
        optional :internal_notes, String, nil?: true

        # @!attribute offer_cancel_discount
        #
        #   @return [Boolean, nil]
        optional :offer_cancel_discount, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute paypal_accepted
        #
        #   @return [Boolean, nil]
        optional :paypal_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute plan_type
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::PlanType, nil]
        optional :plan_type, enum: -> { Whopsdk::InvoiceCreateParams::Plan::PlanType }, nil?: true

        # @!attribute platform_balance_accepted
        #
        #   @return [Boolean, nil]
        optional :platform_balance_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute redirect_url
        #
        #   @return [String, nil]
        optional :redirect_url, String, nil?: true

        # @!attribute release_method
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
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

        # @!attribute requirements
        #
        #   @return [Whopsdk::Models::InvoiceCreateParams::Plan::Requirements, nil]
        optional :requirements, -> { Whopsdk::InvoiceCreateParams::Plan::Requirements }, nil?: true

        # @!attribute split_pay_required_payments
        #
        #   @return [Integer, nil]
        optional :split_pay_required_payments, Integer, nil?: true

        # @!attribute splitit_accepted
        #
        #   @return [Boolean, nil]
        optional :splitit_accepted, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute stock
        #
        #   @return [Integer, nil]
        optional :stock, Integer, nil?: true

        # @!attribute trial_period_days
        #
        #   @return [Integer, nil]
        optional :trial_period_days, Integer, nil?: true

        # @!attribute unlimited_stock
        #
        #   @return [Boolean, nil]
        optional :unlimited_stock, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute visibility
        #
        #   @return [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::Visibility, nil]
        optional :visibility, enum: -> { Whopsdk::InvoiceCreateParams::Plan::Visibility }, nil?: true

        # @!method initialize(ach_payments: nil, base_currency: nil, billing_period: nil, card_payments: nil, coinbase_commerce_accepted: nil, custom_fields: nil, description: nil, expiration_days: nil, initial_price: nil, internal_notes: nil, offer_cancel_discount: nil, paypal_accepted: nil, plan_type: nil, platform_balance_accepted: nil, redirect_url: nil, release_method: nil, release_method_settings: nil, renewal_price: nil, requirements: nil, split_pay_required_payments: nil, splitit_accepted: nil, stock: nil, trial_period_days: nil, unlimited_stock: nil, visibility: nil)
        #   @param ach_payments [Boolean, nil]
        #   @param base_currency [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::BaseCurrency, nil]
        #   @param billing_period [Integer, nil]
        #   @param card_payments [Boolean, nil]
        #   @param coinbase_commerce_accepted [Boolean, nil]
        #   @param custom_fields [Array<Whopsdk::Models::InvoiceCreateParams::Plan::CustomField>, nil]
        #   @param description [String, nil]
        #   @param expiration_days [Integer, nil]
        #   @param initial_price [Float, nil]
        #   @param internal_notes [String, nil]
        #   @param offer_cancel_discount [Boolean, nil]
        #   @param paypal_accepted [Boolean, nil]
        #   @param plan_type [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::PlanType, nil]
        #   @param platform_balance_accepted [Boolean, nil]
        #   @param redirect_url [String, nil]
        #   @param release_method [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::ReleaseMethod, nil]
        #   @param release_method_settings [Whopsdk::Models::InvoiceCreateParams::Plan::ReleaseMethodSettings, nil]
        #   @param renewal_price [Float, nil]
        #   @param requirements [Whopsdk::Models::InvoiceCreateParams::Plan::Requirements, nil]
        #   @param split_pay_required_payments [Integer, nil]
        #   @param splitit_accepted [Boolean, nil]
        #   @param stock [Integer, nil]
        #   @param trial_period_days [Integer, nil]
        #   @param unlimited_stock [Boolean, nil]
        #   @param visibility [Symbol, Whopsdk::Models::InvoiceCreateParams::Plan::Visibility, nil]

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
          #
          #   @return [String]
          required :name, String

          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String, nil?: true

          # @!attribute order
          #
          #   @return [Integer, nil]
          optional :order, Integer, nil?: true

          # @!attribute placeholder
          #
          #   @return [String, nil]
          optional :placeholder, String, nil?: true

          # @!attribute required
          #
          #   @return [Boolean, nil]
          optional :required, Whopsdk::Internal::Type::Boolean, nil?: true

          # @!method initialize(name:, id: nil, order: nil, placeholder: nil, required: nil, field_type: :text)
          #   @param name [String]
          #   @param id [String, nil]
          #   @param order [Integer, nil]
          #   @param placeholder [String, nil]
          #   @param required [Boolean, nil]
          #   @param field_type [Symbol, :text]
        end

        # @see Whopsdk::Models::InvoiceCreateParams::Plan#plan_type
        module PlanType
          extend Whopsdk::Internal::Type::Enum

          RENEWAL = :renewal
          ONE_TIME = :one_time

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
          #
          #   @return [Integer, nil]
          optional :expires_at, Integer, nil?: true

          # @!attribute max_entries
          #
          #   @return [Integer, nil]
          optional :max_entries, Integer, nil?: true

          # @!attribute nft_weighted_entries
          #
          #   @return [Boolean, nil]
          optional :nft_weighted_entries, Whopsdk::Internal::Type::Boolean, nil?: true

          # @!attribute starts_at
          #
          #   @return [Integer, nil]
          optional :starts_at, Integer, nil?: true

          # @!method initialize(expires_at: nil, max_entries: nil, nft_weighted_entries: nil, starts_at: nil)
          #   @param expires_at [Integer, nil]
          #   @param max_entries [Integer, nil]
          #   @param nft_weighted_entries [Boolean, nil]
          #   @param starts_at [Integer, nil]
        end

        # @see Whopsdk::Models::InvoiceCreateParams::Plan#requirements
        class Requirements < Whopsdk::Internal::Type::BaseModel
          # @!attribute custom_password
          #
          #   @return [String, nil]
          optional :custom_password, String

          # @!attribute email_required
          #
          #   @return [Boolean, Whopsdk::Models::InvoiceCreateParams::Plan::Requirements::EmailRequired, nil]
          optional :email_required, enum: -> { Whopsdk::InvoiceCreateParams::Plan::Requirements::EmailRequired }

          # @!attribute ownership_of_access_passes
          #
          #   @return [Array<String>, nil]
          optional :ownership_of_access_passes, Whopsdk::Internal::Type::ArrayOf[String]

          # @!method initialize(custom_password: nil, email_required: nil, ownership_of_access_passes: nil)
          #   @param custom_password [String]
          #   @param email_required [Boolean, Whopsdk::Models::InvoiceCreateParams::Plan::Requirements::EmailRequired]
          #   @param ownership_of_access_passes [Array<String>]

          # @see Whopsdk::Models::InvoiceCreateParams::Plan::Requirements#email_required
          module EmailRequired
            extend Whopsdk::Internal::Type::Enum

            TRUE = true

            # @!method self.values
            #   @return [Array<Boolean>]
          end
        end

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
        #
        #   @return [String]
        required :title, String

        # @!attribute product_tax_code_id
        #
        #   @return [String, nil]
        optional :product_tax_code_id, String, nil?: true

        # @!method initialize(title:, product_tax_code_id: nil)
        #   @param title [String]
        #   @param product_tax_code_id [String, nil]
      end
    end
  end
end
