# frozen_string_literal: true

module Whop_sdk
  module Types
    class LivestreamViewersPoint < Internal::Types::Model
      field :offset_seconds, -> { Integer }, optional: false, nullable: false

      field :viewers, -> { Integer }, optional: false, nullable: false
    end
  end
end
