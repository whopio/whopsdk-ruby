# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      class ListPlansRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Plans::Types::ListPlansRequestDirection }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Plans::Types::ListPlansRequestOrder }, optional: true, nullable: false

        field :release_methods, -> { String }, optional: true, nullable: false

        field :visibilities, -> { String }, optional: true, nullable: false

        field :plan_types, -> { String }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
