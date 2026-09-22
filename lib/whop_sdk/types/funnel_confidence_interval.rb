# frozen_string_literal: true

module Whop_sdk
  module Types
    class FunnelConfidenceInterval < Internal::Types::Model
      field :lower, -> { Integer }, optional: false, nullable: false

      field :upper, -> { Integer }, optional: false, nullable: false
    end
  end
end
