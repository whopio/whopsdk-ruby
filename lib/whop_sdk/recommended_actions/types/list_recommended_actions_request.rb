# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      class ListRecommendedActionsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
