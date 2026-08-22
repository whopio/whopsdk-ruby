# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      # Buyer billing address used for tax calculation. Provide either `address.country` or `ip_address`; include state
      # and postal code when available for more accurate results.
      class CalculateTaxPlansRequestAddress < Internal::Types::Model
        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: false, nullable: false

        field :line1, -> { String }, optional: true, nullable: false

        field :line2, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: true, nullable: false

        field :state, -> { String }, optional: true, nullable: false
      end
    end
  end
end
