# frozen_string_literal: true

module Whop_sdk
  module Products
    module Types
      class ListProductsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :marketplace_category_route, -> { String }, optional: true, nullable: false

        field :plan_types, -> { Whop_sdk::Products::Types::ListProductsRequestPlanTypesItem }, optional: true, nullable: false

        field :price_minimum, -> { Integer }, optional: true, nullable: false

        field :price_maximum, -> { Integer }, optional: true, nullable: false

        field :visibilities, -> { String }, optional: true, nullable: false

        field :access_pass_types, -> { String }, optional: true, nullable: false

        field :labels, -> { String }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Products::Types::ListProductsRequestDirection }, optional: true, nullable: false

        field :order, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
