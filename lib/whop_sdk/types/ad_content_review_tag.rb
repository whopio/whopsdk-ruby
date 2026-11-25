# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdContentReviewTag < Internal::Types::Model
      field :blocking, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :locations, -> { Internal::Types::Array[Whop_sdk::Types::AdContentReviewTagLocationsItem] }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
