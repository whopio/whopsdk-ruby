# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # Account store page display configuration.
      class UpdateAccountsRequestStorePageConfig < Internal::Types::Model
        field :accent_color, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestStorePageConfigAccentColor }, optional: true, nullable: false

        field :layout, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestStorePageConfigLayout }, optional: true, nullable: false

        field :profile_variant, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestStorePageConfigProfileVariant }, optional: true, nullable: false

        field :whop_affiliate_link, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
