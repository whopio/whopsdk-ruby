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
      sig { returns(Whopsdk::PageInfo) }
      attr_reader :page_info

      sig { params(page_info: Whopsdk::PageInfo::OrHash).void }
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
          page_info: Whopsdk::PageInfo::OrHash
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
            page_info: Whopsdk::PageInfo
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
        sig { returns(T.nilable(Whopsdk::InvoiceStatus::TaggedSymbol)) }
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
            status: T.nilable(Whopsdk::InvoiceStatus::OrSymbol),
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
              status: T.nilable(Whopsdk::InvoiceStatus::TaggedSymbol),
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
          sig { returns(T.nilable(Whopsdk::Currency::TaggedSymbol)) }
          attr_accessor :currency

          # The formatted price (including currency) for the plan.
          sig { returns(String) }
          attr_accessor :formatted_price

          # The plan that the invoice was created for.
          sig do
            params(
              id: String,
              currency: T.nilable(Whopsdk::Currency::OrSymbol),
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
                currency: T.nilable(Whopsdk::Currency::TaggedSymbol),
                formatted_price: String
              }
            )
          end
          def to_hash
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
    end
  end
end
