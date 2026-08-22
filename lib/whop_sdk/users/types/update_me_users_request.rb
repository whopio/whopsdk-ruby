# frozen_string_literal: true

module Whop_sdk
  module Users
    module Types
      class UpdateMeUsersRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :banner, -> { Whop_sdk::Users::Types::UpdateMeUsersRequestBanner }, optional: true, nullable: false

        field :bio, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :profile_picture, -> { Whop_sdk::Users::Types::UpdateMeUsersRequestProfilePicture }, optional: true, nullable: false

        field :username, -> { String }, optional: true, nullable: false
      end
    end
  end
end
