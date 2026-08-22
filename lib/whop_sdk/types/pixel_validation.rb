# frozen_string_literal: true

module Whop_sdk
  module Types
    class PixelValidation < Internal::Types::Model
      field :firing_data_ok, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :host_events, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :installed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :last_fired_days, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :last_seen_days, -> { Integer }, optional: false, nullable: true

      field :native_tracking, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :page_events, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :reachable, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
