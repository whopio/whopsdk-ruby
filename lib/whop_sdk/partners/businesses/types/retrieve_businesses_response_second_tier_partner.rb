# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # The second-tier partner who earns on this business (referred the first-tier partner). Null if there is no
        # active second-tier partner.
        class RetrieveBusinessesResponseSecondTierPartner < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: true

          field :profile_picture, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseSecondTierPartnerProfilePicture }, optional: false, nullable: false

          field :username, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
