# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      # Billing details collected with the method. `email` is always required; cards additionally require `name` and an
      # address with `line1` and `country`.
      class CreateConfirmationTokensRequestBillingDetails < Internal::Types::Model
        field :address, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :email, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
