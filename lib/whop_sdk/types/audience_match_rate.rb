# frozen_string_literal: true

module Whop_sdk
  module Types
    class AudienceMatchRate < Internal::Types::Model
      field :lower_bound, -> { Integer }, optional: false, nullable: true

      field :platform, -> { Whop_sdk::Types::AudienceMatchRatePlatform }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::AudienceMatchRateStatus }, optional: false, nullable: true

      field :upper_bound, -> { Integer }, optional: false, nullable: true
    end
  end
end
