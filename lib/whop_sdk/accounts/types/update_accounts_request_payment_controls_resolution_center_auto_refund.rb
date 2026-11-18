# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # Settings for automatic refunds of Resolution Center cases. Fields you leave out keep their value. A threshold
      # change while `locked` is `true` returns a `403`. You can send back the object from `GET` unchanged.
      class UpdateAccountsRequestPaymentControlsResolutionCenterAutoRefund < Internal::Types::Model
        field :card_threshold_usd, -> { Integer }, optional: true, nullable: false

        field :financing_threshold_usd, -> { Integer }, optional: true, nullable: false

        field :locked, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :message, -> { String }, optional: true, nullable: false

        field :paypal_threshold_usd, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
