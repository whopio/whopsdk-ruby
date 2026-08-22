# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # The partner who referred the business owner onto Whop (first tier). Null if there is no active first-tier
        # partner.
        class RetrieveBusinessesResponseFirstTierPartner < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: true

          field :profile_picture, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseFirstTierPartnerProfilePicture }, optional: false, nullable: false

          field :username, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
