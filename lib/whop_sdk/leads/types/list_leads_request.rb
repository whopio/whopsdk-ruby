# frozen_string_literal: true

module Whop_sdk
  module Leads
    module Types
      class ListLeadsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :company_id, -> { String }, optional: false, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :product_ids, -> { String }, optional: true, nullable: false
      end
    end
  end
end
