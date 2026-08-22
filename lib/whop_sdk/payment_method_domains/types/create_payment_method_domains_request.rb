# frozen_string_literal: true

module Whop_sdk
  module PaymentMethodDomains
    module Types
      class CreatePaymentMethodDomainsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :hostname, -> { String }, optional: false, nullable: false
      end
    end
  end
end
