# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      # The billing address. On an issued card this replaces the card's billing address and region is also required. On
      # an invited card, sending it as the invited user completes onboarding and starts card provisioning.
      class UpdateCardsRequestBilling < Internal::Types::Model
        field :city, -> { String }, optional: false, nullable: false

        field :country_code, -> { String }, optional: false, nullable: false

        field :line1, -> { String }, optional: false, nullable: false

        field :line2, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: false, nullable: false

        field :region, -> { String }, optional: true, nullable: false
      end
    end
  end
end
