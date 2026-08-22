# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppListItem < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::AccountParent }, optional: false, nullable: false

      field :app_type, -> { Whop_sdk::Types::AppListItemAppType }, optional: false, nullable: false

      field :banner_image, -> { Whop_sdk::Types::AppBannerImage }, optional: false, nullable: true

      field :base_url, -> { String }, optional: false, nullable: true

      field :businesses_created_count, -> { Integer }, optional: false, nullable: false

      field :businesses_created_logo_urls, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :creator, -> { Whop_sdk::Types::AppCreator }, optional: false, nullable: false

      field :dashboard_path, -> { String }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :discover_path, -> { String }, optional: false, nullable: true

      field :domain_id, -> { String }, optional: false, nullable: false

      field :experience_path, -> { String }, optional: false, nullable: true

      field :hosted_url, -> { String }, optional: false, nullable: true

      field :icon, -> { Whop_sdk::Types::AppIcon }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :openapi_path, -> { String }, optional: false, nullable: true

      field :origin, -> { String }, optional: false, nullable: true

      field :route, -> { String }, optional: false, nullable: true

      field :skills_path, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AppListItemStatus }, optional: false, nullable: false

      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
