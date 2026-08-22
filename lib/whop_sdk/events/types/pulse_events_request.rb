# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class PulseEventsRequest < Internal::Types::Model
        field :event, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
