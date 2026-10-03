# frozen_string_literal: true

module Whop_sdk
  module PaymentQuotes
    module Types
      class RetrievePaymentQuotesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
