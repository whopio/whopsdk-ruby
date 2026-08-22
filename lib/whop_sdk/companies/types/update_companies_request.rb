# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      class UpdateCompaniesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :affiliate_application_required, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :affiliate_instructions, -> { String }, optional: true, nullable: false

        field :banner_image, -> { Whop_sdk::Companies::Types::UpdateCompaniesRequestBannerImage }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :featured_affiliate_product_id, -> { String }, optional: true, nullable: false

        field :logo, -> { Whop_sdk::Companies::Types::UpdateCompaniesRequestLogo }, optional: true, nullable: false

        field :route, -> { String }, optional: true, nullable: false

        field :send_customer_emails, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :social_links, -> { Internal::Types::Array[Whop_sdk::Companies::Types::UpdateCompaniesRequestSocialLinksItem] }, optional: true, nullable: false

        field :target_audience, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
