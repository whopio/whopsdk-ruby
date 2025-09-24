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

      sig { returns(Whopsdk::InvoiceCreateParams::Input) }
      attr_reader :input

      sig { params(input: Whopsdk::InvoiceCreateParams::Input::OrHash).void }
      attr_writer :input

      sig do
        params(
          input: Whopsdk::InvoiceCreateParams::Input::OrHash,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(input:, request_options: {})
      end

      sig do
        override.returns(
          {
            input: Whopsdk::InvoiceCreateParams::Input,
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Input < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::InvoiceCreateParams::Input,
              Whopsdk::Internal::AnyHash
            )
          end

        sig do
          returns(
            Whopsdk::InvoiceCreateParams::Input::CollectionMethod::OrSymbol
          )
        end
        attr_accessor :collection_method

        sig { returns(Integer) }
        attr_accessor :due_date

        sig { returns(Whopsdk::InvoiceCreateParams::Input::Plan) }
        attr_reader :plan

        sig do
          params(plan: Whopsdk::InvoiceCreateParams::Input::Plan::OrHash).void
        end
        attr_writer :plan

        sig do
          returns(T.nilable(Whopsdk::InvoiceCreateParams::Input::AccessPass))
        end
        attr_reader :access_pass

        sig do
          params(
            access_pass:
              T.nilable(Whopsdk::InvoiceCreateParams::Input::AccessPass::OrHash)
          ).void
        end
        attr_writer :access_pass

        sig { returns(T.nilable(String)) }
        attr_accessor :access_pass_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :charge_buyer_fee

        sig { returns(T.nilable(String)) }
        attr_accessor :client_mutation_id

        sig { returns(T.nilable(String)) }
        attr_accessor :customer_name

        sig { returns(T.nilable(String)) }
        attr_accessor :email_address

        sig { returns(T.nilable(String)) }
        attr_accessor :member_id

        sig { returns(T.nilable(String)) }
        attr_accessor :payment_token_id

        sig do
          params(
            collection_method:
              Whopsdk::InvoiceCreateParams::Input::CollectionMethod::OrSymbol,
            due_date: Integer,
            plan: Whopsdk::InvoiceCreateParams::Input::Plan::OrHash,
            access_pass:
              T.nilable(
                Whopsdk::InvoiceCreateParams::Input::AccessPass::OrHash
              ),
            access_pass_id: T.nilable(String),
            charge_buyer_fee: T.nilable(T::Boolean),
            client_mutation_id: T.nilable(String),
            customer_name: T.nilable(String),
            email_address: T.nilable(String),
            member_id: T.nilable(String),
            payment_token_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          collection_method:,
          due_date:,
          plan:,
          access_pass: nil,
          access_pass_id: nil,
          charge_buyer_fee: nil,
          client_mutation_id: nil,
          customer_name: nil,
          email_address: nil,
          member_id: nil,
          payment_token_id: nil
        )
        end

        sig do
          override.returns(
            {
              collection_method:
                Whopsdk::InvoiceCreateParams::Input::CollectionMethod::OrSymbol,
              due_date: Integer,
              plan: Whopsdk::InvoiceCreateParams::Input::Plan,
              access_pass:
                T.nilable(Whopsdk::InvoiceCreateParams::Input::AccessPass),
              access_pass_id: T.nilable(String),
              charge_buyer_fee: T.nilable(T::Boolean),
              client_mutation_id: T.nilable(String),
              customer_name: T.nilable(String),
              email_address: T.nilable(String),
              member_id: T.nilable(String),
              payment_token_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module CollectionMethod
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Whopsdk::InvoiceCreateParams::Input::CollectionMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SEND_INVOICE =
            T.let(
              :send_invoice,
              Whopsdk::InvoiceCreateParams::Input::CollectionMethod::TaggedSymbol
            )
          CHARGE_AUTOMATICALLY =
            T.let(
              :charge_automatically,
              Whopsdk::InvoiceCreateParams::Input::CollectionMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::InvoiceCreateParams::Input::CollectionMethod::TaggedSymbol
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
                Whopsdk::InvoiceCreateParams::Input::Plan,
                Whopsdk::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :ach_payments

          sig do
            returns(
              T.nilable(
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::OrSymbol
              )
            )
          end
          attr_accessor :base_currency

          sig { returns(T.nilable(Integer)) }
          attr_accessor :billing_period

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :card_payments

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :coinbase_commerce_accepted

          sig do
            returns(
              T.nilable(
                T::Array[Whopsdk::InvoiceCreateParams::Input::Plan::CustomField]
              )
            )
          end
          attr_accessor :custom_fields

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(Integer)) }
          attr_accessor :expiration_days

          sig { returns(T.nilable(T.anything)) }
          attr_reader :initial_price

          sig { params(initial_price: T.anything).void }
          attr_writer :initial_price

          sig { returns(T.nilable(String)) }
          attr_accessor :internal_notes

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :offer_cancel_discount

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :paypal_accepted

          sig do
            returns(
              T.nilable(
                Whopsdk::InvoiceCreateParams::Input::Plan::PlanType::OrSymbol
              )
            )
          end
          attr_accessor :plan_type

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :platform_balance_accepted

          sig { returns(T.nilable(String)) }
          attr_accessor :redirect_url

          sig do
            returns(
              T.nilable(
                Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethod::OrSymbol
              )
            )
          end
          attr_accessor :release_method

          sig do
            returns(
              T.nilable(
                Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethodSettings
              )
            )
          end
          attr_reader :release_method_settings

          sig do
            params(
              release_method_settings:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethodSettings::OrHash
                )
            ).void
          end
          attr_writer :release_method_settings

          sig { returns(T.nilable(T.anything)) }
          attr_reader :renewal_price

          sig { params(renewal_price: T.anything).void }
          attr_writer :renewal_price

          sig { returns(T.nilable(T.anything)) }
          attr_reader :requirements

          sig { params(requirements: T.anything).void }
          attr_writer :requirements

          sig { returns(T.nilable(Integer)) }
          attr_accessor :split_pay_required_payments

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :splitit_accepted

          sig { returns(T.nilable(Integer)) }
          attr_accessor :stock

          sig { returns(T.nilable(Integer)) }
          attr_accessor :trial_period_days

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :unlimited_stock

          sig do
            returns(
              T.nilable(
                Whopsdk::InvoiceCreateParams::Input::Plan::Visibility::OrSymbol
              )
            )
          end
          attr_accessor :visibility

          sig do
            params(
              ach_payments: T.nilable(T::Boolean),
              base_currency:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::OrSymbol
                ),
              billing_period: T.nilable(Integer),
              card_payments: T.nilable(T::Boolean),
              coinbase_commerce_accepted: T.nilable(T::Boolean),
              custom_fields:
                T.nilable(
                  T::Array[
                    Whopsdk::InvoiceCreateParams::Input::Plan::CustomField::OrHash
                  ]
                ),
              description: T.nilable(String),
              expiration_days: T.nilable(Integer),
              initial_price: T.anything,
              internal_notes: T.nilable(String),
              offer_cancel_discount: T.nilable(T::Boolean),
              paypal_accepted: T.nilable(T::Boolean),
              plan_type:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Input::Plan::PlanType::OrSymbol
                ),
              platform_balance_accepted: T.nilable(T::Boolean),
              redirect_url: T.nilable(String),
              release_method:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethod::OrSymbol
                ),
              release_method_settings:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethodSettings::OrHash
                ),
              renewal_price: T.anything,
              requirements: T.anything,
              split_pay_required_payments: T.nilable(Integer),
              splitit_accepted: T.nilable(T::Boolean),
              stock: T.nilable(Integer),
              trial_period_days: T.nilable(Integer),
              unlimited_stock: T.nilable(T::Boolean),
              visibility:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Input::Plan::Visibility::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            ach_payments: nil,
            base_currency: nil,
            billing_period: nil,
            card_payments: nil,
            coinbase_commerce_accepted: nil,
            custom_fields: nil,
            description: nil,
            expiration_days: nil,
            initial_price: nil,
            internal_notes: nil,
            offer_cancel_discount: nil,
            paypal_accepted: nil,
            plan_type: nil,
            platform_balance_accepted: nil,
            redirect_url: nil,
            release_method: nil,
            release_method_settings: nil,
            renewal_price: nil,
            requirements: nil,
            split_pay_required_payments: nil,
            splitit_accepted: nil,
            stock: nil,
            trial_period_days: nil,
            unlimited_stock: nil,
            visibility: nil
          )
          end

          sig do
            override.returns(
              {
                ach_payments: T.nilable(T::Boolean),
                base_currency:
                  T.nilable(
                    Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::OrSymbol
                  ),
                billing_period: T.nilable(Integer),
                card_payments: T.nilable(T::Boolean),
                coinbase_commerce_accepted: T.nilable(T::Boolean),
                custom_fields:
                  T.nilable(
                    T::Array[
                      Whopsdk::InvoiceCreateParams::Input::Plan::CustomField
                    ]
                  ),
                description: T.nilable(String),
                expiration_days: T.nilable(Integer),
                initial_price: T.anything,
                internal_notes: T.nilable(String),
                offer_cancel_discount: T.nilable(T::Boolean),
                paypal_accepted: T.nilable(T::Boolean),
                plan_type:
                  T.nilable(
                    Whopsdk::InvoiceCreateParams::Input::Plan::PlanType::OrSymbol
                  ),
                platform_balance_accepted: T.nilable(T::Boolean),
                redirect_url: T.nilable(String),
                release_method:
                  T.nilable(
                    Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethod::OrSymbol
                  ),
                release_method_settings:
                  T.nilable(
                    Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethodSettings
                  ),
                renewal_price: T.anything,
                requirements: T.anything,
                split_pay_required_payments: T.nilable(Integer),
                splitit_accepted: T.nilable(T::Boolean),
                stock: T.nilable(Integer),
                trial_period_days: T.nilable(Integer),
                unlimited_stock: T.nilable(T::Boolean),
                visibility:
                  T.nilable(
                    Whopsdk::InvoiceCreateParams::Input::Plan::Visibility::OrSymbol
                  )
              }
            )
          end
          def to_hash
          end

          module BaseCurrency
            extend Whopsdk::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USD =
              T.let(
                :usd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            SGD =
              T.let(
                :sgd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            INR =
              T.let(
                :inr,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            AUD =
              T.let(
                :aud,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            BRL =
              T.let(
                :brl,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            CAD =
              T.let(
                :cad,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            DKK =
              T.let(
                :dkk,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            EUR =
              T.let(
                :eur,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            NOK =
              T.let(
                :nok,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            GBP =
              T.let(
                :gbp,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            SEK =
              T.let(
                :sek,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            CHF =
              T.let(
                :chf,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            HKD =
              T.let(
                :hkd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            HUF =
              T.let(
                :huf,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            JPY =
              T.let(
                :jpy,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            MXN =
              T.let(
                :mxn,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            MYR =
              T.let(
                :myr,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            PLN =
              T.let(
                :pln,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            CZK =
              T.let(
                :czk,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            NZD =
              T.let(
                :nzd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            AED =
              T.let(
                :aed,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            ETH =
              T.let(
                :eth,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            APE =
              T.let(
                :ape,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            COP =
              T.let(
                :cop,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            RON =
              T.let(
                :ron,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            THB =
              T.let(
                :thb,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            BGN =
              T.let(
                :bgn,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            IDR =
              T.let(
                :idr,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            DOP =
              T.let(
                :dop,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            PHP =
              T.let(
                :php,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            TRY =
              T.let(
                :try,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            KRW =
              T.let(
                :krw,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            TWD =
              T.let(
                :twd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            VND =
              T.let(
                :vnd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            PKR =
              T.let(
                :pkr,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            CLP =
              T.let(
                :clp,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            UYU =
              T.let(
                :uyu,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            ARS =
              T.let(
                :ars,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            ZAR =
              T.let(
                :zar,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            DZD =
              T.let(
                :dzd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            TND =
              T.let(
                :tnd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            MAD =
              T.let(
                :mad,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            KES =
              T.let(
                :kes,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            KWD =
              T.let(
                :kwd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            JOD =
              T.let(
                :jod,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            XCD =
              T.let(
                :xcd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            AMD =
              T.let(
                :amd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            BSD =
              T.let(
                :bsd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            BHD =
              T.let(
                :bhd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            BOB =
              T.let(
                :bob,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            BAM =
              T.let(
                :bam,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            KHR =
              T.let(
                :khr,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            CRC =
              T.let(
                :crc,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            XOF =
              T.let(
                :xof,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            EGP =
              T.let(
                :egp,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            ETB =
              T.let(
                :etb,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            GMD =
              T.let(
                :gmd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            GHS =
              T.let(
                :ghs,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            GTQ =
              T.let(
                :gtq,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            GYD =
              T.let(
                :gyd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            ILS =
              T.let(
                :ils,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            JMD =
              T.let(
                :jmd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            MOP =
              T.let(
                :mop,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            MGA =
              T.let(
                :mga,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            MUR =
              T.let(
                :mur,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            MDL =
              T.let(
                :mdl,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            MNT =
              T.let(
                :mnt,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            NAD =
              T.let(
                :nad,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            NGN =
              T.let(
                :ngn,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            MKD =
              T.let(
                :mkd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            OMR =
              T.let(
                :omr,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            PYG =
              T.let(
                :pyg,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            PEN =
              T.let(
                :pen,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            QAR =
              T.let(
                :qar,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            RWF =
              T.let(
                :rwf,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            SAR =
              T.let(
                :sar,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            RSD =
              T.let(
                :rsd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            LKR =
              T.let(
                :lkr,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            TZS =
              T.let(
                :tzs,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            TTD =
              T.let(
                :ttd,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            UZS =
              T.let(
                :uzs,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            RUB =
              T.let(
                :rub,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )
            BTC =
              T.let(
                :btc,
                Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Whopsdk::InvoiceCreateParams::Input::Plan::BaseCurrency::TaggedSymbol
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
                  Whopsdk::InvoiceCreateParams::Input::Plan::CustomField,
                  Whopsdk::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :field_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :id

            sig { returns(T.nilable(Integer)) }
            attr_accessor :order

            sig { returns(T.nilable(String)) }
            attr_accessor :placeholder

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
              name:,
              id: nil,
              order: nil,
              placeholder: nil,
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

          module PlanType
            extend Whopsdk::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Whopsdk::InvoiceCreateParams::Input::Plan::PlanType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RENEWAL =
              T.let(
                :renewal,
                Whopsdk::InvoiceCreateParams::Input::Plan::PlanType::TaggedSymbol
              )
            ONE_TIME =
              T.let(
                :one_time,
                Whopsdk::InvoiceCreateParams::Input::Plan::PlanType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Whopsdk::InvoiceCreateParams::Input::Plan::PlanType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ReleaseMethod
            extend Whopsdk::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUY_NOW =
              T.let(
                :buy_now,
                Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethod::TaggedSymbol
              )
            WAITLIST =
              T.let(
                :waitlist,
                Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethod::TaggedSymbol
              )
            RAFFLE =
              T.let(
                :raffle,
                Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethod::TaggedSymbol
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
                  Whopsdk::InvoiceCreateParams::Input::Plan::ReleaseMethodSettings,
                  Whopsdk::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_accessor :expires_at

            sig { returns(T.nilable(Integer)) }
            attr_accessor :max_entries

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :nft_weighted_entries

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
              expires_at: nil,
              max_entries: nil,
              nft_weighted_entries: nil,
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

          module Visibility
            extend Whopsdk::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Whopsdk::InvoiceCreateParams::Input::Plan::Visibility
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VISIBLE =
              T.let(
                :visible,
                Whopsdk::InvoiceCreateParams::Input::Plan::Visibility::TaggedSymbol
              )
            HIDDEN =
              T.let(
                :hidden,
                Whopsdk::InvoiceCreateParams::Input::Plan::Visibility::TaggedSymbol
              )
            ARCHIVED =
              T.let(
                :archived,
                Whopsdk::InvoiceCreateParams::Input::Plan::Visibility::TaggedSymbol
              )
            QUICK_LINK =
              T.let(
                :quick_link,
                Whopsdk::InvoiceCreateParams::Input::Plan::Visibility::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Whopsdk::InvoiceCreateParams::Input::Plan::Visibility::TaggedSymbol
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
                Whopsdk::InvoiceCreateParams::Input::AccessPass,
                Whopsdk::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :title

          sig { returns(T.nilable(String)) }
          attr_accessor :product_tax_code_id

          sig do
            params(
              title: String,
              product_tax_code_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(title:, product_tax_code_id: nil)
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
end
