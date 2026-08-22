# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      class ListRecommendedActionsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AccountRecommendedActionChain] }, optional: false, nullable: false
      end
    end
  end
end
