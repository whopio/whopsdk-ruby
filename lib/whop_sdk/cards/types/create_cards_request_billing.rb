# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      # The card's initial billing address. On a company card it also registers the assigned member as a cardholder if
      # they are not one yet. For an individual card, region is also required.
      class CreateCardsRequestBilling < Internal::Types::Model
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
