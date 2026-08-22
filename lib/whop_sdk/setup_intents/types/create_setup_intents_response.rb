# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      # A setup intent allows a user to save a payment method for future use without making an immediate purchase.
      class CreateSetupIntentsResponse < Internal::Types::Model
        field :checkout_configuration, -> { Whop_sdk::SetupIntents::Types::CreateSetupIntentsResponseCheckoutConfiguration }, optional: false, nullable: true

        field :client_secret, -> { String }, optional: false, nullable: true

        field :company, -> { Whop_sdk::SetupIntents::Types::CreateSetupIntentsResponseCompany }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: false

        field :error_message, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :member, -> { Whop_sdk::SetupIntents::Types::CreateSetupIntentsResponseMember }, optional: false, nullable: true

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

        field :payment_method, -> { Whop_sdk::SetupIntents::Types::CreateSetupIntentsResponsePaymentMethod }, optional: false, nullable: true

        field :status, -> { Whop_sdk::Types::SetupIntentStatuses }, optional: false, nullable: false

        field :three_ds_verified, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
