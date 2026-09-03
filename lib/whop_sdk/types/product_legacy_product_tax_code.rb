# frozen_string_literal: true

module Whop_sdk
  module Types
    # The tax classification code applied to purchases of this product for sales tax calculation. Null if no tax code is
    # assigned.
    class ProductLegacyProductTaxCode < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :product_type, -> { Whop_sdk::Types::ProductTaxCodeProductTypes }, optional: false, nullable: false
    end
  end
end
