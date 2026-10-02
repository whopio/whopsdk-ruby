# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        # Creates an external recipient and saves the bank method on their payout account, bound to the funding account.
        # The MassPay email is generated when omitted; the recipient does not need a Whop login or Sumsub verification.
        # Recipient methods cannot be default or recurring methods and cannot use Plaid.
        class CreateMethodsRequestRecipient < Internal::Types::Model
          field :country, -> { String }, optional: false, nullable: false

          field :email, -> { String }, optional: true, nullable: false

          field :first_name, -> { String }, optional: false, nullable: false

          field :last_name, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
