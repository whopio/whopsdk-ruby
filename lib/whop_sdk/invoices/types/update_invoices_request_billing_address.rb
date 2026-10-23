# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      # Create a billing address linked to this member.
      class UpdateInvoicesRequestBillingAddress < Internal::Types::Model
        field :city, -> { String }, optional: false, nullable: false

        field :country, -> { String }, optional: false, nullable: false

        field :line1, -> { String }, optional: false, nullable: false

        field :line2, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: false, nullable: false

        field :state, -> { String }, optional: true, nullable: false
      end
    end
  end
end
