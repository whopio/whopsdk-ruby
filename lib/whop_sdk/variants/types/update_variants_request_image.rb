# frozen_string_literal: true

module Whop_sdk
  module Variants
    module Types
      # An image displayed on the product page to represent this variant.
      class UpdateVariantsRequestImage < Internal::Types::Model
        field :direct_upload_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
