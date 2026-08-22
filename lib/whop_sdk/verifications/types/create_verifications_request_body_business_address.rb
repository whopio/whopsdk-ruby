# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Every value accepts `null`, so a form seeded from a previous response can round-trip unset fields unchanged.
      class CreateVerificationsRequestBodyBusinessAddress < Internal::Types::Model
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
