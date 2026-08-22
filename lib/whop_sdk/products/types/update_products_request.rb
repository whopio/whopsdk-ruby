# frozen_string_literal: true

module Whop_sdk
  module Products
    module Types
      class UpdateProductsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :banner_image, -> { Whop_sdk::Products::Types::UpdateProductsRequestBannerImage }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :headline, -> { String }, optional: true, nullable: false

        field :labels, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :product_tax_code_id, -> { String }, optional: true, nullable: false

        field :send_welcome_message, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :visibility, -> { String }, optional: true, nullable: false
      end
    end
  end
end
