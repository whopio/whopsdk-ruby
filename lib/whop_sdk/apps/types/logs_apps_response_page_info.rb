# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      class LogsAppsResponsePageInfo < Internal::Types::Model
        field :end_cursor, -> { String }, optional: true, nullable: false

        field :has_next_page, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :has_previous_page, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :start_cursor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
