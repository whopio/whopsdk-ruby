# frozen_string_literal: true

module Whop_sdk
  module Types
    class App < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::AccountParent }, optional: false, nullable: false

      field :api_key, -> { Whop_sdk::Types::AppAPIKey }, optional: false, nullable: true

      field :app_store_description, -> { String }, optional: false, nullable: true

      field :app_type, -> { Whop_sdk::Types::AppAppType }, optional: false, nullable: false

      field :banner_image, -> { Whop_sdk::Types::AppBannerImage }, optional: false, nullable: true

      field :base_url, -> { String }, optional: false, nullable: true

      field :businesses_created_count, -> { Integer }, optional: false, nullable: false

      field :businesses_created_logo_urls, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :creator, -> { Whop_sdk::Types::AppCreator }, optional: false, nullable: false

      field :dashboard_path, -> { String }, optional: false, nullable: true

      field :default_api_key, -> { Whop_sdk::Types::AppDefaultAPIKey }, optional: false, nullable: true

      field :deployment, -> { Whop_sdk::Types::AppDeployment }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :discover_path, -> { String }, optional: false, nullable: true

      field :domain_id, -> { String }, optional: false, nullable: false

      field :elements_used, -> { Internal::Types::Array[Whop_sdk::Types::AppElementsUsedItem] }, optional: false, nullable: false

      field :experience_path, -> { String }, optional: false, nullable: true

      field :hosted_url, -> { String }, optional: false, nullable: true

      field :icon, -> { Whop_sdk::Types::AppIcon }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :marketplace_status, -> { Whop_sdk::Types::AppMarketplaceStatus }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: false

      field :oauth_client_type, -> { Whop_sdk::Types::AppOauthClientType }, optional: false, nullable: false

      field :openapi_path, -> { String }, optional: false, nullable: true

      field :origin, -> { String }, optional: false, nullable: true

      field :preview_token, -> { String }, optional: false, nullable: true

      field :previous_hosted_urls, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :product_id, -> { String }, optional: false, nullable: true

      field :production_android_build, -> { Whop_sdk::Types::AppProductionBuild }, optional: false, nullable: true

      field :production_ios_build, -> { Whop_sdk::Types::AppProductionBuild }, optional: false, nullable: true

      field :production_web_build, -> { Whop_sdk::Types::AppProductionBuild }, optional: false, nullable: true

      field :redirect_uris, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :requested_permissions, -> { Internal::Types::Array[Whop_sdk::Types::AppRequestedPermission] }, optional: false, nullable: false

      field :required_scopes, -> { Internal::Types::Array[Whop_sdk::Types::AppRequiredScopesItem] }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: true

      field :secrets, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :skills_path, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AppStatus }, optional: false, nullable: false

      field :verified, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
