# frozen_string_literal: true

module Whop_sdk
  module Types
    class ReachEstimate < Internal::Types::Model
      field :users_lower_bound, -> { Integer }, optional: false, nullable: true

      field :users_upper_bound, -> { Integer }, optional: false, nullable: true
    end
  end
end
