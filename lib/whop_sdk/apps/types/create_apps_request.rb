# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class CreateAppsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :app_type, -> { Whop_sdk::Apps::Types::CreateAppsRequestAppType }, optional: true, nullable: false

        field :base_url, -> { String }, optional: true, nullable: false

        field :icon, -> { Whop_sdk::Apps::Types::CreateAppsRequestIcon }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :redirect_uris, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :route, -> { String }, optional: true, nullable: false
      end
    end
  end
end
