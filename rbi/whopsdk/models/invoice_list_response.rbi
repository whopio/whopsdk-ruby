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

        # The member that the invoice was created for.
        sig do
          returns(T.nilable(Whopsdk::Models::InvoiceListResponse::Data::Member))
        end
        attr_reader :member

        sig do
          params(
            member:
              T.nilable(
                Whopsdk::Models::InvoiceListResponse::Data::Member::OrHash
              )
          ).void
        end
        attr_writer :member

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
            member:
              T.nilable(
                Whopsdk::Models::InvoiceListResponse::Data::Member::OrHash
              ),
            number: String,
            status: Whopsdk::Models::InvoiceListResponse::Data::Status::OrSymbol
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
          # The member that the invoice was created for.
          member:,
          # The number of the invoice.
          number:,
          # The status of the invoice.
          status:
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
              member:
                T.nilable(Whopsdk::Models::InvoiceListResponse::Data::Member),
              number: String,
              status:
                Whopsdk::Models::InvoiceListResponse::Data::Status::TaggedSymbol
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
              Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
            )
          end
          attr_accessor :base_currency

          # The formatted price (including currency) for the plan.
          sig { returns(String) }
          attr_accessor :formatted_price

          # The plan that the invoice was created for.
          sig do
            params(
              id: String,
              base_currency:
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::OrSymbol,
              formatted_price: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The internal ID of the plan.
            id:,
            # The respective currency identifier for the plan.
            base_currency:,
            # The formatted price (including currency) for the plan.
            formatted_price:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                base_currency:
                  Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol,
                formatted_price: String
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
                T.all(
                  Symbol,
                  Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USD =
              T.let(
                :usd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            SGD =
              T.let(
                :sgd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            INR =
              T.let(
                :inr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            AUD =
              T.let(
                :aud,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            BRL =
              T.let(
                :brl,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            CAD =
              T.let(
                :cad,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            DKK =
              T.let(
                :dkk,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            EUR =
              T.let(
                :eur,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            NOK =
              T.let(
                :nok,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            GBP =
              T.let(
                :gbp,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            SEK =
              T.let(
                :sek,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            CHF =
              T.let(
                :chf,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            HKD =
              T.let(
                :hkd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            HUF =
              T.let(
                :huf,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            JPY =
              T.let(
                :jpy,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            MXN =
              T.let(
                :mxn,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            MYR =
              T.let(
                :myr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            PLN =
              T.let(
                :pln,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            CZK =
              T.let(
                :czk,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            NZD =
              T.let(
                :nzd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            AED =
              T.let(
                :aed,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            ETH =
              T.let(
                :eth,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            APE =
              T.let(
                :ape,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            COP =
              T.let(
                :cop,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            RON =
              T.let(
                :ron,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            THB =
              T.let(
                :thb,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            BGN =
              T.let(
                :bgn,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            IDR =
              T.let(
                :idr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            DOP =
              T.let(
                :dop,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            PHP =
              T.let(
                :php,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            TRY =
              T.let(
                :try,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            KRW =
              T.let(
                :krw,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            TWD =
              T.let(
                :twd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            VND =
              T.let(
                :vnd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            PKR =
              T.let(
                :pkr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            CLP =
              T.let(
                :clp,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            UYU =
              T.let(
                :uyu,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            ARS =
              T.let(
                :ars,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            ZAR =
              T.let(
                :zar,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            DZD =
              T.let(
                :dzd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            TND =
              T.let(
                :tnd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            MAD =
              T.let(
                :mad,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            KES =
              T.let(
                :kes,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            KWD =
              T.let(
                :kwd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            JOD =
              T.let(
                :jod,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            XCD =
              T.let(
                :xcd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            AMD =
              T.let(
                :amd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            BSD =
              T.let(
                :bsd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            BHD =
              T.let(
                :bhd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            BOB =
              T.let(
                :bob,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            BAM =
              T.let(
                :bam,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            KHR =
              T.let(
                :khr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            CRC =
              T.let(
                :crc,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            XOF =
              T.let(
                :xof,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            EGP =
              T.let(
                :egp,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            ETB =
              T.let(
                :etb,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            GMD =
              T.let(
                :gmd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            GHS =
              T.let(
                :ghs,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            GTQ =
              T.let(
                :gtq,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            GYD =
              T.let(
                :gyd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            ILS =
              T.let(
                :ils,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            JMD =
              T.let(
                :jmd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            MOP =
              T.let(
                :mop,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            MGA =
              T.let(
                :mga,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            MUR =
              T.let(
                :mur,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            MDL =
              T.let(
                :mdl,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            MNT =
              T.let(
                :mnt,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            NAD =
              T.let(
                :nad,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            NGN =
              T.let(
                :ngn,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            MKD =
              T.let(
                :mkd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            OMR =
              T.let(
                :omr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            PYG =
              T.let(
                :pyg,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            PEN =
              T.let(
                :pen,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            QAR =
              T.let(
                :qar,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            RWF =
              T.let(
                :rwf,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            SAR =
              T.let(
                :sar,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            RSD =
              T.let(
                :rsd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            LKR =
              T.let(
                :lkr,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            TZS =
              T.let(
                :tzs,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            TTD =
              T.let(
                :ttd,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            UZS =
              T.let(
                :uzs,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            RUB =
              T.let(
                :rub,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )
            BTC =
              T.let(
                :btc,
                Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Whopsdk::Models::InvoiceListResponse::Data::CurrentPlan::BaseCurrency::TaggedSymbol
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
                Whopsdk::Models::InvoiceListResponse::Data::Member,
                Whopsdk::Internal::AnyHash
              )
            end

          # The internal ID of the user account for the member.
          sig { returns(String) }
          attr_accessor :id

          # The digital mailing address of the member.
          sig { returns(T.nilable(String)) }
          attr_accessor :email

          # The written name of the member.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The whop username of the member.
          sig { returns(T.nilable(String)) }
          attr_accessor :username

          # The member that the invoice was created for.
          sig do
            params(
              id: String,
              email: T.nilable(String),
              name: T.nilable(String),
              username: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The internal ID of the user account for the member.
            id:,
            # The digital mailing address of the member.
            email:,
            # The written name of the member.
            name:,
            # The whop username of the member.
            username:
          )
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
