# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # The owner of the referred business.
        class RetrieveBusinessesResponseOwner < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: true

          field :profile_picture, -> { Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponseOwnerProfilePicture }, optional: false, nullable: false

          field :username, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
