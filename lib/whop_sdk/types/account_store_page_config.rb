# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountStorePageConfig < Internal::Types::Model
      field :accent_color, -> { Whop_sdk::Types::AccountStorePageConfigAccentColor }, optional: false, nullable: true

      field :layout, -> { Whop_sdk::Types::AccountStorePageConfigLayout }, optional: false, nullable: true

      field :profile_variant, -> { Whop_sdk::Types::AccountStorePageConfigProfileVariant }, optional: false, nullable: true

      field :whop_affiliate_link, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
