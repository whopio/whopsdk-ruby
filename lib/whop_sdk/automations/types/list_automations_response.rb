# frozen_string_literal: true

module Whop_sdk
  module Automations
    module Types
      class ListAutomationsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Automation] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Automations::Types::ListAutomationsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
