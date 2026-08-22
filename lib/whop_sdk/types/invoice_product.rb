# frozen_string_literal: true

module Whop_sdk
  module Types
    # The product that this invoice was generated for.
    class InvoiceProduct < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
