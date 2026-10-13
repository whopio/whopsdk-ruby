# frozen_string_literal: true

module Whop_sdk
  module Types
    class Gif < Internal::Types::Model
      field :height, -> { Integer }, optional: false, nullable: false

      field :original_url, -> { String }, optional: false, nullable: false

      field :preview_url, -> { String }, optional: false, nullable: false

      field :slug, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :width, -> { Integer }, optional: false, nullable: false
    end
  end
end
