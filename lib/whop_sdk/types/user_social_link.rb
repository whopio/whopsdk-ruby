# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserSocialLink < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :username, -> { String }, optional: false, nullable: true

      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :website, -> { Whop_sdk::Types::UserSocialLinkWebsite }, optional: false, nullable: false
    end
  end
end
