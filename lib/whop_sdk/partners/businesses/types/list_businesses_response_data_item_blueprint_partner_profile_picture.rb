# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # The user's profile picture.
        class ListBusinessesResponseDataItemBlueprintPartnerProfilePicture < Internal::Types::Model
          field :url, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
