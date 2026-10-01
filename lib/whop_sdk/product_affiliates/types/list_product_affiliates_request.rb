# frozen_string_literal: true

module Whop_sdk
  module ProductAffiliates
    module Types
      class ListProductAffiliatesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::ProductAffiliates::Types::ListProductAffiliatesRequestStatus }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
