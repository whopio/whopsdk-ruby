# frozen_string_literal: true

module Whop_sdk
  module Types
    # An experience is a feature or content module within a product, such as a chat, course, or custom app.
    class Experience < Internal::Types::Model
      field :app, -> { Whop_sdk::Types::ExperienceApp }, optional: false, nullable: false

      field :company, -> { Whop_sdk::Types::ExperienceCompany }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :image, -> { Whop_sdk::Types::ExperienceImage }, optional: false, nullable: true

      field :is_public, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :order, -> { String }, optional: false, nullable: true

      field :products, -> { Internal::Types::Array[Whop_sdk::Types::ExperienceProductsItem] }, optional: false, nullable: false
    end
  end
end
