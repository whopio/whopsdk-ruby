# frozen_string_literal: true

module Whop_sdk
  module Types
    class RecommendedActionWebsiteAbTestPreview < Internal::Types::Model
      field :app_id, -> { String }, optional: false, nullable: false

      field :base_build_id, -> { String }, optional: false, nullable: false

      field :changed_resources, -> { Internal::Types::Array[Whop_sdk::Types::RecommendedActionChangedResource] }, optional: false, nullable: false

      field :draft_build_id, -> { String }, optional: false, nullable: false

      field :page_paths, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :traffic_percent, -> { Integer }, optional: false, nullable: false
    end
  end
end
