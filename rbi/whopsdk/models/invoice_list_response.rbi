# typed: strong

module Whopsdk
  module Models
    class InvoiceListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::InvoiceListResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # A list of nodes.
      sig do
        returns(
          T.nilable(
            T::Array[T.nilable(Whopsdk::Models::InvoiceListResponse::Data)]
          )
        )
      end
      attr_accessor :data

      # Information to aid in pagination.
      sig { returns(Whopsdk::Models::InvoiceListResponse::PageInfo) }
      attr_reader :page_info

      sig do
        params(
          page_info: Whopsdk::Models::InvoiceListResponse::PageInfo::OrHash
        ).void
      end
      attr_writer :page_info

      # The connection type for Invoice.
      sig do
        params(
          data:
            T.nilable(
              T::Array[
                T.nilable(Whopsdk::Models::InvoiceListResponse::Data::OrHash)
              ]
            ),
          page_info: Whopsdk::Models::InvoiceListResponse::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of nodes.
        data:,
        # Information to aid in pagination.
        page_info:
      )
      end

      sig do
        override.returns(
          {
            data:
              T.nilable(
                T::Array[T.nilable(Whopsdk::Models::InvoiceListResponse::Data)]
              ),
            page_info: Whopsdk::Models::InvoiceListResponse::PageInfo
          }
        )
      end
      def to_hash
      end

      class Data < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::InvoiceListResponse::Data,
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
        sig { returns(Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan) }
        attr_reader :current_plan

        sig do
          params(
            current_plan:
              Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::OrHash
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
            Whopsdk::Models::InvoiceListResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The user that the invoice was created for.
        sig do
          returns(T.nilable(Whopsdk::Models::InvoiceListResponse::Data::User))
        end
        attr_reader :user

        sig do
          params(
            user:
              T.nilable(
                Whopsdk::Models::InvoiceListResponse::Data::User::OrHash
              )
          ).void
        end
        attr_writer :user

        # A statement that defines an amount due by a customer.
        sig do
          params(
            id: String,
            created_at: Integer,
            current_plan:
              Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::OrHash,
            due_date: T.nilable(Integer),
            email_address: T.nilable(String),
            fetch_invoice_token: String,
            number: String,
            status:
              Whopsdk::Models::InvoiceListResponse::Data::Status::OrSymbol,
            user:
              T.nilable(
                Whopsdk::Models::InvoiceListResponse::Data::User::OrHash
              )
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
              current_plan:
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan,
              due_date: T.nilable(Integer),
              email_address: T.nilable(String),
              fetch_invoice_token: String,
              number: String,
              status:
                Whopsdk::Models::InvoiceListResponse::Data::Status::TaggedSymbol,
              user: T.nilable(Whopsdk::Models::InvoiceListResponse::Data::User)
            }
          )
        end
        def to_hash
        end

        class CurrentPlan < Whopsdk::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan,
                Whopsdk::Internal::AnyHash
              )
            end

          # The internal ID of the plan.
          sig { returns(String) }
          attr_accessor :id

          # The respective currency identifier for the plan.
          sig do
            returns(
              Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
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
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::OrSymbol,
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
                  Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol,
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
                  Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USD =
              T.let(
                :usd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            SGD =
              T.let(
                :sgd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            INR =
              T.let(
                :inr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            AUD =
              T.let(
                :aud,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            BRL =
              T.let(
                :brl,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            CAD =
              T.let(
                :cad,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            DKK =
              T.let(
                :dkk,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            EUR =
              T.let(
                :eur,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            NOK =
              T.let(
                :nok,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            GBP =
              T.let(
                :gbp,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            SEK =
              T.let(
                :sek,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            CHF =
              T.let(
                :chf,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            HKD =
              T.let(
                :hkd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            HUF =
              T.let(
                :huf,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            JPY =
              T.let(
                :jpy,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            MXN =
              T.let(
                :mxn,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            MYR =
              T.let(
                :myr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            PLN =
              T.let(
                :pln,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            CZK =
              T.let(
                :czk,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            NZD =
              T.let(
                :nzd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            AED =
              T.let(
                :aed,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            ETH =
              T.let(
                :eth,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            APE =
              T.let(
                :ape,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            COP =
              T.let(
                :cop,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            RON =
              T.let(
                :ron,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            THB =
              T.let(
                :thb,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            BGN =
              T.let(
                :bgn,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            IDR =
              T.let(
                :idr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            DOP =
              T.let(
                :dop,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            PHP =
              T.let(
                :php,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            TRY =
              T.let(
                :try,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            KRW =
              T.let(
                :krw,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            TWD =
              T.let(
                :twd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            VND =
              T.let(
                :vnd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            PKR =
              T.let(
                :pkr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            CLP =
              T.let(
                :clp,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            UYU =
              T.let(
                :uyu,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            ARS =
              T.let(
                :ars,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            ZAR =
              T.let(
                :zar,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            DZD =
              T.let(
                :dzd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            TND =
              T.let(
                :tnd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            MAD =
              T.let(
                :mad,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            KES =
              T.let(
                :kes,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            KWD =
              T.let(
                :kwd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            JOD =
              T.let(
                :jod,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            XCD =
              T.let(
                :xcd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            AMD =
              T.let(
                :amd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            BSD =
              T.let(
                :bsd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            BHD =
              T.let(
                :bhd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            BOB =
              T.let(
                :bob,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            BAM =
              T.let(
                :bam,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            KHR =
              T.let(
                :khr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            CRC =
              T.let(
                :crc,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            XOF =
              T.let(
                :xof,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            EGP =
              T.let(
                :egp,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            ETB =
              T.let(
                :etb,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            GMD =
              T.let(
                :gmd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            GHS =
              T.let(
                :ghs,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            GTQ =
              T.let(
                :gtq,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            GYD =
              T.let(
                :gyd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            ILS =
              T.let(
                :ils,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            JMD =
              T.let(
                :jmd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            MOP =
              T.let(
                :mop,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            MGA =
              T.let(
                :mga,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            MUR =
              T.let(
                :mur,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            MDL =
              T.let(
                :mdl,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            MNT =
              T.let(
                :mnt,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            NAD =
              T.let(
                :nad,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            NGN =
              T.let(
                :ngn,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            MKD =
              T.let(
                :mkd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            OMR =
              T.let(
                :omr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            PYG =
              T.let(
                :pyg,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            PEN =
              T.let(
                :pen,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            QAR =
              T.let(
                :qar,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            RWF =
              T.let(
                :rwf,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            SAR =
              T.let(
                :sar,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            RSD =
              T.let(
                :rsd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            LKR =
              T.let(
                :lkr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            TZS =
              T.let(
                :tzs,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            TTD =
              T.let(
                :ttd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            UZS =
              T.let(
                :uzs,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            RUB =
              T.let(
                :rub,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )
            BTC =
              T.let(
                :btc,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::Currency::TaggedSymbol
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
              T.all(Symbol, Whopsdk::Models::InvoiceListResponse::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPEN =
            T.let(
              :open,
              Whopsdk::Models::InvoiceListResponse::Data::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Whopsdk::Models::InvoiceListResponse::Data::Status::TaggedSymbol
            )
          PAST_DUE =
            T.let(
              :past_due,
              Whopsdk::Models::InvoiceListResponse::Data::Status::TaggedSymbol
            )
          VOID =
            T.let(
              :void,
              Whopsdk::Models::InvoiceListResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::Models::InvoiceListResponse::Data::Status::TaggedSymbol
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
                Whopsdk::Models::InvoiceListResponse::Data::User,
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
            params(
              id: String,
              name: T.nilable(String),
              username: String
            ).returns(T.attached_class)
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

      class PageInfo < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::InvoiceListResponse::PageInfo,
              Whopsdk::Internal::AnyHash
            )
          end

        # When paginating forwards, the cursor to continue.
        sig { returns(T.nilable(String)) }
        attr_accessor :end_cursor

        # When paginating forwards, are there more items?
        sig { returns(T::Boolean) }
        attr_accessor :has_next_page

        # When paginating backwards, are there more items?
        sig { returns(T::Boolean) }
        attr_accessor :has_previous_page

        # When paginating backwards, the cursor to continue.
        sig { returns(T.nilable(String)) }
        attr_accessor :start_cursor

        # Information to aid in pagination.
        sig do
          params(
            end_cursor: T.nilable(String),
            has_next_page: T::Boolean,
            has_previous_page: T::Boolean,
            start_cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # When paginating forwards, the cursor to continue.
          end_cursor:,
          # When paginating forwards, are there more items?
          has_next_page:,
          # When paginating backwards, are there more items?
          has_previous_page:,
          # When paginating backwards, the cursor to continue.
          start_cursor:
        )
        end

        sig do
          override.returns(
            {
              end_cursor: T.nilable(String),
              has_next_page: T::Boolean,
              has_previous_page: T::Boolean,
              start_cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
