# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdMusic < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
