# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class UpdateAppsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :app_store_description, -> { String }, optional: true, nullable: false

        field :app_type, -> { Whop_sdk::Apps::Types::UpdateAppsRequestAppType }, optional: true, nullable: false

        field :base_url, -> { String }, optional: true, nullable: false

        field :dashboard_path, -> { String }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :discover_path, -> { String }, optional: true, nullable: false

        field :experience_path, -> { String }, optional: true, nullable: false

        field :icon, -> { Whop_sdk::Apps::Types::UpdateAppsRequestIcon }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :oauth_client_type, -> { Whop_sdk::Apps::Types::UpdateAppsRequestOauthClientType }, optional: true, nullable: false

        field :openapi_path, -> { String }, optional: true, nullable: false

        field :production_android_build_id, -> { String }, optional: true, nullable: false

        field :production_ios_build_id, -> { String }, optional: true, nullable: false

        field :production_web_build_id, -> { String }, optional: true, nullable: false

        field :redirect_uris, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :required_scopes, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :route, -> { String }, optional: true, nullable: false

        field :secrets, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :skills_path, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Apps::Types::UpdateAppsRequestStatus }, optional: true, nullable: false
      end
    end
  end
end
