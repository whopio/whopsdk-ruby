# frozen_string_literal: true

module Whop_sdk
  module Types
    # A social link attached to a resource on the site.
    class CompanySocialLinksItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :website, -> { Whop_sdk::Types::SocialLinkWebsites }, optional: false, nullable: false
    end
  end
end
