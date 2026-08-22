# frozen_string_literal: true

module Whop_sdk
  module Types
    class ProductListItem < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :external_identifier, -> { String }, optional: false, nullable: true

      field :gallery_images, -> { Internal::Types::Array[Whop_sdk::Types::ProductGalleryImage] }, optional: false, nullable: false

      field :headline, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :labels, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :member_count, -> { Integer }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :published_reviews_count, -> { Integer }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :visibility, -> { String }, optional: false, nullable: true
    end
  end
end
