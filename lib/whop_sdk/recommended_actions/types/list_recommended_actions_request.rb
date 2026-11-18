# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      class ListRecommendedActionsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :statuses, -> { Whop_sdk::RecommendedActions::Types::ListRecommendedActionsRequestStatusesItem }, optional: true, nullable: false

        field :order, -> { Whop_sdk::RecommendedActions::Types::ListRecommendedActionsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::RecommendedActions::Types::ListRecommendedActionsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
