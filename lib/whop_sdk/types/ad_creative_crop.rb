# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdCreativeCrop < Internal::Types::Model
      field :height, -> { Integer }, optional: false, nullable: false

      field :width, -> { Integer }, optional: false, nullable: false

      field :x, -> { Integer }, optional: false, nullable: false

      field :y, -> { Integer }, optional: false, nullable: false
    end
  end
end
