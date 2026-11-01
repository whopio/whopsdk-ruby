# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class ChargeInvoicesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :payment_method_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
