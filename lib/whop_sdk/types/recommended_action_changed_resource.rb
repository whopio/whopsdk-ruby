# frozen_string_literal: true

module Whop_sdk
  module Types
    class RecommendedActionChangedResource < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :resource_type, -> { Whop_sdk::Types::RecommendedActionChangedResourceResourceType }, optional: false, nullable: false
    end
  end
end
