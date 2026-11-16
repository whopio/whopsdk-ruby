# frozen_string_literal: true

module Whop_sdk
  module Types
    class LivestreamRecapChat < Internal::Types::Model
      field :chatter_count, -> { Integer }, optional: false, nullable: false

      field :message_count, -> { Integer }, optional: false, nullable: false

      field :per_minute, -> { Internal::Types::Array[Integer] }, optional: false, nullable: false
    end
  end
end
