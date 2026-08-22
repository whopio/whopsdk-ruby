# frozen_string_literal: true

module Whop_sdk
  module Products
    module Types
      class DeleteProductsResponse < Internal::Types::Model
        field :deleted, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
