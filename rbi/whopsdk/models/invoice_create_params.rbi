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

      # The method of collection for an invoice.
      sig { returns(Whopsdk::InvoiceCreateParams::CollectionMethod::OrSymbol) }
      attr_accessor :collection_method

      # A valid timestamp in seconds, transported as an integer
      sig { returns(Integer) }
      attr_accessor :due_date

      # The properties of the plan to create for this invoice.
      sig { returns(Whopsdk::InvoiceCreateParams::Plan) }
      attr_reader :plan

      sig { params(plan: Whopsdk::InvoiceCreateParams::Plan::OrHash).void }
      attr_writer :plan

      # The properties of the access pass to create for this invoice.
      sig { returns(T.nilable(Whopsdk::InvoiceCreateParams::AccessPass)) }
      attr_reader :access_pass

      sig do
        params(
          access_pass:
            T.nilable(Whopsdk::InvoiceCreateParams::AccessPass::OrHash)
        ).void
      end
      attr_writer :access_pass

      # Represents a unique identifier that is Base64 obfuscated. It is often used to
      # refetch an object or as key for a cache. The ID type appears in a JSON response
      # as a String; however, it is not intended to be human-readable. When expected as
      # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      # input value will be accepted as an ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :access_pass_id

      # Represents `true` or `false` values.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :charge_buyer_fee

      # Represents textual data as UTF-8 character sequences. This type is most often
      # used by GraphQL to represent free-form human-readable text.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_mutation_id

      # Represents textual data as UTF-8 character sequences. This type is most often
      # used by GraphQL to represent free-form human-readable text.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # Represents textual data as UTF-8 character sequences. This type is most often
      # used by GraphQL to represent free-form human-readable text.
      sig { returns(T.nilable(String)) }
      attr_accessor :email_address

      # Represents a unique identifier that is Base64 obfuscated. It is often used to
      # refetch an object or as key for a cache. The ID type appears in a JSON response
      # as a String; however, it is not intended to be human-readable. When expected as
      # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      # input value will be accepted as an ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      # Represents a unique identifier that is Base64 obfuscated. It is often used to
      # refetch an object or as key for a cache. The ID type appears in a JSON response
      # as a String; however, it is not intended to be human-readable. When expected as
      # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      # input value will be accepted as an ID.
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
        # The method of collection for an invoice.
        collection_method:,
        # A valid timestamp in seconds, transported as an integer
        due_date:,
        # The properties of the plan to create for this invoice.
        plan:,
        # The properties of the access pass to create for this invoice.
        access_pass: nil,
        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        access_pass_id: nil,
        # Represents `true` or `false` values.
        charge_buyer_fee: nil,
        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        client_mutation_id: nil,
        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        customer_name: nil,
        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        email_address: nil,
        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        member_id: nil,
        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
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

      # The method of collection for an invoice.
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

        # Represents `true` or `false` values.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :ach_payments

        # The available currencies on the platform
        sig do
          returns(
            T.nilable(
              Whopsdk::InvoiceCreateParams::Plan::BaseCurrency::OrSymbol
            )
          )
        end
        attr_accessor :base_currency

        # Represents non-fractional signed whole numeric values. Int can represent values
        # between -(2^31) and 2^31 - 1.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # Represents `true` or `false` values.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :card_payments

        # Represents `true` or `false` values.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :coinbase_commerce_accepted

        sig do
          returns(
            T.nilable(T::Array[Whopsdk::InvoiceCreateParams::Plan::CustomField])
          )
        end
        attr_accessor :custom_fields

        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Represents non-fractional signed whole numeric values. Int can represent values
        # between -(2^31) and 2^31 - 1.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # A float that can be a string
        sig { returns(T.nilable(Float)) }
        attr_accessor :initial_price

        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        sig { returns(T.nilable(String)) }
        attr_accessor :internal_notes

        # Represents `true` or `false` values.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :offer_cancel_discount

        # Represents `true` or `false` values.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :paypal_accepted

        # The type of plan that can be attached to an access pass
        sig do
          returns(
            T.nilable(Whopsdk::InvoiceCreateParams::Plan::PlanType::OrSymbol)
          )
        end
        attr_accessor :plan_type

        # Represents `true` or `false` values.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :platform_balance_accepted

        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        sig { returns(T.nilable(String)) }
        attr_accessor :redirect_url

        # The methods of how a plan can be released (including raffles and waitlists).
        sig do
          returns(
            T.nilable(
              Whopsdk::InvoiceCreateParams::Plan::ReleaseMethod::OrSymbol
            )
          )
        end
        attr_accessor :release_method

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

        # A float that can be a string
        sig { returns(T.nilable(Float)) }
        attr_accessor :renewal_price

        # Represents non-fractional signed whole numeric values. Int can represent values
        # between -(2^31) and 2^31 - 1.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :split_pay_required_payments

        # Represents `true` or `false` values.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :splitit_accepted

        # Represents non-fractional signed whole numeric values. Int can represent values
        # between -(2^31) and 2^31 - 1.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :stock

        # Represents non-fractional signed whole numeric values. Int can represent values
        # between -(2^31) and 2^31 - 1.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Represents `true` or `false` values.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :unlimited_stock

        # Visibility of a resource
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
          # Represents `true` or `false` values.
          ach_payments: nil,
          # The available currencies on the platform
          base_currency: nil,
          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          billing_period: nil,
          # Represents `true` or `false` values.
          card_payments: nil,
          # Represents `true` or `false` values.
          coinbase_commerce_accepted: nil,
          custom_fields: nil,
          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          description: nil,
          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          expiration_days: nil,
          # A float that can be a string
          initial_price: nil,
          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          internal_notes: nil,
          # Represents `true` or `false` values.
          offer_cancel_discount: nil,
          # Represents `true` or `false` values.
          paypal_accepted: nil,
          # The type of plan that can be attached to an access pass
          plan_type: nil,
          # Represents `true` or `false` values.
          platform_balance_accepted: nil,
          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          redirect_url: nil,
          # The methods of how a plan can be released (including raffles and waitlists).
          release_method: nil,
          release_method_settings: nil,
          # A float that can be a string
          renewal_price: nil,
          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          split_pay_required_payments: nil,
          # Represents `true` or `false` values.
          splitit_accepted: nil,
          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          stock: nil,
          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          trial_period_days: nil,
          # Represents `true` or `false` values.
          unlimited_stock: nil,
          # Visibility of a resource
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

        # The available currencies on the platform
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

          sig { returns(Symbol) }
          attr_accessor :field_type

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(String) }
          attr_accessor :name

          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :order

          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          sig { returns(T.nilable(String)) }
          attr_accessor :placeholder

          # Represents `true` or `false` values.
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
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            name:,
            # Represents a unique identifier that is Base64 obfuscated. It is often used to
            # refetch an object or as key for a cache. The ID type appears in a JSON response
            # as a String; however, it is not intended to be human-readable. When expected as
            # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
            # input value will be accepted as an ID.
            id: nil,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            order: nil,
            # Represents textual data as UTF-8 character sequences. This type is most often
            # used by GraphQL to represent free-form human-readable text.
            placeholder: nil,
            # Represents `true` or `false` values.
            required: nil,
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

        # The type of plan that can be attached to an access pass
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

        # The methods of how a plan can be released (including raffles and waitlists).
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

          # A valid timestamp in seconds, transported as an integer
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_at

          # Represents non-fractional signed whole numeric values. Int can represent values
          # between -(2^31) and 2^31 - 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :max_entries

          # Represents `true` or `false` values.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :nft_weighted_entries

          # A valid timestamp in seconds, transported as an integer
          sig { returns(T.nilable(Integer)) }
          attr_accessor :starts_at

          sig do
            params(
              expires_at: T.nilable(Integer),
              max_entries: T.nilable(Integer),
              nft_weighted_entries: T.nilable(T::Boolean),
              starts_at: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # A valid timestamp in seconds, transported as an integer
            expires_at: nil,
            # Represents non-fractional signed whole numeric values. Int can represent values
            # between -(2^31) and 2^31 - 1.
            max_entries: nil,
            # Represents `true` or `false` values.
            nft_weighted_entries: nil,
            # A valid timestamp in seconds, transported as an integer
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

        # Visibility of a resource
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

        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        sig { returns(String) }
        attr_accessor :title

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_tax_code_id

        # The properties of the access pass to create for this invoice.
        sig do
          params(title: String, product_tax_code_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          title:,
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
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
