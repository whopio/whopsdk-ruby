# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdContentReviewNetwork < Internal::Types::Model
      field :recommended, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :title, -> { Whop_sdk::Types::AdContentReviewNetworkTitle }, optional: false, nullable: false
    end
  end
end
