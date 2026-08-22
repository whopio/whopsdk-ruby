# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company that issued this invoice.
    class InvoiceCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
