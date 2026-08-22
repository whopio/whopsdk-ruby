# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserSummary < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :profile_picture, -> { Whop_sdk::Types::UserProfilePicture }, optional: false, nullable: false

      field :username, -> { String }, optional: false, nullable: false
    end
  end
end
