# frozen_string_literal: true

module Whop_sdk
  module Types
    # The product associated with the disputed payment. Null if the dispute is not linked to a specific product.
    class DisputeListItemProduct < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
