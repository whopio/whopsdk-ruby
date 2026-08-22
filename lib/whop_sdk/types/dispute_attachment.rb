# frozen_string_literal: true

module Whop_sdk
  module Types
    class DisputeAttachment < Internal::Types::Model
      field :content_type, -> { String }, optional: false, nullable: true

      field :filename, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: true

      field :platform, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
