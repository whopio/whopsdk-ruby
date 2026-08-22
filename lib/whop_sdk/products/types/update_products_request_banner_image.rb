# frozen_string_literal: true

module Whop_sdk
  module Products
    module Types
      # A wide image for the product, shown on the product page and on listing cards. Pass `{ id }` for an existing
      # attachment or `{ direct_upload_id }` for a completed direct upload; `null` removes it.
      class UpdateProductsRequestBannerImage < Internal::Types::Model
        field :direct_upload_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
