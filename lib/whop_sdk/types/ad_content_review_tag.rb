# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdContentReviewTag < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false

      field :restrictions, -> { Internal::Types::Array[Whop_sdk::Types::AdContentReviewTagRestriction] }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
