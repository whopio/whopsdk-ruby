# frozen_string_literal: true

module Whop_sdk
  module Types
    class MemberUser < Internal::Types::Model
      field :badges, -> { Internal::Types::Array[Whop_sdk::Types::UserBadge] }, optional: false, nullable: false

      field :city, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :profile_picture, -> { Whop_sdk::Types::UserProfilePicture }, optional: false, nullable: false

      field :state, -> { String }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: false
    end
  end
end
