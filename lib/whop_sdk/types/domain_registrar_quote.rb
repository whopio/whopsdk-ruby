# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainRegistrarQuote < Internal::Types::Model
      field :available, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :premium, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :purchase_url, -> { String }, optional: false, nullable: true

      field :renewal_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :score, -> { Integer }, optional: false, nullable: false

      field :transfer_price, -> { Whop_sdk::Types::Money }, optional: false, nullable: true
    end
  end
end
