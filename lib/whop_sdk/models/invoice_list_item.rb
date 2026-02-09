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
      #   The plan that the invoice was created for.
      #
      #   @return [WhopSDK::Models::InvoiceListItem::CurrentPlan]
      required :current_plan, -> { WhopSDK::InvoiceListItem::CurrentPlan }

      # @!attribute due_date
      #   The date the invoice is due.
      #
      #   @return [Time, nil]
      required :due_date, Time, nil?: true

      # @!attribute email_address
      #   The email address that the invoice was created for.
      #
      #   @return [String, nil]
      required :email_address, String, nil?: true

      # @!attribute fetch_invoice_token
      #   A signed token that allows fetching the invoice data publically without being
      #   authenticated.
      #
      #   @return [String]
      required :fetch_invoice_token, String

      # @!attribute number
      #   The number of the invoice.
      #
      #   @return [String]
      required :number, String

      # @!attribute status
      #   The status of the invoice.
      #
      #   @return [Symbol, WhopSDK::Models::InvoiceStatus]
      required :status, enum: -> { WhopSDK::InvoiceStatus }

      # @!attribute user
      #   The user that the invoice was created for.
      #
      #   @return [WhopSDK::Models::InvoiceListItem::User, nil]
      required :user, -> { WhopSDK::InvoiceListItem::User }, nil?: true

      # @!method initialize(id:, created_at:, current_plan:, due_date:, email_address:, fetch_invoice_token:, number:, status:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::InvoiceListItem} for more details.
      #
      #   A statement that defines an amount due by a customer.
      #
      #   @param id [String] The unique identifier for the invoice.
      #
      #   @param created_at [Time] The datetime the invoice was created.
      #
      #   @param current_plan [WhopSDK::Models::InvoiceListItem::CurrentPlan] The plan that the invoice was created for.
      #
      #   @param due_date [Time, nil] The date the invoice is due.
      #
      #   @param email_address [String, nil] The email address that the invoice was created for.
      #
      #   @param fetch_invoice_token [String] A signed token that allows fetching the invoice data publically without being au
      #
      #   @param number [String] The number of the invoice.
      #
      #   @param status [Symbol, WhopSDK::Models::InvoiceStatus] The status of the invoice.
      #
      #   @param user [WhopSDK::Models::InvoiceListItem::User, nil] The user that the invoice was created for.

      # @see WhopSDK::Models::InvoiceListItem#current_plan
      class CurrentPlan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the plan.
        #
        #   @return [String]
        required :id, String

        # @!attribute currency
        #   The respective currency identifier for the plan.
        #
        #   @return [Symbol, WhopSDK::Models::Currency]
        required :currency, enum: -> { WhopSDK::Currency }

        # @!attribute formatted_price
        #   The formatted price (including currency) for the plan.
        #
        #   @return [String]
        required :formatted_price, String

        # @!method initialize(id:, currency:, formatted_price:)
        #   The plan that the invoice was created for.
        #
        #   @param id [String] The unique identifier for the plan.
        #
        #   @param currency [Symbol, WhopSDK::Models::Currency] The respective currency identifier for the plan.
        #
        #   @param formatted_price [String] The formatted price (including currency) for the plan.
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
        #   The user that the invoice was created for.
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
