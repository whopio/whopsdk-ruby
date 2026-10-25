# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # The partner business whose team member made this referral, the one its commission is paid to. Null for a solo
        # partner's referral.
        class ListBusinessesResponseDataItemReferringBusiness < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :logo_url, -> { String }, optional: false, nullable: true

          field :route, -> { String }, optional: false, nullable: false

          field :title, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
