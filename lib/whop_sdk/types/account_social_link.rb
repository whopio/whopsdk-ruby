# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountSocialLink < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: false

      field :website, -> { Whop_sdk::Types::AccountSocialLinkWebsite }, optional: false, nullable: false
    end
  end
end
