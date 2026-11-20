# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      # Details for the cardholder. On an invited card, these fields complete onboarding. The legal name comes from an
      # approved identity verification when the invited user has one, and from these fields when they do not. On an
      # issued card, only email and phone can be changed. 3D Secure verification codes go to that email and phone.
      class UpdateCardsRequestCardholder < Internal::Types::Model
        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
