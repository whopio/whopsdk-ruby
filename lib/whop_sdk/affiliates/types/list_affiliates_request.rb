# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Types
      class ListAffiliatesRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :company_id, -> { String }, optional: false, nullable: false

        field :direction, -> { Whop_sdk::Types::Direction }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Types::AffiliatesSortableColumns }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Types::Status }, optional: true, nullable: false
      end
    end
  end
end
