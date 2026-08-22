# frozen_string_literal: true

module Whop_sdk
  module Types
    class SocialAccountParent < Internal::Types::Model
      field :external_id, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :platform, -> { Whop_sdk::Types::SocialAccountParentPlatform }, optional: false, nullable: false

      field :profile_picture_url, -> { String }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: true

      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
