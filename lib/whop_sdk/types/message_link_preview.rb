# frozen_string_literal: true

module Whop_sdk
  module Types
    class MessageLinkPreview < Internal::Types::Model
      field :description, -> { String }, optional: false, nullable: true

      field :favicon_url, -> { String }, optional: false, nullable: true

      field :footer, -> { Whop_sdk::Types::MessageLinkFooter }, optional: false, nullable: true

      field :image_url, -> { String }, optional: false, nullable: true

      field :processing, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
