# frozen_string_literal: true

module Whop_sdk
  module Types
    class EmbedImage < Internal::Types::Model
      field :blurhash, -> { String }, optional: false, nullable: true

      field :height, -> { Integer }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: false

      field :width, -> { Integer }, optional: false, nullable: true
    end
  end
end
