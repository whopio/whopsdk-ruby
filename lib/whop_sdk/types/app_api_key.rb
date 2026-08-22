# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppAPIKey < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :token, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
