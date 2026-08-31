# frozen_string_literal: true

module Whop_sdk
  module Types
    class StorefrontAccount < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :logo_url, -> { String }, optional: false, nullable: true

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
