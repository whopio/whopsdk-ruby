# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      # Input for creating a social link for a company
      class UpdateCompaniesRequestSocialLinksItem < Internal::Types::Model
        field :image, -> { Whop_sdk::Companies::Types::UpdateCompaniesRequestSocialLinksItemImage }, optional: true, nullable: false

        field :order, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: false, nullable: false

        field :website, -> { Whop_sdk::Types::SocialLinkWebsites }, optional: false, nullable: false

        field :website_order, -> { String }, optional: true, nullable: false
      end
    end
  end
end
