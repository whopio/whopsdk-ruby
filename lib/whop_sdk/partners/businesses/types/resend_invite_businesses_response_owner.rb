# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # The owner of the referred business.
        class ResendInviteBusinessesResponseOwner < Internal::Types::Model
          field :email, -> { String }, optional: false, nullable: true

          field :id, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: true

          field :profile_picture, -> { Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponseOwnerProfilePicture }, optional: false, nullable: false

          field :username, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
