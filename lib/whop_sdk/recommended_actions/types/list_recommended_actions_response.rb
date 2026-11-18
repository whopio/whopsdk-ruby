# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      class ListRecommendedActionsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::RecommendedAction] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::RecommendedActions::Types::ListRecommendedActionsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
