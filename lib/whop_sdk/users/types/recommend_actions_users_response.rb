# frozen_string_literal: true

module Whop_sdk
  module Users
    module Types
      class RecommendActionsUsersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::UserRecommendedAction] }, optional: false, nullable: false
      end
    end
  end
end
