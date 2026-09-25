# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      class CreateSetupIntentsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :confirmation_token, -> { String }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :for_ads_billing, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :payment_method_id, -> { String }, optional: true, nullable: false

        field :return_url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
