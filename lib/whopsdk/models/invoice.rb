# frozen_string_literal: true

module Whopsdk
  module Models
    class Invoice < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the invoice.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The date the invoice was created.
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute current_plan
      #   The plan that the invoice was created for.
      #
      #   @return [Whopsdk::Models::Invoice::CurrentPlan]
      required :current_plan, -> { Whopsdk::Invoice::CurrentPlan }

      # @!attribute due_date
      #   The date the invoice is due.
      #
      #   @return [Integer, nil]
      required :due_date, Integer, nil?: true

      # @!attribute email_address
      #   The email address that the invoice was created for.
      #
      #   @return [String, nil]
      required :email_address, String, nil?: true

      # @!attribute fetch_invoice_token
      #   The token to fetch the invoice.
      #
      #   @return [String]
      required :fetch_invoice_token, String

      # @!attribute number
      #   The number of the invoice.
      #
      #   @return [String]
      required :number, String

      # @!attribute status
      #   The different statuses an invoice can be in
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceStatus, nil]
      required :status, enum: -> { Whopsdk::InvoiceStatus }, nil?: true

      # @!attribute user
      #   The user that the invoice was created for.
      #
      #   @return [Whopsdk::Models::Invoice::User, nil]
      required :user, -> { Whopsdk::Invoice::User }, nil?: true

      # @!method initialize(id:, created_at:, current_plan:, due_date:, email_address:, fetch_invoice_token:, number:, status:, user:)
      #   A statement that defines an amount due by a customer.
      #
      #   @param id [String] The ID of the invoice.
      #
      #   @param created_at [Integer] The date the invoice was created.
      #
      #   @param current_plan [Whopsdk::Models::Invoice::CurrentPlan] The plan that the invoice was created for.
      #
      #   @param due_date [Integer, nil] The date the invoice is due.
      #
      #   @param email_address [String, nil] The email address that the invoice was created for.
      #
      #   @param fetch_invoice_token [String] The token to fetch the invoice.
      #
      #   @param number [String] The number of the invoice.
      #
      #   @param status [Symbol, Whopsdk::Models::InvoiceStatus, nil] The different statuses an invoice can be in
      #
      #   @param user [Whopsdk::Models::Invoice::User, nil] The user that the invoice was created for.

      # @see Whopsdk::Models::Invoice#current_plan
      class CurrentPlan < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the plan.
        #
        #   @return [String]
        required :id, String

        # @!attribute currency
        #   The available currencies on the platform
        #
        #   @return [Symbol, Whopsdk::Models::Currency, nil]
        required :currency, enum: -> { Whopsdk::Currency }, nil?: true

        # @!attribute formatted_price
        #   The formatted price (including currency) for the plan.
        #
        #   @return [String]
        required :formatted_price, String

        # @!method initialize(id:, currency:, formatted_price:)
        #   The plan that the invoice was created for.
        #
        #   @param id [String] The internal ID of the plan.
        #
        #   @param currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
        #
        #   @param formatted_price [String] The formatted price (including currency) for the plan.
      end

      # @see Whopsdk::Models::Invoice#user
      class User < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user that the invoice was created for.
        #
        #   @param id [String] The internal ID of the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
