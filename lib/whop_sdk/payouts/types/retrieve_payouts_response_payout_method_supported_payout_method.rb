# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # Supported payout method display details.
      class RetrievePayoutsResponsePayoutMethodSupportedPayoutMethod < Internal::Types::Model
        field :delivery_type, -> { Whop_sdk::Payouts::Types::RetrievePayoutsResponsePayoutMethodSupportedPayoutMethodDeliveryType }, optional: false, nullable: false

        field :icon_url, -> { String }, optional: false, nullable: true

        field :payer_name, -> { String }, optional: false, nullable: true
      end
    end
  end
end
