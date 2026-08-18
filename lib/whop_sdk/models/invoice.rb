# frozen_string_literal: true

module WhopSDK
  module Models
    class Invoice < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the invoice.
      #
      #   @return [String]
      required :id, String

      # @!attribute automatically_finalizes_at
      #   The date and time when the invoice will be automatically finalized. For
      #   charge_automatically, triggers an automatic charge. For send_invoice, sends the
      #   invoice email at the specified time.
      #
      #   @return [Time, nil]
      required :automatically_finalizes_at, Time, nil?: true

      # @!attribute charge_buyer_fee
      #   Whether the invoice includes a buyer processing fee on top of the plan price.
      #
      #   @return [Boolean]
      required :charge_buyer_fee, WhopSDK::Internal::Type::Boolean

      # @!attribute collection_method
      #   The method used to collect payment for this invoice, such as automatic charging
      #   or manual payment.
      #
      #   @return [Symbol, WhopSDK::Models::CollectionMethod]
      required :collection_method, enum: -> { WhopSDK::CollectionMethod }

      # @!attribute company
      #   The company that issued this invoice.
      #
      #   @return [WhopSDK::Models::Invoice::Company]
      required :company, -> { WhopSDK::Invoice::Company }

      # @!attribute created_at
      #   The datetime the invoice was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute current_plan
      #   The plan that this invoice charges for.
      #
      #   @return [WhopSDK::Models::Invoice::CurrentPlan]
      required :current_plan, -> { WhopSDK::Invoice::CurrentPlan }

      # @!attribute customer_name
      #   The full name of the customer this invoice is addressed to. Null if no name is
      #   on file.
      #
      #   @return [String, nil]
      required :customer_name, String, nil?: true

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
      #   @return [Array<WhopSDK::Models::Invoice::LineItem>]
      required :line_items, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Invoice::LineItem] }

      # @!attribute mailing_address
      #   The billing/mailing address associated with this invoice, if one was provided at
      #   creation time.
      #
      #   @return [WhopSDK::Models::Invoice::MailingAddress, nil]
      required :mailing_address, -> { WhopSDK::Invoice::MailingAddress }, nil?: true

      # @!attribute number
      #   The sequential invoice number for display purposes.
      #
      #   @return [String]
      required :number, String

      # @!attribute pay_online_url
      #   The checkout URL where the customer can pay this invoice online, with their
      #   email address pre-filled and locked.
      #
      #   @return [String, nil]
      required :pay_online_url, String, nil?: true

      # @!attribute payment_processing
      #   Whether a payment on this invoice is still clearing. True while a delayed
      #   payment method such as ACH or SEPA settles, during which the invoice stays open
      #   and is not marked past due.
      #
      #   @return [Boolean]
      required :payment_processing, WhopSDK::Internal::Type::Boolean

      # @!attribute product
      #   The product that this invoice was generated for.
      #
      #   @return [WhopSDK::Models::Invoice::Product]
      required :product, -> { WhopSDK::Invoice::Product }

      # @!attribute status
      #   The current payment status of the invoice, such as draft, open, paid, or void.
      #
      #   @return [Symbol, WhopSDK::Models::InvoiceStatus]
      required :status, enum: -> { WhopSDK::InvoiceStatus }

      # @!attribute subscription_billing_anchor_at
      #   The date that defines when the subscription billing cycle starts. When set on a
      #   renewal plan invoice, all future billing periods anchor to this date.
      #
      #   @return [Time, nil]
      required :subscription_billing_anchor_at, Time, nil?: true

      # @!attribute updated_at
      #   The datetime the invoice was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user this invoice is addressed to. Null if the user account has been
      #   removed.
      #
      #   @return [WhopSDK::Models::Invoice::User, nil]
      required :user, -> { WhopSDK::Invoice::User }, nil?: true

      # @!method initialize(id:, automatically_finalizes_at:, charge_buyer_fee:, collection_method:, company:, created_at:, current_plan:, customer_name:, due_date:, email_address:, fetch_invoice_token:, line_items:, mailing_address:, number:, pay_online_url:, payment_processing:, product:, status:, subscription_billing_anchor_at:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Invoice}
      #   for more details.
      #
      #   An invoice represents an itemized bill sent by a company to a customer for a
      #   specific product and plan, tracking the amount owed, due date, and payment
      #   status.
      #
      #   @param id [String] The unique identifier for the invoice.
      #
      #   @param automatically_finalizes_at [Time, nil] The date and time when the invoice will be automatically finalized. For charge_a
      #
      #   @param charge_buyer_fee [Boolean] Whether the invoice includes a buyer processing fee on top of the plan price.
      #
      #   @param collection_method [Symbol, WhopSDK::Models::CollectionMethod] The method used to collect payment for this invoice, such as automatic charging
      #
      #   @param company [WhopSDK::Models::Invoice::Company] The company that issued this invoice.
      #
      #   @param created_at [Time] The datetime the invoice was created.
      #
      #   @param current_plan [WhopSDK::Models::Invoice::CurrentPlan] The plan that this invoice charges for.
      #
      #   @param customer_name [String, nil] The full name of the customer this invoice is addressed to. Null if no name is o
      #
      #   @param due_date [Time, nil] The deadline by which payment is expected. Null if the invoice is collected auto
      #
      #   @param email_address [String, nil] The email address of the customer this invoice is addressed to. Null if no email
      #
      #   @param fetch_invoice_token [String] A signed token that allows fetching invoice data publicly without authentication
      #
      #   @param line_items [Array<WhopSDK::Models::Invoice::LineItem>] Optional line items that break down the invoice total into individual charges.
      #
      #   @param mailing_address [WhopSDK::Models::Invoice::MailingAddress, nil] The billing/mailing address associated with this invoice, if one was provided at
      #
      #   @param number [String] The sequential invoice number for display purposes.
      #
      #   @param pay_online_url [String, nil] The checkout URL where the customer can pay this invoice online, with their emai
      #
      #   @param payment_processing [Boolean] Whether a payment on this invoice is still clearing. True while a delayed paymen
      #
      #   @param product [WhopSDK::Models::Invoice::Product] The product that this invoice was generated for.
      #
      #   @param status [Symbol, WhopSDK::Models::InvoiceStatus] The current payment status of the invoice, such as draft, open, paid, or void.
      #
      #   @param subscription_billing_anchor_at [Time, nil] The date that defines when the subscription billing cycle starts. When set on a
      #
      #   @param updated_at [Time] The datetime the invoice was last updated.
      #
      #   @param user [WhopSDK::Models::Invoice::User, nil] The user this invoice is addressed to. Null if the user account has been removed

      # @see WhopSDK::Models::Invoice#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company that issued this invoice.
        #
        #   @param id [String] The unique identifier for the company.
      end

      # @see WhopSDK::Models::Invoice#current_plan
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

        # @!attribute description
        #   A text description of the plan visible to customers. Maximum 1000 characters.
        #   Null if no description is set.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute formatted_price
        #   The formatted price (including currency) for the plan.
        #
        #   @return [String]
        required :formatted_price, String

        # @!method initialize(id:, currency:, description:, formatted_price:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Invoice::CurrentPlan} for more details.
        #
        #   The plan that this invoice charges for.
        #
        #   @param id [String] The unique identifier for the plan.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
        #
        #   @param description [String, nil] A text description of the plan visible to customers. Maximum 1000 characters. Nu
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

      # @see WhopSDK::Models::Invoice#mailing_address
      class MailingAddress < WhopSDK::Internal::Type::BaseModel
        # @!attribute city
        #   The city of the address.
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute country
        #   The country of the address.
        #
        #   @return [String, nil]
        required :country, String, nil?: true

        # @!attribute line1
        #   The line 1 of the address.
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #   The line 2 of the address.
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute name
        #   The name of the customer.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute phone
        #   The phone number of the customer.
        #
        #   @return [String, nil]
        required :phone, String, nil?: true

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute state
        #   The state of the address.
        #
        #   @return [String, nil]
        required :state, String, nil?: true

        # @!method initialize(city:, country:, line1:, line2:, name:, phone:, postal_code:, state:)
        #   The billing/mailing address associated with this invoice, if one was provided at
        #   creation time.
        #
        #   @param city [String, nil] The city of the address.
        #
        #   @param country [String, nil] The country of the address.
        #
        #   @param line1 [String, nil] The line 1 of the address.
        #
        #   @param line2 [String, nil] The line 2 of the address.
        #
        #   @param name [String, nil] The name of the customer.
        #
        #   @param phone [String, nil] The phone number of the customer.
        #
        #   @param postal_code [String, nil] The postal code of the address.
        #
        #   @param state [String, nil] The state of the address.
      end

      # @see WhopSDK::Models::Invoice#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Invoice::Product} for more details.
        #
        #   The product that this invoice was generated for.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end

      # @see WhopSDK::Models::Invoice#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The user's email address. Requires the member:email:read permission to access.
        #   Null if not authorized.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

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

        # @!method initialize(id:, email:, name:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Invoice::User} for more details.
        #
        #   The user this invoice is addressed to. Null if the user account has been
        #   removed.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param email [String, nil] The user's email address. Requires the member:email:read permission to access. N
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
