# frozen_string_literal: true

module Whop_sdk
  module Types
    # A product is a digital good or service sold on Whop. Products contain plans for pricing and experiences for
    # content delivery.
    class ProductLegacy < Internal::Types::Model
      field :company, -> { Whop_sdk::Types::ProductLegacyCompany }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :custom_cta, -> { Whop_sdk::Types::CustomCtas }, optional: false, nullable: false

      field :custom_cta_url, -> { String }, optional: false, nullable: true

      field :custom_statement_descriptor, -> { String }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :external_identifier, -> { String }, optional: false, nullable: true

      field :gallery_images, -> { Internal::Types::Array[Whop_sdk::Types::ProductLegacyGalleryImagesItem] }, optional: false, nullable: false

      field :global_affiliate_percentage, -> { Integer }, optional: false, nullable: true

      field :global_affiliate_status, -> { Whop_sdk::Types::GlobalAffiliateStatuses }, optional: false, nullable: false

      field :headline, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :member_affiliate_percentage, -> { Integer }, optional: false, nullable: true

      field :member_affiliate_status, -> { Whop_sdk::Types::GlobalAffiliateStatuses }, optional: false, nullable: false

      field :member_count, -> { Integer }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :owner_user, -> { Whop_sdk::Types::ProductLegacyOwnerUser }, optional: false, nullable: false

      field :product_tax_code, -> { Whop_sdk::Types::ProductLegacyProductTaxCode }, optional: false, nullable: true

      field :published_reviews_count, -> { Integer }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :visibility, -> { Whop_sdk::Types::Visibility }, optional: false, nullable: false
    end
  end
end
