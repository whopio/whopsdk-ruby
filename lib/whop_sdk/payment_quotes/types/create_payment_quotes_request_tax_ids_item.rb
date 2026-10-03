# frozen_string_literal: true

module Whop_sdk
  module PaymentQuotes
    module Types
      class CreatePaymentQuotesRequestTaxIDsItem < Internal::Types::Model
        field :type, -> { Whop_sdk::PaymentQuotes::Types::CreatePaymentQuotesRequestTaxIDsItemType }, optional: false, nullable: false

        field :value, -> { String }, optional: false, nullable: false
      end
    end
  end
end
