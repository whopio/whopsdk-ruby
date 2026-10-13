# frozen_string_literal: true

module Whop_sdk
  module Types
    class Embed < Internal::Types::Model
      field :color, -> { Integer }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :fields, -> { Internal::Types::Array[Whop_sdk::Types::EmbedField] }, optional: false, nullable: false

      field :footer, -> { Whop_sdk::Types::EmbedFooter }, optional: false, nullable: true

      field :image, -> { Whop_sdk::Types::EmbedImage }, optional: false, nullable: true

      field :thumbnail, -> { Whop_sdk::Types::EmbedImage }, optional: false, nullable: true

      field :timestamp_at, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
