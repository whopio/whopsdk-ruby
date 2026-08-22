# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      # The user's profile picture. Present only on the caller's own entry.
      class LeaderboardPartnersResponseMeUserProfilePicture < Internal::Types::Model
        field :url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
