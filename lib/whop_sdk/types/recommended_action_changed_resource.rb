# frozen_string_literal: true

module Whop_sdk
  module Types
    class RecommendedActionChangedResource < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::RecommendedActionChangedResourceObject }, optional: false, nullable: false
    end
  end
end
