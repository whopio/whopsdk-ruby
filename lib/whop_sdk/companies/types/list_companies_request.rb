# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      class ListCompaniesRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :parent_company_id, -> { String }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Types::Direction }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
