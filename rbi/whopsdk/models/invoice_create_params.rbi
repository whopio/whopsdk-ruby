# typed: strong

module Whopsdk
  module Models
    class InvoiceCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::InvoiceCreateParams, Whopsdk::Internal::AnyHash)
        end

      # The method of collection for this invoice. If using charge_automatically, you
      # must provide a payment_token.
      sig { returns(Whopsdk::InvoiceCreateParams::CollectionMethod::OrSymbol) }
      attr_accessor :collection_method

      # The date the invoice is due, if applicable.
      sig { returns(Integer) }
      attr_accessor :due_date

      # The properties of the plan to create for this invoice.
      sig { returns(Whopsdk::InvoiceCreateParams::Plan) }
      attr_reader :plan

      sig { params(plan: Whopsdk::InvoiceCreateParams::Plan::OrHash).void }
      attr_writer :plan

      # The properties of the access pass to create for this invoice. Include this if
      # you want to create an invoice for a new product.
      sig { returns(T.nilable(Whopsdk::InvoiceCreateParams::AccessPass)) }
      attr_reader :access_pass

      sig do
        params(
          access_pass:
            T.nilable(Whopsdk::InvoiceCreateParams::AccessPass::OrHash)
        ).void
      end
      attr_writer :access_pass

      # The access pass ID to create this invoice for. Include this if you want to
      # create an invoice for an existing product.
      sig { returns(T.nilable(String)) }
      attr_accessor :access_pass_id

      # Whether or not to charge the customer a buyer fee.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :charge_buyer_fee

      # A unique identifier for the client performing the mutation.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_mutation_id

      # The name of the customer to create this invoice for. This is required if you
      # want to create an invoice for a customer who does not have a member of your
      # company yet.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # The email address to create this invoice for. This is required if you want to
      # create an invoice for a user who does not have a member of your company yet.
      sig { returns(T.nilable(String)) }
      attr_accessor :email_address

      # The member ID to create this invoice for. Include this if you want to create an
      # invoice for an existing member. If you do not have a member ID, you must provide
      # an email_address and customer_name.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      # The payment token ID to use for this invoice. If using charge_automatically, you
      # must provide a payment_token.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_token_id

      sig do
        params(
          collection_method:
            Whopsdk::InvoiceCreateParams::CollectionMethod::OrSymbol,
          due_date: Integer,
          plan: Whopsdk::InvoiceCreateParams::Plan::OrHash,
          access_pass:
            T.nilable(Whopsdk::InvoiceCreateParams::AccessPass::OrHash),
          access_pass_id: T.nilable(String),
          charge_buyer_fee: T.nilable(T::Boolean),
          client_mutation_id: T.nilable(String),
          customer_name: T.nilable(String),
          email_address: T.nilable(String),
          member_id: T.nilable(String),
          payment_token_id: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The method of collection for this invoice. If using charge_automatically, you
        # must provide a payment_token.
        collection_method:,
        # The date the invoice is due, if applicable.
        due_date:,
        # The properties of the plan to create for this invoice.
        plan:,
        # The properties of the access pass to create for this invoice. Include this if
        # you want to create an invoice for a new product.
        access_pass: nil,
        # The access pass ID to create this invoice for. Include this if you want to
        # create an invoice for an existing product.
        access_pass_id: nil,
        # Whether or not to charge the customer a buyer fee.
        charge_buyer_fee: nil,
        # A unique identifier for the client performing the mutation.
        client_mutation_id: nil,
        # The name of the customer to create this invoice for. This is required if you
        # want to create an invoice for a customer who does not have a member of your
        # company yet.
        customer_name: nil,
        # The email address to create this invoice for. This is required if you want to
        # create an invoice for a user who does not have a member of your company yet.
        email_address: nil,
        # The member ID to create this invoice for. Include this if you want to create an
        # invoice for an existing member. If you do not have a member ID, you must provide
        # an email_address and customer_name.
        member_id: nil,
        # The payment token ID to use for this invoice. If using charge_automatically, you
        # must provide a payment_token.
        payment_token_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            collection_method:
              Whopsdk::InvoiceCreateParams::CollectionMethod::OrSymbol,
            due_date: Integer,
            plan: Whopsdk::InvoiceCreateParams::Plan,
            access_pass: T.nilable(Whopsdk::InvoiceCreateParams::AccessPass),
            access_pass_id: T.nilable(String),
            charge_buyer_fee: T.nilable(T::Boolean),
            client_mutation_id: T.nilable(String),
            customer_name: T.nilable(String),
            email_address: T.nilable(String),
            member_id: T.nilable(String),
            payment_token_id: T.nilable(String),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The method of collection for this invoice. If using charge_automatically, you
      # must provide a payment_token.
      module CollectionMethod
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Whopsdk::InvoiceCreateParams::CollectionMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEND_INVOICE =
          T.let(
            :send_invoice,
            Whopsdk::InvoiceCreateParams::CollectionMethod::TaggedSymbol
          )
        CHARGE_AUTOMATICALLY =
          T.let(
            :charge_automatically,
            Whopsdk::InvoiceCreateParams::CollectionMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::InvoiceCreateParams::CollectionMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Plan < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::InvoiceCreateParams::Plan,
              Whopsdk::Internal::AnyHash
            )
          end

        # Whether or not ACH payments are accepted
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :ach_payments

        # The respective currency identifier for the plan.
        sig do
          returns(
            T.nilable(
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::OrSymbol
            )
          )
        end
        attr_accessor :base_currency

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # Whether or not card payments are accepted
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :card_payments

        # Marks whether coinbase commerce payments are/aren't accepted.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :coinbase_commerce_accepted

        # An array of custom field objects.
        sig do
          returns(
            T.nilable(T::Array[Whopsdk::InvoiceCreateParams::Plan::CustomField])
          )
        end
        attr_accessor :custom_fields

        # The description of the plan.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The interval at which the plan charges (expiration plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # An additional amount charged upon first purchase.
        sig { returns(T.nilable(Float)) }
        attr_accessor :initial_price

        # A personal description or notes section for the business.
        sig { returns(T.nilable(String)) }
        attr_accessor :internal_notes

        # Whether or not to offer a discount to cancel a subscription.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :offer_cancel_discount

        # Marks whether paypal payments are/aren't accepted.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :paypal_accepted

        # Indicates if the plan is a one time payment or recurring.
        sig do
          returns(
            T.nilable(Whopsdk::InvoiceCreateParams::Plan::PlanType::OrSymbol)
          )
        end
        attr_accessor :plan_type

        # Marks whether platform balance payments are/aren't accepted.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :platform_balance_accepted

        # The URL to redirect the customer to after purchase.
        sig { returns(T.nilable(String)) }
        attr_accessor :redirect_url

        # This is the release method the business uses to sell this plan.
        sig do
          returns(
            T.nilable(
              Whopsdk::InvoiceCreateParams::Plan::ReleaseMethod::OrSymbol
            )
          )
        end
        attr_accessor :release_method

        # Configurable settings on how this plan is released.
        sig do
          returns(
            T.nilable(Whopsdk::InvoiceCreateParams::Plan::ReleaseMethodSettings)
          )
        end
        attr_reader :release_method_settings

        sig do
          params(
            release_method_settings:
              T.nilable(
                Whopsdk::InvoiceCreateParams::Plan::ReleaseMethodSettings::OrHash
              )
          ).void
        end
        attr_writer :release_method_settings

        # The amount the customer is charged every billing period.
        sig { returns(T.nilable(Float)) }
        attr_accessor :renewal_price

        # The number of payments required before pausing the subscription.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :split_pay_required_payments

        # Marks whether payments using splitit, a payment processor, are/aren't accepted
        # for the plan.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :splitit_accepted

        # The number of units available for purchase.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :stock

        # The number of free trial days added before a renewal plan.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Limits/doesn't limit the number of units available for purchase.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :unlimited_stock

        # Shows or hides the plan from public/business view.
        sig do
          returns(
            T.nilable(Whopsdk::InvoiceCreateParams::Plan::Visibility::OrSymbol)
          )
        end
        attr_accessor :visibility

        # The properties of the plan to create for this invoice.
        sig do
          params(
            ach_payments: T.nilable(T::Boolean),
            base_currency:
              T.nilable(
                Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::OrSymbol
              ),
            billing_period: T.nilable(Integer),
            card_payments: T.nilable(T::Boolean),
            coinbase_commerce_accepted: T.nilable(T::Boolean),
            custom_fields:
              T.nilable(
                T::Array[
                  Whopsdk::InvoiceCreateParams::Plan::CustomField::OrHash
                ]
              ),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            offer_cancel_discount: T.nilable(T::Boolean),
            paypal_accepted: T.nilable(T::Boolean),
            plan_type:
              T.nilable(Whopsdk::InvoiceCreateParams::Plan::PlanType::OrSymbol),
            platform_balance_accepted: T.nilable(T::Boolean),
            redirect_url: T.nilable(String),
            release_method:
              T.nilable(
                Whopsdk::InvoiceCreateParams::Plan::ReleaseMethod::OrSymbol
              ),
            release_method_settings:
              T.nilable(
                Whopsdk::InvoiceCreateParams::Plan::ReleaseMethodSettings::OrHash
              ),
            renewal_price: T.nilable(Float),
            split_pay_required_payments: T.nilable(Integer),
            splitit_accepted: T.nilable(T::Boolean),
            stock: T.nilable(Integer),
            trial_period_days: T.nilable(Integer),
            unlimited_stock: T.nilable(T::Boolean),
            visibility:
              T.nilable(
                Whopsdk::InvoiceCreateParams::Plan::Visibility::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether or not ACH payments are accepted
          ach_payments: nil,
          # The respective currency identifier for the plan.
          base_currency: nil,
          # The interval at which the plan charges (renewal plans).
          billing_period: nil,
          # Whether or not card payments are accepted
          card_payments: nil,
          # Marks whether coinbase commerce payments are/aren't accepted.
          coinbase_commerce_accepted: nil,
          # An array of custom field objects.
          custom_fields: nil,
          # The description of the plan.
          description: nil,
          # The interval at which the plan charges (expiration plans).
          expiration_days: nil,
          # An additional amount charged upon first purchase.
          initial_price: nil,
          # A personal description or notes section for the business.
          internal_notes: nil,
          # Whether or not to offer a discount to cancel a subscription.
          offer_cancel_discount: nil,
          # Marks whether paypal payments are/aren't accepted.
          paypal_accepted: nil,
          # Indicates if the plan is a one time payment or recurring.
          plan_type: nil,
          # Marks whether platform balance payments are/aren't accepted.
          platform_balance_accepted: nil,
          # The URL to redirect the customer to after purchase.
          redirect_url: nil,
          # This is the release method the business uses to sell this plan.
          release_method: nil,
          # Configurable settings on how this plan is released.
          release_method_settings: nil,
          # The amount the customer is charged every billing period.
          renewal_price: nil,
          # The number of payments required before pausing the subscription.
          split_pay_required_payments: nil,
          # Marks whether payments using splitit, a payment processor, are/aren't accepted
          # for the plan.
          splitit_accepted: nil,
          # The number of units available for purchase.
          stock: nil,
          # The number of free trial days added before a renewal plan.
          trial_period_days: nil,
          # Limits/doesn't limit the number of units available for purchase.
          unlimited_stock: nil,
          # Shows or hides the plan from public/business view.
          visibility: nil
        )
        end

        sig do
          override.returns(
            {
              ach_payments: T.nilable(T::Boolean),
              base_currency:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::OrSymbol
                ),
              billing_period: T.nilable(Integer),
              card_payments: T.nilable(T::Boolean),
              coinbase_commerce_accepted: T.nilable(T::Boolean),
              custom_fields:
                T.nilable(
                  T::Array[Whopsdk::InvoiceCreateParams::Plan::CustomField]
                ),
              description: T.nilable(String),
              expiration_days: T.nilable(Integer),
              initial_price: T.nilable(Float),
              internal_notes: T.nilable(String),
              offer_cancel_discount: T.nilable(T::Boolean),
              paypal_accepted: T.nilable(T::Boolean),
              plan_type:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Plan::PlanType::OrSymbol
                ),
              platform_balance_accepted: T.nilable(T::Boolean),
              redirect_url: T.nilable(String),
              release_method:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Plan::ReleaseMethod::OrSymbol
                ),
              release_method_settings:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Plan::ReleaseMethodSettings
                ),
              renewal_price: T.nilable(Float),
              split_pay_required_payments: T.nilable(Integer),
              splitit_accepted: T.nilable(T::Boolean),
              stock: T.nilable(Integer),
              trial_period_days: T.nilable(Integer),
              unlimited_stock: T.nilable(T::Boolean),
              visibility:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Plan::Visibility::OrSymbol
                )
            }
          )
        end
        def to_hash
        end

        # The respective currency identifier for the plan.
        module BaseCurrency
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Whopsdk::InvoiceCreateParams::Plan::BaseCurrency)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USD =
            T.let(
              :usd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          SGD =
            T.let(
              :sgd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          INR =
            T.let(
              :inr,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          AUD =
            T.let(
              :aud,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          BRL =
            T.let(
              :brl,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          CAD =
            T.let(
              :cad,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          DKK =
            T.let(
              :dkk,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          EUR =
            T.let(
              :eur,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          NOK =
            T.let(
              :nok,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          GBP =
            T.let(
              :gbp,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          SEK =
            T.let(
              :sek,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          CHF =
            T.let(
              :chf,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          HKD =
            T.let(
              :hkd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          HUF =
            T.let(
              :huf,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          JPY =
            T.let(
              :jpy,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          MXN =
            T.let(
              :mxn,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          MYR =
            T.let(
              :myr,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          PLN =
            T.let(
              :pln,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          CZK =
            T.let(
              :czk,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          NZD =
            T.let(
              :nzd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          AED =
            T.let(
              :aed,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          ETH =
            T.let(
              :eth,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          APE =
            T.let(
              :ape,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          COP =
            T.let(
              :cop,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          RON =
            T.let(
              :ron,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          THB =
            T.let(
              :thb,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          BGN =
            T.let(
              :bgn,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          IDR =
            T.let(
              :idr,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          DOP =
            T.let(
              :dop,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          PHP =
            T.let(
              :php,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          TRY =
            T.let(
              :try,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          KRW =
            T.let(
              :krw,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          TWD =
            T.let(
              :twd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          VND =
            T.let(
              :vnd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          PKR =
            T.let(
              :pkr,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          CLP =
            T.let(
              :clp,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          UYU =
            T.let(
              :uyu,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          ARS =
            T.let(
              :ars,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          ZAR =
            T.let(
              :zar,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          DZD =
            T.let(
              :dzd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          TND =
            T.let(
              :tnd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          MAD =
            T.let(
              :mad,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          KES =
            T.let(
              :kes,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          KWD =
            T.let(
              :kwd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          JOD =
            T.let(
              :jod,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          ALL =
            T.let(
              :all,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          XCD =
            T.let(
              :xcd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          AMD =
            T.let(
              :amd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          BSD =
            T.let(
              :bsd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          BHD =
            T.let(
              :bhd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          BOB =
            T.let(
              :bob,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          BAM =
            T.let(
              :bam,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          KHR =
            T.let(
              :khr,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          CRC =
            T.let(
              :crc,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          XOF =
            T.let(
              :xof,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          EGP =
            T.let(
              :egp,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          ETB =
            T.let(
              :etb,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          GMD =
            T.let(
              :gmd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          GHS =
            T.let(
              :ghs,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          GTQ =
            T.let(
              :gtq,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          GYD =
            T.let(
              :gyd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          ILS =
            T.let(
              :ils,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          JMD =
            T.let(
              :jmd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          MOP =
            T.let(
              :mop,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          MGA =
            T.let(
              :mga,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          MUR =
            T.let(
              :mur,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          MDL =
            T.let(
              :mdl,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          MNT =
            T.let(
              :mnt,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          NAD =
            T.let(
              :nad,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          NGN =
            T.let(
              :ngn,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          MKD =
            T.let(
              :mkd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          OMR =
            T.let(
              :omr,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          PYG =
            T.let(
              :pyg,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          PEN =
            T.let(
              :pen,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          QAR =
            T.let(
              :qar,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          RWF =
            T.let(
              :rwf,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          SAR =
            T.let(
              :sar,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          RSD =
            T.let(
              :rsd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          LKR =
            T.let(
              :lkr,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          TZS =
            T.let(
              :tzs,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          TTD =
            T.let(
              :ttd,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          UZS =
            T.let(
              :uzs,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          RUB =
            T.let(
              :rub,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )
          BTC =
            T.let(
              :btc,
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CustomField < Whopsdk::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Whopsdk::InvoiceCreateParams::Plan::CustomField,
                Whopsdk::Internal::AnyHash
              )
            end

          # The type of the custom field.
          sig { returns(Symbol) }
          attr_accessor :field_type

          # The name of the custom field.
          sig { returns(String) }
          attr_accessor :name

          # The ID of the custom field (if being updated)
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # The order of the field.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :order

          # The placeholder value of the field.
          sig { returns(T.nilable(String)) }
          attr_accessor :placeholder

          # Whether or not the field is required.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :required

          sig do
            params(
              name: String,
              id: T.nilable(String),
              order: T.nilable(Integer),
              placeholder: T.nilable(String),
              required: T.nilable(T::Boolean),
              field_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The name of the custom field.
            name:,
            # The ID of the custom field (if being updated)
            id: nil,
            # The order of the field.
            order: nil,
            # The placeholder value of the field.
            placeholder: nil,
            # Whether or not the field is required.
            required: nil,
            # The type of the custom field.
            field_type: :text
          )
          end

          sig do
            override.returns(
              {
                field_type: Symbol,
                name: String,
                id: T.nilable(String),
                order: T.nilable(Integer),
                placeholder: T.nilable(String),
                required: T.nilable(T::Boolean)
              }
            )
          end
          def to_hash
          end
        end

        # Indicates if the plan is a one time payment or recurring.
        module PlanType
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Whopsdk::InvoiceCreateParams::Plan::PlanType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RENEWAL =
            T.let(
              :renewal,
              Whopsdk::InvoiceCreateParams::Plan::PlanType::TaggedSymbol
            )
          ONE_TIME =
            T.let(
              :one_time,
              Whopsdk::InvoiceCreateParams::Plan::PlanType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::InvoiceCreateParams::Plan::PlanType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # This is the release method the business uses to sell this plan.
        module ReleaseMethod
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Whopsdk::InvoiceCreateParams::Plan::ReleaseMethod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUY_NOW =
            T.let(
              :buy_now,
              Whopsdk::InvoiceCreateParams::Plan::ReleaseMethod::TaggedSymbol
            )
          WAITLIST =
            T.let(
              :waitlist,
              Whopsdk::InvoiceCreateParams::Plan::ReleaseMethod::TaggedSymbol
            )
          RAFFLE =
            T.let(
              :raffle,
              Whopsdk::InvoiceCreateParams::Plan::ReleaseMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::InvoiceCreateParams::Plan::ReleaseMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class ReleaseMethodSettings < Whopsdk::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Whopsdk::InvoiceCreateParams::Plan::ReleaseMethodSettings,
                Whopsdk::Internal::AnyHash
              )
            end

          # When the raffle will expire
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_at

          # The maximum number of entries allowed for the raffle or waitlist
          sig { returns(T.nilable(Integer)) }
          attr_accessor :max_entries

          # If this is enabled, the raffle will get entries based off of how many NFTs the
          # user owns
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :nft_weighted_entries

          # When the raffle will start
          sig { returns(T.nilable(Integer)) }
          attr_accessor :starts_at

          # Configurable settings on how this plan is released.
          sig do
            params(
              expires_at: T.nilable(Integer),
              max_entries: T.nilable(Integer),
              nft_weighted_entries: T.nilable(T::Boolean),
              starts_at: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # When the raffle will expire
            expires_at: nil,
            # The maximum number of entries allowed for the raffle or waitlist
            max_entries: nil,
            # If this is enabled, the raffle will get entries based off of how many NFTs the
            # user owns
            nft_weighted_entries: nil,
            # When the raffle will start
            starts_at: nil
          )
          end

          sig do
            override.returns(
              {
                expires_at: T.nilable(Integer),
                max_entries: T.nilable(Integer),
                nft_weighted_entries: T.nilable(T::Boolean),
                starts_at: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        # Shows or hides the plan from public/business view.
        module Visibility
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Whopsdk::InvoiceCreateParams::Plan::Visibility)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VISIBLE =
            T.let(
              :visible,
              Whopsdk::InvoiceCreateParams::Plan::Visibility::TaggedSymbol
            )
          HIDDEN =
            T.let(
              :hidden,
              Whopsdk::InvoiceCreateParams::Plan::Visibility::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              Whopsdk::InvoiceCreateParams::Plan::Visibility::TaggedSymbol
            )
          QUICK_LINK =
            T.let(
              :quick_link,
              Whopsdk::InvoiceCreateParams::Plan::Visibility::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::InvoiceCreateParams::Plan::Visibility::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class AccessPass < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::InvoiceCreateParams::AccessPass,
              Whopsdk::Internal::AnyHash
            )
          end

        # The title of the access pass.
        sig { returns(String) }
        attr_accessor :title

        # The ID of the product tax code to apply to this access pass.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_tax_code_id

        # The properties of the access pass to create for this invoice. Include this if
        # you want to create an invoice for a new product.
        sig do
          params(title: String, product_tax_code_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # The title of the access pass.
          title:,
          # The ID of the product tax code to apply to this access pass.
          product_tax_code_id: nil
        )
        end

        sig do
          override.returns(
            { title: String, product_tax_code_id: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
