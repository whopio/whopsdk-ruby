# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppDefaultAPIKey < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :obfuscated_secret_key, -> { String }, optional: false, nullable: false

      field :secret_key, -> { String }, optional: false, nullable: true
    end
  end
end
