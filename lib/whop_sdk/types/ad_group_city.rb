# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupCity < Internal::Types::Model
      field :key, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
