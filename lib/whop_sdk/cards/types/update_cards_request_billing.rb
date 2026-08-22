# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      # New billing address. Requires line1, city, region, postal_code, and country_code. On an invited card, passing
      # billing alone (as the invited user) completes onboarding and starts card provisioning.
      class UpdateCardsRequestBilling < Internal::Types::Model
        field :city, -> { String }, optional: false, nullable: false

        field :country_code, -> { String }, optional: false, nullable: false

        field :line1, -> { String }, optional: false, nullable: false

        field :line2, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: false, nullable: false

        field :region, -> { String }, optional: false, nullable: false
      end
    end
  end
end
