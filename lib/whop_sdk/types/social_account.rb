# frozen_string_literal: true

module Whop_sdk
  module Types
    class SocialAccount < Internal::Types::Model
      field :error, -> { String }, optional: false, nullable: true

      field :external_id, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :parent_social_account, -> { Whop_sdk::Types::SocialAccountParent }, optional: false, nullable: true

      field :platform, -> { Whop_sdk::Types::SocialAccountPlatform }, optional: false, nullable: false

      field :profile_picture_url, -> { String }, optional: false, nullable: true

      field :scopes, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: true

      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
