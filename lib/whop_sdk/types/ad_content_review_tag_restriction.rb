# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdContentReviewTagRestriction < Internal::Types::Model
      field :condition, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :kind, -> { Whop_sdk::Types::AdContentReviewTagRestrictionKind }, optional: false, nullable: true

      field :network, -> { Whop_sdk::Types::AdContentReviewTagRestrictionNetwork }, optional: false, nullable: false
    end
  end
end
