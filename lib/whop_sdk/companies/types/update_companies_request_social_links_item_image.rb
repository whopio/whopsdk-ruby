# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      # The custom image for the social link
      class UpdateCompaniesRequestSocialLinksItemImage < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
