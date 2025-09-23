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

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Integer) }
      attr_accessor :created_at

      sig { returns(Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan) }
      attr_reader :current_plan

      sig do
        params(
          current_plan:
            Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::OrHash
        ).void
      end
      attr_writer :current_plan

      sig { returns(T.nilable(Integer)) }
      attr_accessor :due_date

      sig { returns(T.nilable(String)) }
      attr_accessor :email_address

      sig { returns(String) }
      attr_accessor :fetch_invoice_token

      sig do
        returns(T.nilable(Whopsdk::Models::InvoiceRetrieveResponse::Member))
      end
      attr_reader :member

      sig do
        params(
          member:
            T.nilable(Whopsdk::Models::InvoiceRetrieveResponse::Member::OrHash)
        ).void
      end
      attr_writer :member

      sig { returns(String) }
      attr_accessor :number

      sig do
        returns(Whopsdk::Models::InvoiceRetrieveResponse::Status::TaggedSymbol)
      end
      attr_accessor :status

      sig do
        params(
          id: String,
          created_at: Integer,
          current_plan:
            Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::OrHash,
          due_date: T.nilable(Integer),
          email_address: T.nilable(String),
          fetch_invoice_token: String,
          member:
            T.nilable(Whopsdk::Models::InvoiceRetrieveResponse::Member::OrHash),
          number: String,
          status: Whopsdk::Models::InvoiceRetrieveResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        current_plan:,
        due_date:,
        email_address:,
        fetch_invoice_token:,
        member:,
        number:,
        status:
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
            member: T.nilable(Whopsdk::Models::InvoiceRetrieveResponse::Member),
            number: String,
            status:
              Whopsdk::Models::InvoiceRetrieveResponse::Status::TaggedSymbol
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

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
          )
        end
        attr_accessor :base_currency

        sig { returns(String) }
        attr_accessor :formatted_price

        sig do
          params(
            id: String,
            base_currency:
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::OrSymbol,
            formatted_price: String
          ).returns(T.attached_class)
        end
        def self.new(id:, base_currency:, formatted_price:)
        end

        sig do
          override.returns(
            {
              id: String,
              base_currency:
                Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol,
              formatted_price: String
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
                Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USD =
            T.let(
              :usd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          SGD =
            T.let(
              :sgd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          INR =
            T.let(
              :inr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          AUD =
            T.let(
              :aud,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          BRL =
            T.let(
              :brl,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          CAD =
            T.let(
              :cad,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          DKK =
            T.let(
              :dkk,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          EUR =
            T.let(
              :eur,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          NOK =
            T.let(
              :nok,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          GBP =
            T.let(
              :gbp,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          SEK =
            T.let(
              :sek,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          CHF =
            T.let(
              :chf,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          HKD =
            T.let(
              :hkd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          HUF =
            T.let(
              :huf,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          JPY =
            T.let(
              :jpy,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          MXN =
            T.let(
              :mxn,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          MYR =
            T.let(
              :myr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          PLN =
            T.let(
              :pln,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          CZK =
            T.let(
              :czk,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          NZD =
            T.let(
              :nzd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          AED =
            T.let(
              :aed,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          ETH =
            T.let(
              :eth,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          APE =
            T.let(
              :ape,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          COP =
            T.let(
              :cop,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          RON =
            T.let(
              :ron,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          THB =
            T.let(
              :thb,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          BGN =
            T.let(
              :bgn,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          IDR =
            T.let(
              :idr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          DOP =
            T.let(
              :dop,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          PHP =
            T.let(
              :php,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          TRY =
            T.let(
              :try,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          KRW =
            T.let(
              :krw,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          TWD =
            T.let(
              :twd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          VND =
            T.let(
              :vnd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          PKR =
            T.let(
              :pkr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          CLP =
            T.let(
              :clp,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          UYU =
            T.let(
              :uyu,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          ARS =
            T.let(
              :ars,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          ZAR =
            T.let(
              :zar,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          DZD =
            T.let(
              :dzd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          TND =
            T.let(
              :tnd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          MAD =
            T.let(
              :mad,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          KES =
            T.let(
              :kes,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          KWD =
            T.let(
              :kwd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          JOD =
            T.let(
              :jod,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          ALL =
            T.let(
              :all,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          XCD =
            T.let(
              :xcd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          AMD =
            T.let(
              :amd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          BSD =
            T.let(
              :bsd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          BHD =
            T.let(
              :bhd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          BOB =
            T.let(
              :bob,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          BAM =
            T.let(
              :bam,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          KHR =
            T.let(
              :khr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          CRC =
            T.let(
              :crc,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          XOF =
            T.let(
              :xof,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          EGP =
            T.let(
              :egp,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          ETB =
            T.let(
              :etb,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          GMD =
            T.let(
              :gmd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          GHS =
            T.let(
              :ghs,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          GTQ =
            T.let(
              :gtq,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          GYD =
            T.let(
              :gyd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          ILS =
            T.let(
              :ils,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          JMD =
            T.let(
              :jmd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          MOP =
            T.let(
              :mop,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          MGA =
            T.let(
              :mga,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          MUR =
            T.let(
              :mur,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          MDL =
            T.let(
              :mdl,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          MNT =
            T.let(
              :mnt,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          NAD =
            T.let(
              :nad,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          NGN =
            T.let(
              :ngn,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          MKD =
            T.let(
              :mkd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          OMR =
            T.let(
              :omr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          PYG =
            T.let(
              :pyg,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          PEN =
            T.let(
              :pen,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          QAR =
            T.let(
              :qar,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          RWF =
            T.let(
              :rwf,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          SAR =
            T.let(
              :sar,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          RSD =
            T.let(
              :rsd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          LKR =
            T.let(
              :lkr,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          TZS =
            T.let(
              :tzs,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          TTD =
            T.let(
              :ttd,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          UZS =
            T.let(
              :uzs,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          RUB =
            T.let(
              :rub,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          BTC =
            T.let(
              :btc,
              Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::Models::InvoiceRetrieveResponse::CurrentPlan::BaseCurrency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Member < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::InvoiceRetrieveResponse::Member,
              Whopsdk::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_accessor :username

        sig do
          params(
            id: String,
            email: T.nilable(String),
            name: T.nilable(String),
            username: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(id:, email:, name:, username:)
        end

        sig do
          override.returns(
            {
              id: String,
              email: T.nilable(String),
              name: T.nilable(String),
              username: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

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
    end
  end
end
