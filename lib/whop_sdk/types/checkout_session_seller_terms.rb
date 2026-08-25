# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionSellerTerms < Internal::Types::Model
      field :eula_url, -> { String }, optional: false, nullable: true

      field :privacy_policy_url, -> { String }, optional: false, nullable: true

      field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :return_policy_url, -> { String }, optional: false, nullable: true

      field :terms_url, -> { String }, optional: false, nullable: true
    end
  end
end
