# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Address on the verification profile. `null` when no address is set.
      class CreateVerificationsResponseAddress < Internal::Types::Model
        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :line1, -> { String }, optional: true, nullable: false

        field :line2, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: true, nullable: false

        field :state, -> { String }, optional: true, nullable: false
      end
    end
  end
end
