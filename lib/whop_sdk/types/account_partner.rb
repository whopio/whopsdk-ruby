# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountPartner < Internal::Types::Model
      field :badges, -> { Internal::Types::Array[Whop_sdk::Types::UserBadge] }, optional: false, nullable: false

      field :email, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :profile_picture, -> { Whop_sdk::Types::UserProfilePicture }, optional: false, nullable: false

      field :referring_account, -> { Whop_sdk::Types::AccountSummary }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: false

      field :whop_partner_verified_at, -> { String }, optional: false, nullable: true
    end
  end
end
