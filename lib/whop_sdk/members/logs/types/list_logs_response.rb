# frozen_string_literal: true

module Whop_sdk
  module Members
    module Logs
      module Types
        class ListLogsResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Members::Logs::Types::ListLogsResponseDataItem] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Members::Logs::Types::ListLogsResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
