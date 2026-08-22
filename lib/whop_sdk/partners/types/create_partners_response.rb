# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class CreatePartnersResponse < Internal::Types::Model
        field :referral_link, -> { String }, optional: false, nullable: false

        field :whop_partner_enabled_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
