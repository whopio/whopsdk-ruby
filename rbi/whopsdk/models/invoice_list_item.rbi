# typed: strong

module Whopsdk
  module Models
    class InvoiceListItem < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Whopsdk::InvoiceListItem, Whopsdk::Internal::AnyHash)
        end

      # The ID of the invoice.
      sig { returns(String) }
      attr_accessor :id

      # The date the invoice was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The plan that the invoice was created for.
      sig { returns(Whopsdk::InvoiceListItem::CurrentPlan) }
      attr_reader :current_plan

      sig do
        params(current_plan: Whopsdk::InvoiceListItem::CurrentPlan::OrHash).void
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
      sig { returns(Whopsdk::InvoiceStatus::TaggedSymbol) }
      attr_accessor :status

      # The user that the invoice was created for.
      sig { returns(T.nilable(Whopsdk::InvoiceListItem::User)) }
      attr_reader :user

      sig do
        params(user: T.nilable(Whopsdk::InvoiceListItem::User::OrHash)).void
      end
      attr_writer :user

      # A statement that defines an amount due by a customer.
      sig do
        params(
          id: String,
          created_at: Integer,
          current_plan: Whopsdk::InvoiceListItem::CurrentPlan::OrHash,
          due_date: T.nilable(Integer),
          email_address: T.nilable(String),
          fetch_invoice_token: String,
          number: String,
          status: Whopsdk::InvoiceStatus::OrSymbol,
          user: T.nilable(Whopsdk::InvoiceListItem::User::OrHash)
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
            current_plan: Whopsdk::InvoiceListItem::CurrentPlan,
            due_date: T.nilable(Integer),
            email_address: T.nilable(String),
            fetch_invoice_token: String,
            number: String,
            status: Whopsdk::InvoiceStatus::TaggedSymbol,
            user: T.nilable(Whopsdk::InvoiceListItem::User)
          }
        )
      end
      def to_hash
      end

      class CurrentPlan < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::InvoiceListItem::CurrentPlan,
              Whopsdk::Internal::AnyHash
            )
          end

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The respective currency identifier for the plan.
        sig { returns(Whopsdk::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The formatted price (including currency) for the plan.
        sig { returns(String) }
        attr_accessor :formatted_price

        # The plan that the invoice was created for.
        sig do
          params(
            id: String,
            currency: Whopsdk::Currency::OrSymbol,
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
              currency: Whopsdk::Currency::TaggedSymbol,
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
            T.any(Whopsdk::InvoiceListItem::User, Whopsdk::Internal::AnyHash)
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
