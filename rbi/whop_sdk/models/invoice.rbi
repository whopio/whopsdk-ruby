# typed: strong

module WhopSDK
  module Models
    class Invoice < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Invoice, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the invoice.
      sig { returns(String) }
      attr_accessor :id

      # The date and time when the invoice will be automatically finalized. For
      # charge_automatically, triggers an automatic charge. For send_invoice, sends the
      # invoice email at the specified time.
      sig { returns(T.nilable(Time)) }
      attr_accessor :automatically_finalizes_at

      # Whether the invoice includes a buyer processing fee on top of the plan price.
      sig { returns(T::Boolean) }
      attr_accessor :charge_buyer_fee

      # The method used to collect payment for this invoice, such as automatic charging
      # or manual payment.
      sig { returns(WhopSDK::CollectionMethod::TaggedSymbol) }
      attr_accessor :collection_method

      # The company that issued this invoice.
      sig { returns(WhopSDK::Invoice::Company) }
      attr_reader :company

      sig { params(company: WhopSDK::Invoice::Company::OrHash).void }
      attr_writer :company

      # The datetime the invoice was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The plan that this invoice charges for.
      sig { returns(WhopSDK::Invoice::CurrentPlan) }
      attr_reader :current_plan

      sig { params(current_plan: WhopSDK::Invoice::CurrentPlan::OrHash).void }
      attr_writer :current_plan

      # The full name of the customer this invoice is addressed to. Null if no name is
      # on file.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

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

      # Optional line items that break down the invoice total into individual charges.
      sig { returns(T::Array[WhopSDK::Invoice::LineItem]) }
      attr_accessor :line_items

      # The billing/mailing address associated with this invoice, if one was provided at
      # creation time.
      sig { returns(T.nilable(WhopSDK::Invoice::MailingAddress)) }
      attr_reader :mailing_address

      sig do
        params(
          mailing_address: T.nilable(WhopSDK::Invoice::MailingAddress::OrHash)
        ).void
      end
      attr_writer :mailing_address

      # The sequential invoice number for display purposes.
      sig { returns(String) }
      attr_accessor :number

      # The checkout URL where the customer can pay this invoice online, with their
      # email address pre-filled and locked.
      sig { returns(T.nilable(String)) }
      attr_accessor :pay_online_url

      # Whether a payment on this invoice is still clearing. True while a delayed
      # payment method such as ACH or SEPA settles, during which the invoice stays open
      # and is not marked past due.
      sig { returns(T::Boolean) }
      attr_accessor :payment_processing

      # The product that this invoice was generated for.
      sig { returns(WhopSDK::Invoice::Product) }
      attr_reader :product

      sig { params(product: WhopSDK::Invoice::Product::OrHash).void }
      attr_writer :product

      # The current payment status of the invoice, such as draft, open, paid, or void.
      sig { returns(WhopSDK::InvoiceStatus::TaggedSymbol) }
      attr_accessor :status

      # The date that defines when the subscription billing cycle starts. When set on a
      # renewal plan invoice, all future billing periods anchor to this date.
      sig { returns(T.nilable(Time)) }
      attr_accessor :subscription_billing_anchor_at

      # The datetime the invoice was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

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
          automatically_finalizes_at: T.nilable(Time),
          charge_buyer_fee: T::Boolean,
          collection_method: WhopSDK::CollectionMethod::OrSymbol,
          company: WhopSDK::Invoice::Company::OrHash,
          created_at: Time,
          current_plan: WhopSDK::Invoice::CurrentPlan::OrHash,
          customer_name: T.nilable(String),
          due_date: T.nilable(Time),
          email_address: T.nilable(String),
          fetch_invoice_token: String,
          line_items: T::Array[WhopSDK::Invoice::LineItem::OrHash],
          mailing_address: T.nilable(WhopSDK::Invoice::MailingAddress::OrHash),
          number: String,
          pay_online_url: T.nilable(String),
          payment_processing: T::Boolean,
          product: WhopSDK::Invoice::Product::OrHash,
          status: WhopSDK::InvoiceStatus::OrSymbol,
          subscription_billing_anchor_at: T.nilable(Time),
          updated_at: Time,
          user: T.nilable(WhopSDK::Invoice::User::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the invoice.
        id:,
        # The date and time when the invoice will be automatically finalized. For
        # charge_automatically, triggers an automatic charge. For send_invoice, sends the
        # invoice email at the specified time.
        automatically_finalizes_at:,
        # Whether the invoice includes a buyer processing fee on top of the plan price.
        charge_buyer_fee:,
        # The method used to collect payment for this invoice, such as automatic charging
        # or manual payment.
        collection_method:,
        # The company that issued this invoice.
        company:,
        # The datetime the invoice was created.
        created_at:,
        # The plan that this invoice charges for.
        current_plan:,
        # The full name of the customer this invoice is addressed to. Null if no name is
        # on file.
        customer_name:,
        # The deadline by which payment is expected. Null if the invoice is collected
        # automatically.
        due_date:,
        # The email address of the customer this invoice is addressed to. Null if no email
        # is on file.
        email_address:,
        # A signed token that allows fetching invoice data publicly without
        # authentication.
        fetch_invoice_token:,
        # Optional line items that break down the invoice total into individual charges.
        line_items:,
        # The billing/mailing address associated with this invoice, if one was provided at
        # creation time.
        mailing_address:,
        # The sequential invoice number for display purposes.
        number:,
        # The checkout URL where the customer can pay this invoice online, with their
        # email address pre-filled and locked.
        pay_online_url:,
        # Whether a payment on this invoice is still clearing. True while a delayed
        # payment method such as ACH or SEPA settles, during which the invoice stays open
        # and is not marked past due.
        payment_processing:,
        # The product that this invoice was generated for.
        product:,
        # The current payment status of the invoice, such as draft, open, paid, or void.
        status:,
        # The date that defines when the subscription billing cycle starts. When set on a
        # renewal plan invoice, all future billing periods anchor to this date.
        subscription_billing_anchor_at:,
        # The datetime the invoice was last updated.
        updated_at:,
        # The user this invoice is addressed to. Null if the user account has been
        # removed.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            automatically_finalizes_at: T.nilable(Time),
            charge_buyer_fee: T::Boolean,
            collection_method: WhopSDK::CollectionMethod::TaggedSymbol,
            company: WhopSDK::Invoice::Company,
            created_at: Time,
            current_plan: WhopSDK::Invoice::CurrentPlan,
            customer_name: T.nilable(String),
            due_date: T.nilable(Time),
            email_address: T.nilable(String),
            fetch_invoice_token: String,
            line_items: T::Array[WhopSDK::Invoice::LineItem],
            mailing_address: T.nilable(WhopSDK::Invoice::MailingAddress),
            number: String,
            pay_online_url: T.nilable(String),
            payment_processing: T::Boolean,
            product: WhopSDK::Invoice::Product,
            status: WhopSDK::InvoiceStatus::TaggedSymbol,
            subscription_billing_anchor_at: T.nilable(Time),
            updated_at: Time,
            user: T.nilable(WhopSDK::Invoice::User)
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Invoice::Company, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The company that issued this invoice.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
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

        # A text description of the plan visible to customers. Maximum 1000 characters.
        # Null if no description is set.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The formatted price (including currency) for the plan.
        sig { returns(String) }
        attr_accessor :formatted_price

        # The plan that this invoice charges for.
        sig do
          params(
            id: String,
            currency: WhopSDK::Currency::OrSymbol,
            description: T.nilable(String),
            formatted_price: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the plan.
          id:,
          # The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
          # amounts on the plan are denominated in this currency.
          currency:,
          # A text description of the plan visible to customers. Maximum 1000 characters.
          # Null if no description is set.
          description:,
          # The formatted price (including currency) for the plan.
          formatted_price:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              currency: WhopSDK::Currency::TaggedSymbol,
              description: T.nilable(String),
              formatted_price: String
            }
          )
        end
        def to_hash
        end
      end

      class LineItem < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Invoice::LineItem, WhopSDK::Internal::AnyHash)
          end

        # The label or description for this line item.
        sig { returns(String) }
        attr_accessor :label

        # The display order of this line item within the invoice.
        sig { returns(Integer) }
        attr_accessor :position

        # The quantity of this line item.
        sig { returns(Float) }
        attr_accessor :quantity

        # The computed total for this line item (quantity \* unit_price).
        sig { returns(Float) }
        attr_accessor :total

        # The unit price for this line item.
        sig { returns(Float) }
        attr_accessor :unit_price

        # A line item on an invoice, representing a single charge with a label, quantity,
        # and unit price.
        sig do
          params(
            label: String,
            position: Integer,
            quantity: Float,
            total: Float,
            unit_price: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The label or description for this line item.
          label:,
          # The display order of this line item within the invoice.
          position:,
          # The quantity of this line item.
          quantity:,
          # The computed total for this line item (quantity \* unit_price).
          total:,
          # The unit price for this line item.
          unit_price:
        )
        end

        sig do
          override.returns(
            {
              label: String,
              position: Integer,
              quantity: Float,
              total: Float,
              unit_price: Float
            }
          )
        end
        def to_hash
        end
      end

      class MailingAddress < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Invoice::MailingAddress, WhopSDK::Internal::AnyHash)
          end

        # The city of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # The country of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :country

        # The line 1 of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        # The line 2 of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # The name of the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The phone number of the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # The postal code of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # The state of the address.
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # The billing/mailing address associated with this invoice, if one was provided at
        # creation time.
        sig do
          params(
            city: T.nilable(String),
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            name: T.nilable(String),
            phone: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The city of the address.
          city:,
          # The country of the address.
          country:,
          # The line 1 of the address.
          line1:,
          # The line 2 of the address.
          line2:,
          # The name of the customer.
          name:,
          # The phone number of the customer.
          phone:,
          # The postal code of the address.
          postal_code:,
          # The state of the address.
          state:
        )
        end

        sig do
          override.returns(
            {
              city: T.nilable(String),
              country: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              name: T.nilable(String),
              phone: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Invoice::Product, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # The product that this invoice was generated for.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the product.
          id:,
          # The display name of the product shown to customers on the product page and in
          # search results.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
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

        # The user's email address. Requires the member:email:read permission to access.
        # Null if not authorized.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user this invoice is addressed to. Null if the user account has been
        # removed.
        sig do
          params(
            id: String,
            email: T.nilable(String),
            name: T.nilable(String),
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's email address. Requires the member:email:read permission to access.
          # Null if not authorized.
          email:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
          username:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              email: T.nilable(String),
              name: T.nilable(String),
              username: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
