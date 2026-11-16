# frozen_string_literal: true

module Whop_sdk
  module Types
    class LivestreamViewership < Internal::Types::Model
      field :average_viewers, -> { Integer }, optional: false, nullable: false

      field :new_members, -> { Integer }, optional: false, nullable: false

      field :peak_viewers, -> { Integer }, optional: false, nullable: false

      field :peak_viewers_at, -> { String }, optional: false, nullable: true

      field :tracked, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :unique_viewers, -> { Integer }, optional: false, nullable: false

      field :viewers, -> { Internal::Types::Array[Whop_sdk::Types::LivestreamViewersPoint] }, optional: false, nullable: false

      field :watch_time_seconds, -> { Integer }, optional: false, nullable: false
    end
  end
end
