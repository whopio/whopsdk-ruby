# frozen_string_literal: true

module Whop_sdk
  module Types
    class EmbedFooter < Internal::Types::Model
      field :icon, -> { Whop_sdk::Types::EmbedImage }, optional: false, nullable: true

      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
