# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class ListAppsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AppListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Apps::Types::ListAppsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
