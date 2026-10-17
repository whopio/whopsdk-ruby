# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        # The recipient's address in recipient.country. Saved on the recipient payout account and supplied to bank
        # methods that require address fields. Omit to retain the existing address when reusing a recipient.
        class CreateMethodsRequestRecipientAddress < Internal::Types::Model
          field :city, -> { String }, optional: false, nullable: false

          field :line1, -> { String }, optional: false, nullable: false

          field :line2, -> { String }, optional: true, nullable: false

          field :postal_code, -> { String }, optional: true, nullable: false

          field :state, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
