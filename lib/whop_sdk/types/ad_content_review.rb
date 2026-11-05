# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdContentReview < Internal::Types::Model
      field :networks, -> { Internal::Types::Array[Whop_sdk::Types::AdContentReviewNetwork] }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::AdContentReviewStatus }, optional: false, nullable: false

      field :tags, -> { Internal::Types::Array[Whop_sdk::Types::AdContentReviewTag] }, optional: false, nullable: false
    end
  end
end
