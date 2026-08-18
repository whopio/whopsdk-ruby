# frozen_string_literal: true

module WhopSDK
  module Models
    class InvoiceListItem < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the invoice.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The datetime the invoice was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute current_plan
      #   The plan that this invoice charges for.
      #
      #   @return [WhopSDK::Models::InvoiceListItem::CurrentPlan]
      required :current_plan, -> { WhopSDK::InvoiceListItem::CurrentPlan }

      # @!attribute due_date
      #   The deadline by which payment is expected. Null if the invoice is collected
      #   automatically.
      #
      #   @return [Time, nil]
      required :due_date, Time, nil?: true

      # @!attribute email_address
      #   The email address of the customer this invoice is addressed to. Null if no email
      #   is on file.
      #
      #   @return [String, nil]
      required :email_address, String, nil?: true

      # @!attribute fetch_invoice_token
      #   A signed token that allows fetching invoice data publicly without
      #   authentication.
      #
      #   @return [String]
      required :fetch_invoice_token, String

      # @!attribute line_items
      #   Optional line items that break down the invoice total into individual charges.
      #
      #   @return [Array<WhopSDK::Models::InvoiceListItem::LineItem>]
      required :line_items, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::InvoiceListItem::LineItem] }

      # @!attribute number
      #   The sequential invoice number for display purposes.
      #
      #   @return [String]
      required :number, String

      # @!attribute payment_processing
      #   Whether a payment on this invoice is still clearing. True while a delayed
      #   payment method such as ACH or SEPA settles, during which the invoice stays open
      #   and is not marked past due.
      #
      #   @return [Boolean]
      required :payment_processing, WhopSDK::Internal::Type::Boolean

      # @!attribute status
      #   The current payment status of the invoice, such as draft, open, paid, or void.
      #
      #   @return [Symbol, WhopSDK::Models::InvoiceStatus]
      required :status, enum: -> { WhopSDK::InvoiceStatus }

      # @!attribute user
      #   The user this invoice is addressed to. Null if the user account has been
      #   removed.
      #
      #   @return [WhopSDK::Models::InvoiceListItem::User, nil]
      required :user, -> { WhopSDK::InvoiceListItem::User }, nil?: true

      # @!method initialize(id:, created_at:, current_plan:, due_date:, email_address:, fetch_invoice_token:, line_items:, number:, payment_processing:, status:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::InvoiceListItem} for more details.
      #
      #   An invoice represents an itemized bill sent by a company to a customer for a
      #   specific product and plan, tracking the amount owed, due date, and payment
      #   status.
      #
      #   @param id [String] The unique identifier for the invoice.
      #
      #   @param created_at [Time] The datetime the invoice was created.
      #
      #   @param current_plan [WhopSDK::Models::InvoiceListItem::CurrentPlan] The plan that this invoice charges for.
      #
      #   @param due_date [Time, nil] The deadline by which payment is expected. Null if the invoice is collected auto
      #
      #   @param email_address [String, nil] The email address of the customer this invoice is addressed to. Null if no email
      #
      #   @param fetch_invoice_token [String] A signed token that allows fetching invoice data publicly without authentication
      #
      #   @param line_items [Array<WhopSDK::Models::InvoiceListItem::LineItem>] Optional line items that break down the invoice total into individual charges.
      #
      #   @param number [String] The sequential invoice number for display purposes.
      #
      #   @param payment_processing [Boolean] Whether a payment on this invoice is still clearing. True while a delayed paymen
      #
      #   @param status [Symbol, WhopSDK::Models::InvoiceStatus] The current payment status of the invoice, such as draft, open, paid, or void.
      #
      #   @param user [WhopSDK::Models::InvoiceListItem::User, nil] The user this invoice is addressed to. Null if the user account has been removed

      # @see WhopSDK::Models::InvoiceListItem#current_plan
      class CurrentPlan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the plan.
        #
        #   @return [String]
        required :id, String

        # @!attribute currency
        #   The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
        #   amounts on the plan are denominated in this currency.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute formatted_price
        #   The formatted price (including currency) for the plan.
        #
        #   @return [String]
        required :formatted_price, String

        # @!method initialize(id:, currency:, formatted_price:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::InvoiceListItem::CurrentPlan} for more details.
        #
        #   The plan that this invoice charges for.
        #
        #   @param id [String] The unique identifier for the plan.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
        #
        #   @param formatted_price [String] The formatted price (including currency) for the plan.
      end

      class LineItem < WhopSDK::Internal::Type::BaseModel
        # @!attribute label
        #   The label or description for this line item.
        #
        #   @return [String]
        required :label, String

        # @!attribute position
        #   The display order of this line item within the invoice.
        #
        #   @return [Integer]
        required :position, Integer

        # @!attribute quantity
        #   The quantity of this line item.
        #
        #   @return [Float]
        required :quantity, Float

        # @!attribute total
        #   The computed total for this line item (quantity \* unit_price).
        #
        #   @return [Float]
        required :total, Float

        # @!attribute unit_price
        #   The unit price for this line item.
        #
        #   @return [Float]
        required :unit_price, Float

        # @!method initialize(label:, position:, quantity:, total:, unit_price:)
        #   A line item on an invoice, representing a single charge with a label, quantity,
        #   and unit price.
        #
        #   @param label [String] The label or description for this line item.
        #
        #   @param position [Integer] The display order of this line item within the invoice.
        #
        #   @param quantity [Float] The quantity of this line item.
        #
        #   @param total [Float] The computed total for this line item (quantity \* unit_price).
        #
        #   @param unit_price [Float] The unit price for this line item.
      end

      # @see WhopSDK::Models::InvoiceListItem#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user this invoice is addressed to. Null if the user account has been
        #   removed.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
