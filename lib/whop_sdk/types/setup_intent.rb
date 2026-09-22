# frozen_string_literal: true

module Whop_sdk
  module Types
    class SetupIntent < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :checkout_configuration_id, -> { String }, optional: false, nullable: true

      field :client_secret, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :last_setup_error, -> { Whop_sdk::Types::SetupLastSetupError }, optional: false, nullable: true

      field :member_id, -> { String }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :payment_instrument, -> { Whop_sdk::Types::PaymentInstrument }, optional: false, nullable: true

      field :payment_method_id, -> { String }, optional: false, nullable: true

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: true

      field :return_url, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::SetupIntentStatus }, optional: false, nullable: false

      field :three_ds_verified, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: true
    end
  end
end
