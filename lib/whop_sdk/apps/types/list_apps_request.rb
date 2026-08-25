# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class ListAppsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :app_type, -> { Whop_sdk::Apps::Types::ListAppsRequestAppType }, optional: true, nullable: false

        field :view_type, -> { Whop_sdk::Apps::Types::ListAppsRequestViewType }, optional: true, nullable: false

        field :verified_apps_only, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :recommended, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Apps::Types::ListAppsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Apps::Types::ListAppsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
