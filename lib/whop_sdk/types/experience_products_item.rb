# frozen_string_literal: true

module Whop_sdk
  module Types
    # A product is a digital good or service sold on Whop. Products contain plans for pricing and experiences for
    # content delivery.
    class ExperienceProductsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
