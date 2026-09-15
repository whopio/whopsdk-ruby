# frozen_string_literal: true

module Whop_sdk
  module Types
    class PartnerPayoutDuration < Internal::Types::Model
      field :unit, -> { Whop_sdk::Types::PartnerPayoutDurationUnit }, optional: false, nullable: false

      field :value, -> { Integer }, optional: false, nullable: false
    end
  end
end
