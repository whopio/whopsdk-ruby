# frozen_string_literal: true

module Whop_sdk
  module Companies
    module Types
      # An API key created for a child company, including the one-time secret key.
      class CreateAPIKeyCompaniesResponse < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: true

        field :secret_key, -> { String }, optional: false, nullable: false
      end
    end
  end
end
