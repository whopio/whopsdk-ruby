# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        # Creates a recipient payout account linked to the funding ledger as a non-default account, then saves the bank
        # method on it. No Whop user, company, or recipient ledger is created. A valid recipient email is required.
        # Recipient methods cannot be default or recurring methods and cannot use Plaid.
        class CreateMethodsRequestRecipient < Internal::Types::Model
          field :country, -> { String }, optional: false, nullable: false

          field :email, -> { String }, optional: false, nullable: false

          field :first_name, -> { String }, optional: false, nullable: false

          field :last_name, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
