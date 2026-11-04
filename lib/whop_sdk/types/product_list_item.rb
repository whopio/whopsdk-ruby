# frozen_string_literal: true

module Whop_sdk
  module Types
    class ProductListItem < Internal::Types::Model
      field :account, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :average_review_rating, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :default_variant, -> { Whop_sdk::Types::ProductPublicVariant }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :experiences, -> { Internal::Types::Array[Whop_sdk::Types::ProductExperience] }, optional: false, nullable: false

      field :external_identifier, -> { String }, optional: false, nullable: true

      field :gallery_images, -> { Internal::Types::Array[Whop_sdk::Types::ProductGalleryImage] }, optional: false, nullable: false

      field :headline, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :labels, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :logo_url, -> { String }, optional: false, nullable: true

      field :member_count, -> { Integer }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :published_reviews_count, -> { Integer }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :variant_attributes, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :visibility, -> { String }, optional: false, nullable: true
    end
  end
end
