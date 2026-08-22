# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppBuild < Internal::Types::Model
      field :checksum, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :file_url, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :is_production, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :platform, -> { Whop_sdk::Types::AppBuildPlatform }, optional: false, nullable: false

      field :review_message, -> { String }, optional: false, nullable: true

      field :source_url, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AppBuildStatus }, optional: false, nullable: false

      field :supported_app_view_types, -> { Internal::Types::Array[Whop_sdk::Types::AppBuildSupportedAppViewTypesItem] }, optional: false, nullable: false
    end
  end
end
