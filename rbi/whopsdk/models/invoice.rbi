# typed: strong

module Whopsdk
  module Models
    class Invoice < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Invoice, Whopsdk::Internal::AnyHash) }

      # The ID of the invoice.
      sig { returns(String) }
      attr_accessor :id

      # The date the invoice was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The plan that the invoice was created for.
      sig { returns(Whopsdk::Invoice::CurrentPlan) }
      attr_reader :current_plan

      sig { params(current_plan: Whopsdk::Invoice::CurrentPlan::OrHash).void }
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

      # The different statuses an invoice can be in
      sig { returns(T.nilable(Whopsdk::InvoiceStatus::TaggedSymbol)) }
      attr_accessor :status

      # The user that the invoice was created for.
      sig { returns(T.nilable(Whopsdk::Invoice::User)) }
      attr_reader :user

      sig { params(user: T.nilable(Whopsdk::Invoice::User::OrHash)).void }
      attr_writer :user

      # A statement that defines an amount due by a customer.
      sig do
        params(
          id: String,
          created_at: Integer,
          current_plan: Whopsdk::Invoice::CurrentPlan::OrHash,
          due_date: T.nilable(Integer),
          email_address: T.nilable(String),
          fetch_invoice_token: String,
          number: String,
          status: T.nilable(Whopsdk::InvoiceStatus::OrSymbol),
          user: T.nilable(Whopsdk::Invoice::User::OrHash)
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
        # The different statuses an invoice can be in
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
            current_plan: Whopsdk::Invoice::CurrentPlan,
            due_date: T.nilable(Integer),
            email_address: T.nilable(String),
            fetch_invoice_token: String,
            number: String,
            status: T.nilable(Whopsdk::InvoiceStatus::TaggedSymbol),
            user: T.nilable(Whopsdk::Invoice::User)
          }
        )
      end
      def to_hash
      end

      class CurrentPlan < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Invoice::CurrentPlan, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The available currencies on the platform
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
          # The available currencies on the platform
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
            T.any(Whopsdk::Invoice::User, Whopsdk::Internal::AnyHash)
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
