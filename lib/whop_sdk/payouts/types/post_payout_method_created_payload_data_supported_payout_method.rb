# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # The supported payout method this saved method was created from.
      class PostPayoutMethodCreatedPayloadDataSupportedPayoutMethod < Internal::Types::Model
        field :country_code, -> { String }, optional: false, nullable: true

        field :delivery_type, -> { Whop_sdk::Payouts::Types::PostPayoutMethodCreatedPayloadDataSupportedPayoutMethodDeliveryType }, optional: false, nullable: false

        field :icon_url, -> { String }, optional: false, nullable: true

        field :name, -> { String }, optional: false, nullable: true

        field :supports_instant_delivery, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :supports_plaid, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :supports_standard_delivery, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
