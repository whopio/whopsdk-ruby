# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # The partner whose blueprint the business deployed. Null unless this is a blueprint referral.
        class RetrieveBusinessesResponseBlueprintPartner < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: true

          field :profile_picture, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseBlueprintPartnerProfilePicture }, optional: false, nullable: false

          field :username, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
