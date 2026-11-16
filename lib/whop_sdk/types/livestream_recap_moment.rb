# frozen_string_literal: true

module Whop_sdk
  module Types
    class LivestreamRecapMoment < Internal::Types::Model
      field :description, -> { String }, optional: false, nullable: false

      field :end_offset_seconds, -> { Integer }, optional: false, nullable: false

      field :message, -> { Whop_sdk::Types::LivestreamRecapMessage }, optional: false, nullable: false

      field :offset_seconds, -> { Integer }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
