# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class LogsAppsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Apps::Types::LogsAppsResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Apps::Types::LogsAppsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
