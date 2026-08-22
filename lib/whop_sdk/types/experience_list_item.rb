# frozen_string_literal: true

module Whop_sdk
  module Types
    # An experience is a feature or content module within a product, such as a chat, course, or custom app.
    class ExperienceListItem < Internal::Types::Model
      field :app, -> { Whop_sdk::Types::ExperienceListItemApp }, optional: false, nullable: false

      field :company, -> { Whop_sdk::Types::ExperienceListItemCompany }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :image, -> { Whop_sdk::Types::ExperienceListItemImage }, optional: false, nullable: true

      field :is_public, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :order, -> { String }, optional: false, nullable: true
    end
  end
end
