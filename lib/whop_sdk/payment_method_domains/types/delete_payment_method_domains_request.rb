# frozen_string_literal: true

module Whop_sdk
  module PaymentMethodDomains
    module Types
      class DeletePaymentMethodDomainsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
