# frozen_string_literal: true

module Whop_sdk
  module Audiences
    module Types
      # Custom audiences only. Maps supported identity fields to CSV column headers. Map at least one of `email` or
      # `phone`.
      class CreateAudiencesRequestColumnMapping < Internal::Types::Model
        field :country, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :ltv, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
