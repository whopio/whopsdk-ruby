# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      class ListPlansResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::PlanListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Plans::Types::ListPlansResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
