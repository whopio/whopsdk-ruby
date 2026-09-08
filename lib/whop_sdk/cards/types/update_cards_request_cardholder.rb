# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      # Details for the invited cardholder, accepted only while completing onboarding on an invited card. The legal name
      # comes from an approved identity verification when the invited user has one, and from these fields when they do
      # not.
      class UpdateCardsRequestCardholder < Internal::Types::Model
        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
