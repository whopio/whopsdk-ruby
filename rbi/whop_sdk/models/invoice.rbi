# typed: strong

module WhopSDK
  module Models
    class Invoice < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Invoice, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the invoice.
      sig { returns(String) }
      attr_accessor :id

      # The datetime the invoice was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The plan that this invoice charges for.
      sig { returns(WhopSDK::Invoice::CurrentPlan) }
      attr_reader :current_plan

      sig { params(current_plan: WhopSDK::Invoice::CurrentPlan::OrHash).void }
      attr_writer :current_plan

      # The deadline by which payment is expected. Null if the invoice is collected
      # automatically.
      sig { returns(T.nilable(Time)) }
      attr_accessor :due_date

      # The email address of the customer this invoice is addressed to. Null if no email
      # is on file.
      sig { returns(T.nilable(String)) }
      attr_accessor :email_address

      # A signed token that allows fetching invoice data publicly without
      # authentication.
      sig { returns(String) }
      attr_accessor :fetch_invoice_token

      # The sequential invoice number for display purposes.
      sig { returns(String) }
      attr_accessor :number

      # The current payment status of the invoice, such as draft, open, paid, or void.
      sig { returns(WhopSDK::InvoiceStatus::TaggedSymbol) }
      attr_accessor :status

      # The user this invoice is addressed to. Null if the user account has been
      # removed.
      sig { returns(T.nilable(WhopSDK::Invoice::User)) }
      attr_reader :user

      sig { params(user: T.nilable(WhopSDK::Invoice::User::OrHash)).void }
      attr_writer :user

      # An invoice represents an itemized bill sent by a company to a customer for a
      # specific product and plan, tracking the amount owed, due date, and payment
      # status.
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
        # The unique identifier for the invoice.
        id:,
        # The datetime the invoice was created.
        created_at:,
        # The plan that this invoice charges for.
        current_plan:,
        # The deadline by which payment is expected. Null if the invoice is collected
        # automatically.
        due_date:,
        # The email address of the customer this invoice is addressed to. Null if no email
        # is on file.
        email_address:,
        # A signed token that allows fetching invoice data publicly without
        # authentication.
        fetch_invoice_token:,
        # The sequential invoice number for display purposes.
        number:,
        # The current payment status of the invoice, such as draft, open, paid, or void.
        status:,
        # The user this invoice is addressed to. Null if the user account has been
        # removed.
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

        # The unique identifier for the plan.
        sig { returns(String) }
        attr_accessor :id

        # The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
        # amounts on the plan are denominated in this currency.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The formatted price (including currency) for the plan.
        sig { returns(String) }
        attr_accessor :formatted_price

        # The plan that this invoice charges for.
        sig do
          params(
            id: String,
            currency: WhopSDK::Currency::OrSymbol,
            formatted_price: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the plan.
          id:,
          # The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
          # amounts on the plan are denominated in this currency.
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

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user this invoice is addressed to. Null if the user account has been
        # removed.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
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
