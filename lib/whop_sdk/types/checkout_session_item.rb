# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionItem < Internal::Types::Model
      field :description, -> { String }, optional: false, nullable: true

      field :expiration_days, -> { Integer }, optional: false, nullable: true

      field :headline, -> { String }, optional: false, nullable: true

      field :image_url, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: false

      field :plan, -> { String }, optional: false, nullable: false

      field :quantity, -> { Integer }, optional: false, nullable: false
    end
  end
end
