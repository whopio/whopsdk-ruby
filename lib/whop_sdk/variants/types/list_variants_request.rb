# frozen_string_literal: true

module Whop_sdk
  module Variants
    module Types
      class ListVariantsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Variants::Types::ListVariantsRequestDirection }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Variants::Types::ListVariantsRequestOrder }, optional: true, nullable: false

        field :release_methods, -> { String }, optional: true, nullable: false

        field :visibilities, -> { String }, optional: true, nullable: false

        field :plan_types, -> { String }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :presentment_currency, -> { String }, optional: true, nullable: false

        field :ip_address, -> { String }, optional: true, nullable: false

        field :presentment_country, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
