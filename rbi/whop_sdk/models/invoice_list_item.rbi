# typed: strong

module WhopSDK
  module Models
    class InvoiceListItem < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::InvoiceListItem, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the invoice.
      sig { returns(String) }
      attr_accessor :id

      # The datetime the invoice was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The plan that this invoice charges for.
      sig { returns(WhopSDK::InvoiceListItem::CurrentPlan) }
      attr_reader :current_plan

      sig do
        params(current_plan: WhopSDK::InvoiceListItem::CurrentPlan::OrHash).void
      end
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

      # Optional line items that break down the invoice total into individual charges.
      sig { returns(T::Array[WhopSDK::InvoiceListItem::LineItem]) }
      attr_accessor :line_items

      # The sequential invoice number for display purposes.
      sig { returns(String) }
      attr_accessor :number

      # Whether a payment on this invoice is still clearing. True while a delayed
      # payment method such as ACH or SEPA settles, during which the invoice stays open
      # and is not marked past due.
      sig { returns(T::Boolean) }
      attr_accessor :payment_processing

      # The current payment status of the invoice, such as draft, open, paid, or void.
      sig { returns(WhopSDK::InvoiceStatus::TaggedSymbol) }
      attr_accessor :status

      # The user this invoice is addressed to. Null if the user account has been
      # removed.
      sig { returns(T.nilable(WhopSDK::InvoiceListItem::User)) }
      attr_reader :user

      sig do
        params(user: T.nilable(WhopSDK::InvoiceListItem::User::OrHash)).void
      end
      attr_writer :user

      # An invoice represents an itemized bill sent by a company to a customer for a
      # specific product and plan, tracking the amount owed, due date, and payment
      # status.
      sig do
        params(
          id: String,
          created_at: Time,
          current_plan: WhopSDK::InvoiceListItem::CurrentPlan::OrHash,
          due_date: T.nilable(Time),
          email_address: T.nilable(String),
          fetch_invoice_token: String,
          line_items: T::Array[WhopSDK::InvoiceListItem::LineItem::OrHash],
          number: String,
          payment_processing: T::Boolean,
          status: WhopSDK::InvoiceStatus::OrSymbol,
          user: T.nilable(WhopSDK::InvoiceListItem::User::OrHash)
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
        # Optional line items that break down the invoice total into individual charges.
        line_items:,
        # The sequential invoice number for display purposes.
        number:,
        # Whether a payment on this invoice is still clearing. True while a delayed
        # payment method such as ACH or SEPA settles, during which the invoice stays open
        # and is not marked past due.
        payment_processing:,
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
            current_plan: WhopSDK::InvoiceListItem::CurrentPlan,
            due_date: T.nilable(Time),
            email_address: T.nilable(String),
            fetch_invoice_token: String,
            line_items: T::Array[WhopSDK::InvoiceListItem::LineItem],
            number: String,
            payment_processing: T::Boolean,
            status: WhopSDK::InvoiceStatus::TaggedSymbol,
            user: T.nilable(WhopSDK::InvoiceListItem::User)
          }
        )
      end
      def to_hash
      end

      class CurrentPlan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::InvoiceListItem::CurrentPlan,
              WhopSDK::Internal::AnyHash
            )
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

      class LineItem < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::InvoiceListItem::LineItem,
              WhopSDK::Internal::AnyHash
            )
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

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::InvoiceListItem::User, WhopSDK::Internal::AnyHash)
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
