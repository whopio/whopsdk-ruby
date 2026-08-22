# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class UpdatePreferencesResponseAdsPaymentMethodsPrimary < Internal::Types::Model
          field :card_brand, -> { String }, optional: true, nullable: false

          field :exp_month, -> { Integer }, optional: true, nullable: false

          field :exp_year, -> { Integer }, optional: true, nullable: false

          field :icon_url, -> { String }, optional: true, nullable: false

          field :id, -> { String }, optional: false, nullable: false

          field :last4, -> { String }, optional: true, nullable: false

          field :title, -> { String }, optional: true, nullable: false

          field :type, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesResponseAdsPaymentMethodsPrimaryType }, optional: false, nullable: false
        end
      end
    end
  end
end
