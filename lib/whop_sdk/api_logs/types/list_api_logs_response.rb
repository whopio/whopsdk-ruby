# frozen_string_literal: true

module Whop_sdk
  module APILogs
    module Types
      class ListAPILogsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::APILogs::Types::ListAPILogsResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::APILogs::Types::ListAPILogsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
