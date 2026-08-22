# frozen_string_literal: true

module Whop_sdk
  module Types
    class Product < Internal::Types::Model
      field :account, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :custom_cta, -> { Whop_sdk::Types::ProductCustomCta }, optional: false, nullable: true

      field :custom_cta_url, -> { String }, optional: false, nullable: true

      field :custom_statement_descriptor, -> { String }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :external_identifier, -> { String }, optional: false, nullable: true

      field :gallery_images, -> { Internal::Types::Array[Whop_sdk::Types::ProductGalleryImage] }, optional: false, nullable: false

      field :global_affiliate_percentage, -> { Integer }, optional: false, nullable: true

      field :global_affiliate_status, -> { Whop_sdk::Types::ProductGlobalAffiliateStatus }, optional: false, nullable: true

      field :headline, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :labels, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :marketplace_status, -> { Whop_sdk::Types::ProductMarketplaceStatus }, optional: false, nullable: false

      field :member_affiliate_percentage, -> { Integer }, optional: false, nullable: true

      field :member_affiliate_status, -> { Whop_sdk::Types::ProductMemberAffiliateStatus }, optional: false, nullable: true

      field :member_count, -> { Integer }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :owner_user, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :product_tax_code, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :published_reviews_count, -> { Integer }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :visibility, -> { String }, optional: false, nullable: true
    end
  end
end
