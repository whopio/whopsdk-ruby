# frozen_string_literal: true

module Whop_sdk
  module Audiences
    module Types
      # CSV audiences only. The CSV header for each identity field. Map `email`, `phone`, or both.
      class CreateAudiencesRequestColumnMapping < Internal::Types::Model
        field :country, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
