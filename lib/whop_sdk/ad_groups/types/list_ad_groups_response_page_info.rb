# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class ListAdGroupsResponsePageInfo < Internal::Types::Model
        field :end_cursor, -> { String }, optional: false, nullable: true

        field :has_next_page, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :has_previous_page, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :start_cursor, -> { String }, optional: false, nullable: true
      end
    end
  end
end
