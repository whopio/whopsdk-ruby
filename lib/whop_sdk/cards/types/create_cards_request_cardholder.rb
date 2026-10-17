# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      # Details for a company card's assigned member when they are not registered as a cardholder yet. Send with billing
      # to register them and start provisioning in one call instead of sending them an onboarding invitation. The legal
      # name comes from the member's approved identity verification when they have one, and from these fields when they
      # do not.
      class CreateCardsRequestCardholder < Internal::Types::Model
        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
