# typed: strong

module Whopsdk
  module Models
    class InvoiceRetrieveResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::InvoiceRetrieveResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # The ID of the invoice.
      sig { returns(String) }
      attr_accessor :id

      # The date the invoice was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The plan that the invoice was created for.
      sig { returns(Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan) }
      attr_reader :current_plan

      sig do
        params(
          current_plan:
            Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::OrHash
        ).void
      end
      attr_writer :current_plan

      # The date the invoice is due.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :due_date

      # The email address that the invoice was created for.
      sig { returns(T.nilable(String)) }
      attr_accessor :email_address

      # The token to fetch the invoice.
      sig { returns(String) }
      attr_accessor :fetch_invoice_token

      # The number of the invoice.
      sig { returns(String) }
      attr_accessor :number

      # The status of the invoice.
      sig do
        returns(
          T.nilable(
            Whopsdk::Models::InvoiceRetrieveResponse::Status::TaggedSymbol
          )
        )
      end
      attr_accessor :status

      # The user that the invoice was created for.
      sig { returns(T.nilable(Whopsdk::Models::InvoiceRetrieveResponse::User)) }
      attr_reader :user

      sig do
        params(
          user:
            T.nilable(Whopsdk::Models::InvoiceRetrieveResponse::User::OrHash)
        ).void
      end
      attr_writer :user

      # A statement that defines an amount due by a customer.
      sig do
        params(
          id: String,
          created_at: Integer,
          current_plan:
            Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::OrHash,
          due_date: T.nilable(Integer),
          email_address: T.nilable(String),
          fetch_invoice_token: String,
          number: String,
          status:
            T.nilable(
              Whopsdk::Models::InvoiceRetrieveResponse::Status::OrSymbol
            ),
          user:
            T.nilable(Whopsdk::Models::InvoiceRetrieveResponse::User::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the invoice.
        id:,
        # The date the invoice was created.
        created_at:,
        # The plan that the invoice was created for.
        current_plan:,
        # The date the invoice is due.
        due_date:,
        # The email address that the invoice was created for.
        email_address:,
        # The token to fetch the invoice.
        fetch_invoice_token:,
        # The number of the invoice.
        number:,
        # The status of the invoice.
        status:,
        # The user that the invoice was created for.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Integer,
            current_plan: Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan,
            due_date: T.nilable(Integer),
            email_address: T.nilable(String),
            fetch_invoice_token: String,
            number: String,
            status:
              T.nilable(
                Whopsdk::Models::InvoiceRetrieveResponse::Status::TaggedSymbol
              ),
            user: T.nilable(Whopsdk::Models::InvoiceRetrieveResponse::User)
          }
        )
      end
      def to_hash
      end

      class CurrentPlan < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan,
              Whopsdk::Internal::AnyHash
            )
          end

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The respective currency identifier for the plan.
        sig do
          returns(
            T.nilable(
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          )
        end
        attr_accessor :currency

        # The formatted price (including currency) for the plan.
        sig { returns(String) }
        attr_accessor :formatted_price

        # The plan that the invoice was created for.
        sig do
          params(
            id: String,
            currency:
              T.nilable(
                Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::OrSymbol
              ),
            formatted_price: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the plan.
          id:,
          # The respective currency identifier for the plan.
          currency:,
          # The formatted price (including currency) for the plan.
          formatted_price:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              currency:
                T.nilable(
                  Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
                ),
              formatted_price: String
            }
          )
        end
        def to_hash
        end

        # The respective currency identifier for the plan.
        module Currency
          extend Whopsdk::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USD =
            T.let(
              :usd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          SGD =
            T.let(
              :sgd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          INR =
            T.let(
              :inr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          AUD =
            T.let(
              :aud,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          BRL =
            T.let(
              :brl,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          CAD =
            T.let(
              :cad,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          DKK =
            T.let(
              :dkk,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          EUR =
            T.let(
              :eur,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          NOK =
            T.let(
              :nok,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          GBP =
            T.let(
              :gbp,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          SEK =
            T.let(
              :sek,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          CHF =
            T.let(
              :chf,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          HKD =
            T.let(
              :hkd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          HUF =
            T.let(
              :huf,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          JPY =
            T.let(
              :jpy,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          MXN =
            T.let(
              :mxn,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          MYR =
            T.let(
              :myr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          PLN =
            T.let(
              :pln,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          CZK =
            T.let(
              :czk,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          NZD =
            T.let(
              :nzd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          AED =
            T.let(
              :aed,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          ETH =
            T.let(
              :eth,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          APE =
            T.let(
              :ape,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          COP =
            T.let(
              :cop,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          RON =
            T.let(
              :ron,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          THB =
            T.let(
              :thb,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          BGN =
            T.let(
              :bgn,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          IDR =
            T.let(
              :idr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          DOP =
            T.let(
              :dop,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          PHP =
            T.let(
              :php,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          TRY =
            T.let(
              :try,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          KRW =
            T.let(
              :krw,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          TWD =
            T.let(
              :twd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          VND =
            T.let(
              :vnd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          PKR =
            T.let(
              :pkr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          CLP =
            T.let(
              :clp,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          UYU =
            T.let(
              :uyu,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          ARS =
            T.let(
              :ars,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          ZAR =
            T.let(
              :zar,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          DZD =
            T.let(
              :dzd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          TND =
            T.let(
              :tnd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          MAD =
            T.let(
              :mad,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          KES =
            T.let(
              :kes,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          KWD =
            T.let(
              :kwd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          JOD =
            T.let(
              :jod,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          ALL =
            T.let(
              :all,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          XCD =
            T.let(
              :xcd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          AMD =
            T.let(
              :amd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          BSD =
            T.let(
              :bsd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          BHD =
            T.let(
              :bhd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          BOB =
            T.let(
              :bob,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          BAM =
            T.let(
              :bam,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          KHR =
            T.let(
              :khr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          CRC =
            T.let(
              :crc,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          XOF =
            T.let(
              :xof,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          EGP =
            T.let(
              :egp,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          ETB =
            T.let(
              :etb,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          GMD =
            T.let(
              :gmd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          GHS =
            T.let(
              :ghs,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          GTQ =
            T.let(
              :gtq,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          GYD =
            T.let(
              :gyd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          ILS =
            T.let(
              :ils,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          JMD =
            T.let(
              :jmd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          MOP =
            T.let(
              :mop,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          MGA =
            T.let(
              :mga,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          MUR =
            T.let(
              :mur,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          MDL =
            T.let(
              :mdl,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          MNT =
            T.let(
              :mnt,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          NAD =
            T.let(
              :nad,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          NGN =
            T.let(
              :ngn,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          MKD =
            T.let(
              :mkd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          OMR =
            T.let(
              :omr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          PYG =
            T.let(
              :pyg,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          PEN =
            T.let(
              :pen,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          QAR =
            T.let(
              :qar,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          RWF =
            T.let(
              :rwf,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          SAR =
            T.let(
              :sar,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          RSD =
            T.let(
              :rsd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          LKR =
            T.let(
              :lkr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          TZS =
            T.let(
              :tzs,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          TTD =
            T.let(
              :ttd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          UZS =
            T.let(
              :uzs,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          RUB =
            T.let(
              :rub,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )
          BTC =
            T.let(
              :btc,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::Currency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The status of the invoice.
      module Status
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Whopsdk::Models::InvoiceRetrieveResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN =
          T.let(
            :open,
            Whopsdk::Models::InvoiceRetrieveResponse::Status::TaggedSymbol
          )
        PAID =
          T.let(
            :paid,
            Whopsdk::Models::InvoiceRetrieveResponse::Status::TaggedSymbol
          )
        PAST_DUE =
          T.let(
            :past_due,
            Whopsdk::Models::InvoiceRetrieveResponse::Status::TaggedSymbol
          )
        VOID =
          T.let(
            :void,
            Whopsdk::Models::InvoiceRetrieveResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::Models::InvoiceRetrieveResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class User < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::InvoiceRetrieveResponse::User,
              Whopsdk::Internal::AnyHash
            )
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user that the invoice was created for.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
