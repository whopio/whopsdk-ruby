# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class ReferredUsersPartnersResponseDataItemUser < Internal::Types::Model
        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :profile_picture, -> { Whop_sdk::Partners::Types::ReferredUsersPartnersResponseDataItemUserProfilePicture }, optional: true, nullable: false

        field :username, -> { String }, optional: false, nullable: false
      end
    end
  end
end
