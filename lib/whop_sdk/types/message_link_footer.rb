# frozen_string_literal: true

module Whop_sdk
  module Types
    class MessageLinkFooter < Internal::Types::Model
      field :description, -> { String }, optional: false, nullable: true

      field :icon_url, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
