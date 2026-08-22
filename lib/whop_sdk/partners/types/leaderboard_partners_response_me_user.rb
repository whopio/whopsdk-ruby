# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      # The ranked referrer. Identity fields (id, name, username, profile_picture) are returned only on the caller's own
      # entry; other referrers expose coarse location only.
      class LeaderboardPartnersResponseMeUser < Internal::Types::Model
        field :city, -> { String }, optional: false, nullable: true

        field :country, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :profile_picture, -> { Whop_sdk::Partners::Types::LeaderboardPartnersResponseMeUserProfilePicture }, optional: true, nullable: false

        field :username, -> { String }, optional: true, nullable: false
      end
    end
  end
end
