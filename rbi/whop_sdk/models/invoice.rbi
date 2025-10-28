# typed: strong

module WhopSDK
  module Models
    class Invoice < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Invoice, WhopSDK::Internal::AnyHash) }

      # The ID of the invoice.
      sig { returns(String) }
      attr_accessor :id

      # The date the invoice was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The plan that the invoice was created for.
      sig { returns(WhopSDK::Invoice::CurrentPlan) }
      attr_reader :current_plan

      sig { params(current_plan: WhopSDK::Invoice::CurrentPlan::OrHash).void }
      attr_writer :current_plan

      # The date the invoice is due.
      sig { returns(T.nilable(Time)) }
      attr_accessor :due_date

      # The email address that the invoice was created for.
      sig { returns(T.nilable(String)) }
      attr_accessor :email_address

      # A signed token that allows fetching the invoice data publically without being
      # authenticated.
      sig { returns(String) }
      attr_accessor :fetch_invoice_token

      # The number of the invoice.
      sig { returns(String) }
      attr_accessor :number

      # The status of the invoice.
      sig { returns(WhopSDK::InvoiceStatus::TaggedSymbol) }
      attr_accessor :status

      # The user that the invoice was created for.
      sig { returns(T.nilable(WhopSDK::Invoice::User)) }
      attr_reader :user

      sig { params(user: T.nilable(WhopSDK::Invoice::User::OrHash)).void }
      attr_writer :user

      # A statement that defines an amount due by a customer.
      sig do
        params(
          id: String,
          created_at: Time,
          current_plan: WhopSDK::Invoice::CurrentPlan::OrHash,
          due_date: T.nilable(Time),
          email_address: T.nilable(String),
          fetch_invoice_token: String,
          number: String,
          status: WhopSDK::InvoiceStatus::OrSymbol,
          user: T.nilable(WhopSDK::Invoice::User::OrHash)
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
        # A signed token that allows fetching the invoice data publically without being
        # authenticated.
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
            created_at: Time,
            current_plan: WhopSDK::Invoice::CurrentPlan,
            due_date: T.nilable(Time),
            email_address: T.nilable(String),
            fetch_invoice_token: String,
            number: String,
            status: WhopSDK::InvoiceStatus::TaggedSymbol,
            user: T.nilable(WhopSDK::Invoice::User)
          }
        )
      end
      def to_hash
      end

      class CurrentPlan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Invoice::CurrentPlan, WhopSDK::Internal::AnyHash)
          end

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The respective currency identifier for the plan.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The formatted price (including currency) for the plan.
        sig { returns(String) }
        attr_accessor :formatted_price

        # The plan that the invoice was created for.
        sig do
          params(
            id: String,
            currency: WhopSDK::Currency::OrSymbol,
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
              currency: WhopSDK::Currency::TaggedSymbol,
              formatted_price: String
            }
          )
        end
        def to_hash
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Invoice::User, WhopSDK::Internal::AnyHash)
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
