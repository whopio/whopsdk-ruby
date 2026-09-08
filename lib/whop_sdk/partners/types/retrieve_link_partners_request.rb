# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class RetrieveLinkPartnersRequest < Internal::Types::Model
        field :partner_username, -> { String }, optional: false, nullable: false

        field :reward_slug, -> { String }, optional: false, nullable: false
      end
    end
  end
end
