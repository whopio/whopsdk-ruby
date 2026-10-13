# frozen_string_literal: true

module Whop_sdk
  module Types
    class EmbedField < Internal::Types::Model
      field :inline, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
