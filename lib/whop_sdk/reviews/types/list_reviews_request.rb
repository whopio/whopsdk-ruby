# frozen_string_literal: true

module Whop_sdk
  module Reviews
    module Types
      class ListReviewsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :min_stars, -> { Integer }, optional: true, nullable: false

        field :max_stars, -> { Integer }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Reviews::Types::ListReviewsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Reviews::Types::ListReviewsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
