# frozen_string_literal: true

module Whop_sdk
  module Types
    # The billing/mailing address associated with this invoice, if one was provided at creation time.
    class InvoiceMailingAddress < Internal::Types::Model
      field :city, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :line1, -> { String }, optional: false, nullable: true

      field :line2, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :phone, -> { String }, optional: false, nullable: true

      field :postal_code, -> { String }, optional: false, nullable: true

      field :state, -> { String }, optional: false, nullable: true
    end
  end
end
