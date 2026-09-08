# frozen_string_literal: true

module Whop_sdk
  module Types
    class ResolutionLineItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: true

      field :label, -> { String }, optional: false, nullable: true

      field :plan_id, -> { String }, optional: false, nullable: true

      field :product_id, -> { String }, optional: false, nullable: true

      field :quantity, -> { Integer }, optional: false, nullable: false
    end
  end
end
